<%--
  Created by IntelliJ IDEA.
  User: koncole
  Date: 20.12.2017
  Time: 12:40
--%>

<div class="fieldcontain">
    <label for="firstName">
        <g:message code="custom.label.firstName" />
    </label>
    <g:textField name="firstName" value="${firstName}"/>
</div>

<div class="fieldcontain">
    <label for="comments">
        <g:message code="custom.label.comments" />
    </label>
    <g:textArea name="comments" value="${comments}"/>
</div>

<div class="fieldcontain">
    <label for="password">
        <g:message code="custom.label.password" />
    </label>
    <g:passwordField name="password" value="${password}"/>
</div>

<div class="fieldcontain">
    <label for="notify">
        <g:message code="custom.label.notify" />
    </label>
    <g:checkBox name="notify" value="${notify}"/>
</div>

<div class="fieldcontain">
    <label for="gender">
        <g:message code="custom.label.gender"/>
        <g:message message=":"/>
    </label>
    <g:radioGroup  name="gender" value="${gender}" values="['M','F']"
                   labels="['custom.label.male', 'custom.label.female']">
        <g:message code="${it.label}" /> ${it.radio}
    </g:radioGroup>
</div>

<div class="fieldcontain">
    <label for="marketing">
        <g:message code="custom.label.marketing" />
    </label>
    <g:select from="['internet', 'friend', 'other']" valueMessagePrefix="custom.label" name="marketing" value="${marketing}"/>
</div>