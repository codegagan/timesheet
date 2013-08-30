package timesheet

class Task {
	static hasMany = [comment:Comment]
	Entry entry
	Integer hours
    static constraints = {
    }
	static belongsTo=Entry
}
