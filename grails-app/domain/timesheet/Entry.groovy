package timesheet

class Entry {
	static hasMany = [task:Task]
	Resource resource
	Date date
	static mapping = {
    sort "date"
	} 
    static constraints = {
	
    }
	static belongsTo=Resource
	String toString(){
	date.toString()
	}
}
