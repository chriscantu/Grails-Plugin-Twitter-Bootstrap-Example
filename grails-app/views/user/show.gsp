
<%@ page import="com.rackspace.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span4">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
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
							<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
						</ul>
					</div>
				</div>
				<div class="content">
					<div class="row">
						<div class="span12">
								
										<div class="row properties">
											<g:if test="${userInstance?.firstName}">
												<div id="firstName-label" class="property-label span3"><g:message code="user.firstName.label" default="First Name" />:</div>
												
													<div class="property-value span7" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${userInstance?.lastName}">
												<div id="lastName-label" class="property-label span3"><g:message code="user.lastName.label" default="Last Name" />:</div>
												
													<div class="property-value span7" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${userInstance?.title}">
												<div id="title-label" class="property-label span3"><g:message code="user.title.label" default="Title" />:</div>
												
													<div class="property-value span7" aria-labelledby="title-label"><g:fieldValue bean="${userInstance}" field="title"/></div>
												
											</g:if>
										</div>
								
							<g:form>
								<fieldset class="buttons">
									<g:hiddenField name="id" value="${userInstance?.id}" />
									<g:link class="edit" action="edit" id="${userInstance?.id}" class="btn primary"><g:message code="default.button.edit.label" default="Edit" /></g:link>
									<g:actionSubmit class="btn danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</fieldset>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
