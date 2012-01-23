
<%@ page import="com.rackspace.User" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span4">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
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
							<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
						</ul>
					</div>
				</div>
				<div class="content">
					<div class="row">
						<div class="span12">
							<div id="list-user" class="content scaffold-list" role="main">
								<table class="zebra-striped bordered-table">
									<thead>
										<tr>
										
											<g:sortableColumn property="firstName" title="${message(code: 'user.firstName.label', default: 'First Name')}" />
										
											<g:sortableColumn property="lastName" title="${message(code: 'user.lastName.label', default: 'Last Name')}" />
										
											<g:sortableColumn property="title" title="${message(code: 'user.title.label', default: 'Title')}" />
										
										</tr>
									</thead>
									<tbody>
									<g:each in="${userInstanceList}" status="i" var="userInstance">
										
											<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "firstName")}</g:link></td>
										
											<td>${fieldValue(bean: userInstance, field: "lastName")}</td>
										
											<td>${fieldValue(bean: userInstance, field: "title")}</td>
										
										</tr>
									</g:each>
									</tbody>
								</table>
								<div class="pagination">
									<g:paginate total="${userInstanceTotal}" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
