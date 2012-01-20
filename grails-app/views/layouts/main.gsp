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
        <div class="topbar-wrapper" style="z-index: 5;">
            <div class="topbar" data-dropdown="dropdown">
                <div class="topbar-inner">
                    <div class="container">
                        <h3><a href="#">Racker Support</a></h3>
                        <ul class="nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle">Reports</a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Requests</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Changes</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Approvals</a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="pull-left" action="">
                            <input type="text" placeholder="Search">
                        </form>
                        <ul class="nav">
                            <li class="active"><a data-controls-modal="my-modal" data-backdrop="true" href="#">New Request</a></li>
                        </ul>
                    </div>
                </div><!-- /topbar-inner -->
            </div><!-- /topbar -->
        </div>
        <div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
        
        <g:layoutBody/>
        
        <div class="footer" role="contentinfo"></div>
        <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

        <r:layoutResources />
        
        <div id="my-modal" class="modal hide fade" style="display: none; ">
            <g:form name="create-request" controller="request" action="create">
                <div class="modal-header">
                    <a href="#" class="close">×</a>
                    <h3>New Request</h3>
                </div>
                <div class="modal-body">
                    <div class="clearfix">
                        <label for="normalSelect">Type:</label>
                        <div class="input">
                            <g:select name="type" value="${value}" from="${['Incident','Request','Approval']}" noSelection="['':'Select Type']" />
                        </div>
                    </div>
                    <div  class="clearfix">
                        <label for="xlInput">Subject:</label>
                        <div  class="input">
                            <g:textField name="subject" class="xlarge"  />
                        </div>
                    </div>
                    <div class="clearfix">
                        <label for="textarea">Description:</label>
                        <div class="input">
                            <textarea class="xlarge" id="description" name="description" value="" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn primary">Create</button>
                </div>
            </div>
        </g:form>
    </body>
</html>