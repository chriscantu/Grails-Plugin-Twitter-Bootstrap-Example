import com.rackspace.*

class BootStrap {

    def init = { servletContext ->
		for ( i in 1..30) {

			if (i % 2 == 0) {
				new Request(type: "Incident$i", subject: "Broken", description: "Really Broke", status: "Open", assigned: "Joe Racker").save()
			} else if ( i % 3 == 0){
				new Request(type: "Approval$i", subject: "Need Stuff", description: "Laptop", status: "Pending Approval", assigned: "Joe Manager").save()					
			} else {
				new Request(type: "Change$i", subject: "Change it up", description: "Need Change", status: "Unassigned", assigned: "No body").save()
			}
		}
    }
    def destroy = {
    }
}
