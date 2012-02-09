<div class="navbar" data-dropdown="dropdown">
    <div class="navbar-inner">
        <div class="container">
			<a class="brand" href="${createLink(uri: '/')}">Racker Support</a>
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
            <form class="navbar-search pull-left" action="">
                <input type="text" class="search-query" placeholder="Search">
            </form>
            <ul class="nav">
                <li><a data-toggle="modal" href="#my-modal">New Request</a></li>
            </ul>
        </div>
    </div><!-- /topbar-inner -->
</div><!-- /topbar -->

