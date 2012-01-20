
<%@ page import="com.rackspace.Request" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'request.label', default: 'Request')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container-fluid">
			<div class="sidebar">
				<div class="well" role="navigation">
					<ul>
						<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
					</ul>
				</div>
			</div>
			<div class="content">
				<div class="row">
					<div class="span12">
						<div id="list-request" class="content scaffold-list" role="main">
							<h1><g:message code="default.list.label" args="[entityName]" /></h1>
							<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
							</g:if>
							<table class="zebra-striped bordered-table">
								<thead>
									<tr>
									
										<g:sortableColumn property="assigned" title="${message(code: 'request.assigned.label', default: 'Assigned')}" />
									
										<g:sortableColumn property="dateCreated" title="${message(code: 'request.dateCreated.label', default: 'Date Created')}" />
									
										<g:sortableColumn property="description" title="${message(code: 'request.description.label', default: 'Description')}" />
									
										<g:sortableColumn property="lastUpdated" title="${message(code: 'request.lastUpdated.label', default: 'Last Updated')}" />
									
										<g:sortableColumn property="status" title="${message(code: 'request.status.label', default: 'Status')}" />
									
										<g:sortableColumn property="subject" title="${message(code: 'request.subject.label', default: 'Subject')}" />
									
									</tr>
								</thead>
								<tbody>
								<g:each in="${requestInstanceList}" status="i" var="requestInstance">
									<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
									
										<td><g:link action="show" id="${requestInstance.id}">${fieldValue(bean: requestInstance, field: "assigned")}</g:link></td>
									
										<td><g:formatDate date="${requestInstance.dateCreated}" /></td>
									
										<td>${fieldValue(bean: requestInstance, field: "description")}</td>
									
										<td><g:formatDate date="${requestInstance.lastUpdated}" /></td>
									
										<td>${fieldValue(bean: requestInstance, field: "status")}</td>
									
										<td>${fieldValue(bean: requestInstance, field: "subject")}</td>
									
									</tr>
								</g:each>
								</tbody>
							</table>
							<div class="pagination">
								<g:paginate total="${requestInstanceTotal}" />
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

	</body>
</html>
