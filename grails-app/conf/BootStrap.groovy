import com.rackspace.*
import static com.rackspace.Status.UNASSIGNED as UNASSIGNED
import static com.rackspace.Status.IN_PROGRESS as IN_PROGRESS
import static com.rackspace.Status.INFORMATION_REQUIRED as INFORMATION_REQUIRED
import static com.rackspace.Status.CONFIRMATION_REQUIRED as CONFIRMATION_REQUIRED
import static com.rackspace.Status.CLOSED as CLOSED

class BootStrap {

    def init = { servletContext ->
		def chris = createUser("Chris", "Cantu")
		def jess = createUser("Jessica", "Underbrink")		
		def nobody = createUser("Nobody", "Special")
		
		for ( i in 1..30) {
			if (i % 2 == 0) {
				new Request(type: "Incident$i", subject: "Broken", description: "Really Broke", status: UNASSIGNED, assigned: chris).save()
			} else if ( i % 3 == 0){
				new Request(type: "Approval$i", subject: "Need Stuff", description: "Laptop", status: IN_PROGRESS, assigned: jess).save()					
			} else {
				new Request(type: "Change$i", subject: "Change it up", description: "Need Change", status: INFORMATION_REQUIRED, assigned: nobody).save()
			}
		}
    }
    def destroy = {
    }
	
	def createUser(first, last) {
		def user = new User(firstName: first, lastName: last, title: "Awesome Person")
		user.save(flush:true)
		return user
	}
	
}
