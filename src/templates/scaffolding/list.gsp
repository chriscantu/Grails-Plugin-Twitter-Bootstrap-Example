<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span3">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
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
							<li><a class="home" href="\${createLink(uri: '/')}"><i class="icon-list"></i><g:message code="default.list.label" args="[entityName]"/></a></li>
							<li><g:link class="create" action="create"><i class="icon-file"></i><g:message code="default.new.label" args="[entityName]" /></g:link></li>
						</ul>
					</div>
				</div>
				<div class="content">
					<div class="row">
						<div class="span9">
							<div id="list-${domainClass.propertyName}" class="content scaffold-list" role="main">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
										<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
											allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
											props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) }
											Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
											props.eachWithIndex { p, i ->
												if (i < 6) {
													if (p.isAssociation()) { %>
											<th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
										<%      } else { %>
											<g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
										<%  }   }   } %>
										</tr>
									</thead>
									<tbody>
									<g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
										<%  props.eachWithIndex { p, i ->
												if (i == 0) { %>
											<td><g:link action="show" id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</g:link></td>
										<%      } else if (i < 6) {
													if (p.type == Boolean || p.type == boolean) { %>
											<td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
										<%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
											<td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
										<%          } else { %>
											<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
										<%  }   }   } %>
										</tr>
									</g:each>
									</tbody>
								</table>
								<div class="pagination">
									<g:paginate total="\${${propertyName}Total}" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
