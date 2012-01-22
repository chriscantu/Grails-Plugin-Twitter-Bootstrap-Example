package com.rackspace

import org.springframework.dao.DataIntegrityViolationException

class RequestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [requestInstanceList: Request.list(params), requestInstanceTotal: Request.count()]
    }

    def create() {
        [requestInstance: new Request(params)]
    }

    def save() {
        def requestInstance = new Request(params)
        if (!requestInstance.save(flush: true)) {
            render(view: "create", model: [requestInstance: requestInstance])
            return
        }

		flash.success = message(code: 'default.created.message', args: [message(code: 'request.label', default: 'Request'), requestInstance.id])
        redirect(action: "show", id: requestInstance.id)
    }

    def show() {
        def requestInstance = Request.get(params.id)
        if (!requestInstance) {
			flash.error = message(code: 'default.not.found.message', args: [message(code: 'request.label', default: 'Request'), params.id])
            redirect(action: "list")
            return
        }

        [requestInstance: requestInstance]
    }

    def edit() {
        def requestInstance = Request.get(params.id)
        if (!requestInstance) {
            flash.error = message(code: 'default.not.found.message', args: [message(code: 'request.label', default: 'Request'), params.id])
            redirect(action: "list")
            return
        }

        [requestInstance: requestInstance]
    }

    def update() {
        def requestInstance = Request.get(params.id)
        if (!requestInstance) {
            flash.error = message(code: 'default.not.found.message', args: [message(code: 'request.label', default: 'Request'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (requestInstance.version > version) {
                requestInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'request.label', default: 'Request')] as Object[],
                          "Another user has updated this Request while you were editing")
                render(view: "edit", model: [requestInstance: requestInstance])
                return
            }
        }

        requestInstance.properties = params

        if (!requestInstance.save(flush: true)) {
            render(view: "edit", model: [requestInstance: requestInstance])
            return
        }

		flash.success = message(code: 'default.updated.message', args: [message(code: 'request.label', default: 'Request'), requestInstance.id])
        redirect(action: "show", id: requestInstance.id)
    }

    def delete() {
        def requestInstance = Request.get(params.id)
        if (!requestInstance) {
			flash.error = message(code: 'default.not.found.message', args: [message(code: 'request.label', default: 'Request'), params.id])
            redirect(action: "list")
            return
        }

        try {
            requestInstance.delete(flush: true)
			flash.success = message(code: 'default.deleted.message', args: [message(code: 'request.label', default: 'Request'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.error = message(code: 'default.not.deleted.message', args: [message(code: 'request.label', default: 'Request'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
