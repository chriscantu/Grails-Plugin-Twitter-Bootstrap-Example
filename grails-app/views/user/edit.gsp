<%@ page import="com.rackspace.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span3">
					<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
				</div>
				<div class="span9">
					<g:if test="${flash.message}">
						<div class="alert alert-info" role="status"><strong>${flash.message}</strong></div>
					</g:if>
					<g:if test="${flash.success}">
						<div class="alert alert-success" role="status"><strong>${flash.success}</strong></div>
					</g:if>
					<g:if test="${flash.error}">
						<div class="alert alert-error" role="status"><strong>${flash.error}</strong></div>
					</g:if>
					<g:if test="${flash.warning}">
						<div class="alert alert-warning" role="status"><strong>${flash.warning}</strong></div>
					</g:if>
				</div>
			</div>
			<div class="row">
				<div class="sidebar span3">
					<div class="well" role="navigation">
						<ul class="nav nav-list">
							<li class="nav-header">Options</li>
							<li><a class="home" href="${createLink(action: 'list')}"><i class="icon-list"></i> <g:message code="default.list.label" args="[entityName]"/></a></li>
							<li><g:link class="create" action="create"><i class="icon-file"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
						</ul>
					</div>
				</div>
				<div class="content">
					<div class="row">						
						<div id="edit-user" class="span9" role="main">
							<g:hasErrors bean="${userInstance}">
							<div class="alert alert-error alert-block">
								<ul class="errors" role="alert">
									<g:eachError bean="${userInstance}" var="error">
									<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
									</g:eachError>
								</ul>
							</div>
							</g:hasErrors>
							<g:form method="post" >
								<g:hiddenField name="id" value="${userInstance?.id}" />
								<g:hiddenField name="version" value="${userInstance?.version}" />


									<g:render template="form"/>

								<fieldset class="buttons">									
									<button type="submit" class="btn btn-primary" name="_action_update"><i class="icon-pencil icon-white"></i> ${message(code: 'default.button.update.label', default: 'Update')}</button>
									
									
									<button type="submit" class="btn btn-danger" name="_action_delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i class="icon-trash icon-white"></i> ${message(code: 'default.button.delete.label', default: 'Delete')}</button>
								</fieldset>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
