<div id="my-modal" class="modal fade" style="display: none; ">
    <g:form name="create-request" controller="request" action="save">
		<fieldset>
	        <div class="modal-header">
	            <a class="close" data-dismiss="modal">×</a>
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
	        <div class="modal-footer">
	            <button type="submit" class="btn btn-primary">Create</button>
	        </div>
		</fieldset>
	</g:form>
</div>

