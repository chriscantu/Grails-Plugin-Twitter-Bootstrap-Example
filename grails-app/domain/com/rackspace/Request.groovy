package com.rackspace

class Request {
	
	String type
	String subject
	String description
	Status status = Status.UNASSIGNED
	User assigned
	Date dateCreated
	Date lastUpdated

	static namedQueries = {  
		filter { params -> 
			if ( params.type ) { eq 'type', params.type }
			if ( params.subject ) { eq 'subject', params.subject }
			if ( params.description ) { eq 'description', params.description }
			if ( params.status ) { eq 'status', params.status }
			if ( params.assigned ) { eq 'assigned', User.get(params.assigned) }
		}
	}

    static constraints = {
		type blank:false
		subject blank:false
		description blank:false
		assigned nullable:true
    }
}
