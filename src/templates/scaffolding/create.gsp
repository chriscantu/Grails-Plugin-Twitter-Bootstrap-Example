<%=packageName%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span4 offset4">
					<h1><g:message code="default.create.label" args="[entityName]" /></h1>	
				</div>
			</div>
			<div class="row">
			<div class="sidebar span4">
				<div class="well" role="navigation">
					<ul>
						<li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
						<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
					</ul>
				</div>	
			</div>
			<div class="content">
				<div class="row">
					<div id="create-${domainClass.propertyName}" class="span12" role="main">
						<g:if test="\${flash.message}">
							<div class="message" role="status">\${flash.message}</div>
						</g:if>
						<g:hasErrors bean="\${${propertyName}}">
						<ul class="errors" role="alert">
							<g:eachError bean="\${${propertyName}}" var="error">
							<li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
							</g:eachError>
						</ul>
						</g:hasErrors>
						<g:form action="save" <%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
							
								<g:render template="form"/>
							
							<fieldset class="buttons">
								<g:submitButton name="create" class="btn primary" value="\${message(code: 'default.button.create.label', default: 'Create')}" />
							</fieldset>
						</g:form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>
