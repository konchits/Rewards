<%--
  Created by IntelliJ IDEA.
  User: koncole
  Date: 20.12.2017
  Time: 14:58
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="Feedback Form" />
    <title>Feedback Form</title>
</head>

<body>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>

        </ul>
    </div>
    <div id="create-feedbackForm" class="content scaffold-create" role="main">
        <h1><g:message code="custom.text.FeedbackForm"/></h1>
        <g:form action="index" >
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="index" class="save" value="Submit" />
            </fieldset>
        </g:form>
    </div>
</body>
</body>
</html>