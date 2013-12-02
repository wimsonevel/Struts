<%-- 
    Document   : login
    Created on : Nov 29, 2013, 10:10:23 PM
    Author     : wim
--%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="common/css/bootstrap.css" rel="stylesheet"  />
        <link href="common/css/style.css" rel="stylesheet"  />
        <link href="common/css/loginstyle.css" rel="stylesheet"  />
    </head>
    <body>
        <div id="header">
            <h2>Login System</h2>
            <div class="desc">by Wim Sonevel</div>
        </div>
        <div id="login">
            <html:form action="/login">
                <p><bean:write name="LoginForm" property="error" filter="failure"/>&nbsp;</p>
                <p><b>Username:</b><br /><input type="text" name="username" /></p>
                <p><b>Password:</b><br /><input type="password" name="password" /></p>
                <p><input type="submit" name="submit" class='btn btn-primary' value="Login"/></p>
            </html:form>
        </div>
    </body>
</html:html>
