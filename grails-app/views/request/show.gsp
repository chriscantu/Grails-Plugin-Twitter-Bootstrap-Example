
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
				<div class="span4">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>
				<div class="span12">
					<g:if test="${flash.message}">
						<div class="alert-message success" role="status"><strong>${flash.message}</strong></div>
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
											<g:if test="${requestInstance?.assigned}">
												<div id="assigned-label" class="property-label span3"><g:message code="request.assigned.label" default="Assigned" />:</div>
												
													<div class="property-value span7" aria-labelledby="assigned-label"><g:fieldValue bean="${requestInstance}" field="assigned"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.dateCreated}">
												<div id="dateCreated-label" class="property-label span3"><g:message code="request.dateCreated.label" default="Date Created" />:</div>
												
													<div class="property-value span7" aria-labelledby="dateCreated-label"><g:formatDate date="${requestInstance?.dateCreated}" /></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.description}">
												<div id="description-label" class="property-label span3"><g:message code="request.description.label" default="Description" />:</div>
												
													<div class="property-value span7" aria-labelledby="description-label"><g:fieldValue bean="${requestInstance}" field="description"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.lastUpdated}">
												<div id="lastUpdated-label" class="property-label span3"><g:message code="request.lastUpdated.label" default="Last Updated" />:</div>
												
													<div class="property-value span7" aria-labelledby="lastUpdated-label"><g:formatDate date="${requestInstance?.lastUpdated}" /></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.status}">
												<div id="status-label" class="property-label span3"><g:message code="request.status.label" default="Status" />:</div>
												
													<div class="property-value span7" aria-labelledby="status-label"><g:fieldValue bean="${requestInstance}" field="status"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.subject}">
												<div id="subject-label" class="property-label span3"><g:message code="request.subject.label" default="Subject" />:</div>
												
													<div class="property-value span7" aria-labelledby="subject-label"><g:fieldValue bean="${requestInstance}" field="subject"/></div>
												
											</g:if>
										</div>
								
										<div class="row properties">
											<g:if test="${requestInstance?.type}">
												<div id="type-label" class="property-label span3"><g:message code="request.type.label" default="Type" />:</div>
												
													<div class="property-value span7" aria-labelledby="type-label"><g:fieldValue bean="${requestInstance}" field="type"/></div>
												
											</g:if>
										</div>
								
							<g:form>
								<fieldset class="buttons">
									<g:hiddenField name="id" value="${requestInstance?.id}" />
									<g:link class="edit" action="edit" id="${requestInstance?.id}" class="btn primary"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
