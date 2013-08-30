package timesheet

class Entry {
	static hasMany = [task:Task]
	Resource resource
    static constraints = {
    }
	static belongsTo=Resource
}
