package com.rackspace

enum Status {
	UNASSIGNED(1,"Unassigned"), IN_PROGRESS(2,"In Progress"), INFORMATION_REQUIRED(3, "Information Required"), CONFIRMATION_REQUIRED(4, "Confirmation Required"), CLOSED(5,"Closed")
	
	private final Integer value
	private final String name 
	
	Status(Integer value, String name) { 
		this.value = value 
		this.name = name
	}
	
	Integer value() { this.value }
	String toString() { this.name }
	
}
