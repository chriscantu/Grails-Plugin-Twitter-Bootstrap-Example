<div class="topbar-wrapper" style="z-index: 5;">
    <div class="topbar" data-dropdown="dropdown">
        <div class="topbar-inner">
            <div class="container">
                <h3><a href="${createLink(uri: '/')}">Racker Support</a></h3>
                <ul class="nav">
                    <li class="active"><a href="${createLink(uri: '/')}">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle">Reports</a>
                        <ul class="dropdown-menu">
							
                            <li><g:link action="list" controller="request" >Requests</g:link></li>
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
                    <li class="active"><a data-controls-modal="my-modal" data-backdrop="true" data-keyboard="true" data-controls-modal="modal-from-dom" href="#">New Request</a></li>
                </ul>
            </div>
        </div><!-- /topbar-inner -->
    </div><!-- /topbar -->
</div>
