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
				<div class="span4">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>
				<div class="span12">
					<g:if test="\${flash.message}">
						<div class="alert-message success" role="status"><strong>\${flash.message}</strong></div>
					</g:if>
				</div>
			</div>
			<div class="row">
				<div class="sidebar span4">
					<div class="well" role="navigation">
						<ul>
							<li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
							<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
							<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
						</ul>
					</div>
				</div>
				<div class="content">
					<div class="row">
						<div class="span12">
								<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
									allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
									props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
									Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
									props.each { p -> %>
										<div class="row properties">
											<g:if test="\${${propertyName}?.${p.name}}">
												<div id="${p.name}-label" class="property-label span3"><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" />:</div>
												<%  if (p.isEnum()) { %>
													<div class="property-value span7" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></div>
												<%  } else if (p.oneToMany || p.manyToMany) { %>
													<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
													<div class="property-value span7" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></div>
													</g:each>
												<%  } else if (p.manyToOne || p.oneToOne) { %>
													<div class="property-value span7" aria-labelledby="${p.name}-label"><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></div>
												<%  } else if (p.type == Boolean || p.type == boolean) { %>
													<div class="property-value span7" aria-labelledby="${p.name}-label"><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></div>
												<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
													<div class="property-value span7" aria-labelledby="${p.name}-label"><g:formatDate date="\${${propertyName}?.${p.name}}" /></div>
												<%  } else if(!p.type.isArray()) { %>
													<div class="property-value span7" aria-labelledby="${p.name}-label"><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></div>
												<%  } %>
											</g:if>
										</div>
								<%  } %>
							<g:form>
								<fieldset class="buttons">
									<g:hiddenField name="id" value="\${${propertyName}?.id}" />
									<g:link class="edit" action="edit" id="\${${propertyName}?.id}" class="btn primary"><g:message code="default.button.edit.label" default="Edit" /></g:link>
									<g:actionSubmit class="btn danger" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</fieldset>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
