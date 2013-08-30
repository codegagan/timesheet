package timesheet

class Resource {
	static hasMany = [entry:Entry]
	String name
	String email
	String contact
    static constraints = {
    }
	String toString(){
		name
	}
}
