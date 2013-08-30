package timesheet

class Comment {
	Task task
	String comment
    static constraints = {
    }
	static belongsTo=Task
}
