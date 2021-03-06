
<%@ page import="timesheet.Resource" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resource.label', default: 'Resource')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-resource" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-resource" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list resource">
			
				<g:if test="${resourceInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="resource.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${resourceInstance}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${resourceInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="resource.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${resourceInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${resourceInstance?.entry}">
				<li class="fieldcontain">
					<span id="entry-label" class="property-label"><g:message code="resource.entry.label" default="Entry" /></span>
					
						<g:each in="${resourceInstance.entry}" var="e">
						<span class="property-value" aria-labelledby="entry-label"><g:link controller="entry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${resourceInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="resource.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${resourceInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${resourceInstance?.id}" />
					<g:link class="edit" action="edit" id="${resourceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
