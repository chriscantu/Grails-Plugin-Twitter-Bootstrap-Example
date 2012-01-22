<%@ page import="com.rackspace.Request" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'request.label', default: 'Request')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span4">
					<h1><g:message code="default.create.label" args="[entityName]" /></h1>	
				</div>
				<div class="span12">
					<g:if test="${flash.message}">
						<div class="alert-message info" role="status"><strong>${flash.message}</strong></div>
					</g:if>
					<g:if test="${flash.success}">
						<div class="alert-message success" role="status"><strong>${flash.success}</strong></div>
					</g:if>
					<g:if test="${flash.error}">
						<div class="alert-message error" role="status"><strong>${flash.error}</strong></div>
					</g:if>
					<g:if test="${flash.warning}">
						<div class="alert-message warning" role="status"><strong>${flash.warning}</strong></div>
					</g:if>
				</div>
			</div>
			<div class="row">
			<div class="sidebar span4">
				<div class="well" role="navigation">
					<ul>
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
					</ul>
				</div>	
			</div>
			<div class="content">
				<div class="row">
					<div id="create-request" class="span12" role="main">
						<g:hasErrors bean="${requestInstance}">
						<div class="alert-message block-message error">
							<ul class="errors" role="alert">
								<g:eachError bean="${requestInstance}" var="error">
								<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
								</g:eachError>
							</ul>
						</div>
						</g:hasErrors>
						<g:form action="save" >
							
								<g:render template="form"/>
							
							<fieldset class="buttons">
								<g:submitButton name="create" class="btn primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
						</g:form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>
