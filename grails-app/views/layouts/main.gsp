<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Service Support"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <r:require modules="bootstrap"/>
        <g:layoutHead/>
        <r:layoutResources />
        <script type="text/javascript" charset="utf-8">
            $('#my-modal').modal({
              keyboard: true
            })
        </script>
    </head>
    <body>

        <g:if test="${params.racker}">
            <!-- Show Racker View -->
        </g:if>
        <g:elseif test="${params.manager}">
            <!-- Show Manager View -->
        </g:elseif>
        <g:else>
            <g:render template="/layouts/support-nav" />
        </g:else>
        


        <div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
        
        <g:layoutBody/>
        
        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

        <r:layoutResources />

		<g:render template="/layouts/new-request-modal" />
        
    </body>
</html>