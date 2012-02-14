
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
				<div class="span3">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
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
						<div class="span9">
								
										<div class="row properties">
											<g:if test="${userInstance?.firstName}">
												<div id="firstName-label" class="property-label span3"><g:message code="user.firstName.label" default="First Name" />:</div>
												
													<div class="property-value span4" aria-labelledby="firstName-label"><g:fieldValue bean="${userInstance}" field="firstName"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${userInstance?.lastName}">
												<div id="lastName-label" class="property-label span3"><g:message code="user.lastName.label" default="Last Name" />:</div>
												
													<div class="property-value span4" aria-labelledby="lastName-label"><g:fieldValue bean="${userInstance}" field="lastName"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${userInstance?.title}">
												<div id="title-label" class="property-label span3"><g:message code="user.title.label" default="Title" />:</div>
												
													<div class="property-value span4" aria-labelledby="title-label"><g:fieldValue bean="${userInstance}" field="title"/></div>
												
											</g:if>
										</div>
								
							<g:form>
								<p>
									<g:hiddenField name="id" value="${userInstance?.id}" />
									<g:link action="edit" id="${userInstance?.id}" class="btn btn-primary top-align"><i class="icon-pencil icon-white"> </i> <g:message code="default.button.edit.label" default="Edit" /></g:link>
									<button type="submit" class="btn btn-danger" name="_action_delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i class="icon-trash icon-white"></i> ${message(code: 'default.button.delete.label', default: 'Delete')}</button>
								</p>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
