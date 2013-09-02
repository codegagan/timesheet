package timesheet

class Task {
	static hasMany = [comment:Comment]
	Entry entry
	Integer hours
	Date dateCreated
    Date lastUpdated
    static constraints = {
    }
	static belongsTo=Entry
}
