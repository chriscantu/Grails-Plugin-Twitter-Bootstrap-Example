package com.rackspace

class User {
	
	String firstName
	String lastName
	String title

    static constraints = {
		firstName(blank:false)
		lastName(blank:false)
    }
	
	String toString() { "$firstName $lastName" }
}
