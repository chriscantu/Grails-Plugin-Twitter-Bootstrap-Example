
<%@ page import="com.rackspace.Request" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'request.label', default: 'Request')}" />
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
							<li><a class="home" href="${createLink(uri: '/')}"><i class="icon-list"></i> <g:message code="default.list.label" args="[entityName]"/></a></li>
							<li><g:link class="create" action="create"><i class="icon-file"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
						</ul>
					</div>
				</div>
				<div class="content">
					<div class="row">
						<div class="span9">
								
										<div class="row properties">
											<g:if test="${requestInstance?.type}">
												<div id="type-label" class="property-label span3"><g:message code="request.type.label" default="Type" />:</div>
												
													<div class="property-value span4" aria-labelledby="type-label"><g:fieldValue bean="${requestInstance}" field="type"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.subject}">
												<div id="subject-label" class="property-label span3"><g:message code="request.subject.label" default="Subject" />:</div>
												
													<div class="property-value span4" aria-labelledby="subject-label"><g:fieldValue bean="${requestInstance}" field="subject"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.description}">
												<div id="description-label" class="property-label span3"><g:message code="request.description.label" default="Description" />:</div>
												
													<div class="property-value span4" aria-labelledby="description-label"><g:fieldValue bean="${requestInstance}" field="description"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.assigned}">
												<div id="assigned-label" class="property-label span3"><g:message code="request.assigned.label" default="Assigned" />:</div>
												
													<div class="property-value span4" aria-labelledby="assigned-label"><g:link controller="user" action="show" id="${requestInstance?.assigned?.id}">${requestInstance?.assigned?.encodeAsHTML()}</g:link></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.dateCreated}">
												<div id="dateCreated-label" class="property-label span3"><g:message code="request.dateCreated.label" default="Date Created" />:</div>
												
													<div class="property-value span4" aria-labelledby="dateCreated-label"><g:formatDate date="${requestInstance?.dateCreated}" /></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.lastUpdated}">
												<div id="lastUpdated-label" class="property-label span3"><g:message code="request.lastUpdated.label" default="Last Updated" />:</div>
												
													<div class="property-value span4" aria-labelledby="lastUpdated-label"><g:formatDate date="${requestInstance?.lastUpdated}" /></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.status}">
												<div id="status-label" class="property-label span3"><g:message code="request.status.label" default="Status" />:</div>
												
													<div class="property-value span4" aria-labelledby="status-label"><g:fieldValue bean="${requestInstance}" field="status"/></div>
												
											</g:if>
										</div>
								
							<g:form>
								<p>
									<g:hiddenField name="id" value="${requestInstance?.id}" />
									<g:link action="edit" id="${requestInstance?.id}" class="btn btn-primary top-align"><i class="icon-pencil icon-white"> </i> <g:message code="default.button.edit.label" default="Edit" /></g:link>
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
