<%@ page import="timesheet.Entry" %>



<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="entry.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${entryInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'resource', 'error')} required">
	<label for="resource">
		<g:message code="entry.resource.label" default="Resource" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resource" name="resource.id" from="${timesheet.Resource.list()}" optionKey="id" required="" value="${entryInstance?.resource?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'task', 'error')} ">
	<label for="task">
		<g:message code="entry.task.label" default="Task" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${entryInstance?.task?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['entry.id': entryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>

</div>

