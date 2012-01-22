<%@ page import="com.rackspace.Request" %>



<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'assigned', 'error')} ">
	<div class="property-label span3" for="assigned">
		<g:message code="request.assigned.label" default="Assigned" />
		
	</div>
	<g:textField name="assigned" value="${requestInstance?.assigned}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'description', 'error')} ">
	<div class="property-label span3" for="description">
		<g:message code="request.description.label" default="Description" />
		
	</div>
	<g:textField name="description" value="${requestInstance?.description}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'status', 'error')} ">
	<div class="property-label span3" for="status">
		<g:message code="request.status.label" default="Status" />
		
	</div>
	<g:textField name="status" value="${requestInstance?.status}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'subject', 'error')} ">
	<div class="property-label span3" for="subject">
		<g:message code="request.subject.label" default="Subject" />
		
	</div>
	<g:textField name="subject" value="${requestInstance?.subject}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'type', 'error')} ">
	<div class="property-label span3" for="type">
		<g:message code="request.type.label" default="Type" />
		
	</div>
	<g:textField name="type" value="${requestInstance?.type}"/>
</div>

