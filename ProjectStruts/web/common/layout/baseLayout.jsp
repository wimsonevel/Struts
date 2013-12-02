<%-- 
    Document   : common-layout
    Created on : Nov 29, 2013, 10:59:40 PM
    Author     : wim
--%>
<%@taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<logic:empty scope="session" name="user">
    <jsp:forward page="/login.jsp"/>
</logic:empty>
<logic:notEmpty scope="session" name="user">
    <html:html lang="true">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title><tiles:getAsString name="title" ignore="true" /></title>
            <link href="common/css/style.css" rel="stylesheet"  />
            <link href="common/css/navbar-fixed-top.css" rel="stylesheet"/>
            <link href="common/css/bootstrap.css" rel="stylesheet"/>

        </head>
        <body>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="logout.do">Logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="badan_utama">
                <tiles:insert attribute="header" ignore="true"/>
                <div id="wrapper">
                    <tiles:insert attribute="menu"/>
                    <div id="content">
                        <tiles:insert attribute="body"/>
                    </div>
                </div>
                <tiles:insert attribute="footer"/>
            </div>
        </body>
    </html:html>
</logic:notEmpty>