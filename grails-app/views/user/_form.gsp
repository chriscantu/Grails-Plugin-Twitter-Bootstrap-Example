<%@ page import="com.rackspace.User" %>



<div class="row edit-properties fieldcontain ${hasErrors(bean: userInstance, field: 'firstName', 'error')} required">
	<div class="property-label span3" for="firstName">
		<g:message code="user.firstName.label" default="First Name" />:
		<span class="required-indicator">*</span>
	</div>
	<g:textField name="firstName" required="" value="${userInstance?.firstName}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: userInstance, field: 'lastName', 'error')} required">
	<div class="property-label span3" for="lastName">
		<g:message code="user.lastName.label" default="Last Name" />:
		<span class="required-indicator">*</span>
	</div>
	<g:textField name="lastName" required="" value="${userInstance?.lastName}"/>
</div>

<div class="row edit-properties fieldcontain ${hasErrors(bean: userInstance, field: 'title', 'error')} ">
	<div class="property-label span3" for="title">
		<g:message code="user.title.label" default="Title" />:
		
	</div>
	<g:textField name="title" value="${userInstance?.title}"/>
</div>

