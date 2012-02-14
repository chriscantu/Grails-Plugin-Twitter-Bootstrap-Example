<div class="navbar">
	<div class="navbar-inner">
    	<div class="container" >
        	<a class="brand" href="${createLink(uri: '/')}">Rackspace Support</a>
        	<div class="nav-collapse">
          		<ul class="nav">
            		<li class="active"><a href="${createLink(uri: '/')}">Home</a></li>
            		<li class="dropdown">
	              	  	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Reports <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="${createLink(action: 'list', controller: 'request' )}">Incident</a></li>
							<li class="divider"></li>
							<li><a href="${createLink(action: 'list', controller: 'request' )}">Change</a></li>
							<li class="divider"></li>
							<li><a href="${createLink(action: 'list', controller: 'request' )}">Approval</a></li>
						</ul>
            		</li>
					<li><a data-toggle="modal" href="#my-modal" >New Request</a></li>
				</ul>
				<form class="navbar-search pull-right" action="">
					<input type="text" class="search-query span2" placeholder="Search">
				</form>
			</div><!-- /.nav-collapse -->
		</div>
	</div><!-- /navbar-inner -->
</div>
