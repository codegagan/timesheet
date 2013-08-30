<%@ page import="timesheet.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${commentInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="comment.task.label" default="Task" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="task" name="task.id" from="${timesheet.Task.list()}" optionKey="id" required="" value="${commentInstance?.task?.id}" class="many-to-one"/>
</div>

