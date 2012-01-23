package com.rackspace

class Request {
	
	String type
	String subject
	String description
	Status status = Status.UNASSIGNED
	User assigned
	Date dateCreated
	Date lastUpdated

    static constraints = {
		type blank:false
		subject blank:false
		description blank:false
		assigned nullable:true
    }
}
