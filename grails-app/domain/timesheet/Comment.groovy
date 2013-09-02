package timesheet

class Comment {
	Task task
	String comment
	Date dateCreated
    Date lastUpdated
    static constraints = {
    }
	static belongsTo=Task
}
