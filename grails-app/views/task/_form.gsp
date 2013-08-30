<%@ page import="timesheet.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="task.comment.label" default="Comment" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${taskInstance?.comment?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['task.id': taskInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'entry', 'error')} required">
	<label for="entry">
		<g:message code="task.entry.label" default="Entry" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="entry" name="entry.id" from="${timesheet.Entry.list()}" optionKey="id" required="" value="${taskInstance?.entry?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="task.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hours" type="number" value="${taskInstance.hours}" required=""/>
</div>

