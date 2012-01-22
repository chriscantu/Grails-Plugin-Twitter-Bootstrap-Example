<%@ page import="com.rackspace.Request" %>



<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'type', 'error')} required">
	<div class="property-label span3" for="type">
		<g:message code="request.type.label" default="Type" />:
		<span class="required-indicator">*</span>
	</div>
	<g:textField name="type" required="" value="${requestInstance?.type}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'subject', 'error')} required">
	<div class="property-label span3" for="subject">
		<g:message code="request.subject.label" default="Subject" />:
		<span class="required-indicator">*</span>
	</div>
	<g:textField name="subject" required="" value="${requestInstance?.subject}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'description', 'error')} required">
	<div class="property-label span3" for="description">
		<g:message code="request.description.label" default="Description" />:
		<span class="required-indicator">*</span>
	</div>
	<g:textField name="description" required="" value="${requestInstance?.description}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'status', 'error')} required">
	<div class="property-label span3" for="status">
		<g:message code="request.status.label" default="Status" />:
		<span class="required-indicator">*</span>
	</div>
	<g:textField name="status" required="" value="${requestInstance?.status}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: requestInstance, field: 'assigned', 'error')} required">
	<div class="property-label span3" for="assigned">
		<g:message code="request.assigned.label" default="Assigned" />:
		<span class="required-indicator">*</span>
	</div>
	<g:textField name="assigned" required="" value="${requestInstance?.assigned}"/>
</div>

