<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span3">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>
				<div class="span9">
					<g:if test="\${flash.message}">
						<div class="alert alert-info" role="status"><strong>\${flash.message}</strong></div>
					</g:if>
					<g:if test="\${flash.success}">
						<div class="alert alert-success" role="status"><strong>\${flash.success}</strong></div>
					</g:if>
					<g:if test="\${flash.error}">
						<div class="alert alert-error" role="status"><strong>\${flash.error}</strong></div>
					</g:if>
					<g:if test="\${flash.warning}">
						<div class="alert alert-warning" role="status"><strong>\${flash.warning}</strong></div>
					</g:if>	
				</div>
			</div>
			<div class="row">
				<div class="sidebar span3">
					<div class="well" role="navigation">
						<ul class="nav nav-list">
							<li class="nav-header">Options</li>
							<li><a class="home" href="\${createLink(uri: '/')}"><i class="icon-list"></i> <g:message code="default.list.label" args="[entityName]"/></a></li>
							<li><g:link class="create" action="create"><i class="icon-file"></i> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
						</ul>
					</div>
				</div>
				<div class="content">
					<div class="row">
						<div class="span9">
								<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
									allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
									props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
									Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
									props.each { p -> %>
										<div class="row properties">
											<g:if test="\${${propertyName}?.${p.name}}">
												<div id="${p.name}-label" class="property-label span3"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" />:</div>
												<%  if (p.isEnum()) { %>
													<div class="property-value span4" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></div>
												<%  } else if (p.oneToMany || p.manyToMany) { %>
													<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
													<div class="property-value span4" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></div>
													</g:each>
												<%  } else if (p.manyToOne || p.oneToOne) { %>
													<div class="property-value span4" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></div>
												<%  } else if (p.type == Boolean || p.type == boolean) { %>
													<div class="property-value span4" aria-labelledby="${p.name}-label"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></div>
												<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
													<div class="property-value span4" aria-labelledby="${p.name}-label"><g:formatDate date="\${${propertyName}?.${p.name}}" /></div>
												<%  } else if(!p.type.isArray()) { %>
													<div class="property-value span4" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></div>
												<%  } %>
											</g:if>
										</div>
								<%  } %>
							<g:form>
								<p>
									<g:hiddenField name="id" value="\${${propertyName}?.id}" />
									<g:link action="edit" id="\${${propertyName}?.id}" class="btn btn-primary top-align"><i class="icon-pencil icon-white"> </i> <g:message code="default.button.edit.label" default="Edit" /></g:link>
									<button type="submit" class="btn btn-danger" name="_action_delete" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"><i class="icon-trash icon-white"></i> \${message(code: 'default.button.delete.label', default: 'Delete')}</button>
								</p>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
