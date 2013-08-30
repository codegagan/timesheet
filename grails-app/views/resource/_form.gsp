<%@ page import="timesheet.Resource" %>



<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'contact', 'error')} ">
	<label for="contact">
		<g:message code="resource.contact.label" default="Contact" />
		
	</label>
	<g:textField name="contact" value="${resourceInstance?.contact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="resource.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${resourceInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'entry', 'error')} ">
	<label for="entry">
		<g:message code="resource.entry.label" default="Entry" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${resourceInstance?.entry?}" var="e">
    <li><g:link controller="entry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="entry" action="create" params="['resource.id': resourceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'entry.label', default: 'Entry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: resourceInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="resource.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${resourceInstance?.name}"/>
</div>

