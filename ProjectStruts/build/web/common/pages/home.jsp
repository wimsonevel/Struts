<%-- 
    Document   : index
    Created on : Nov 29, 2013, 11:05:45 PM
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
        </head>
        <body>
            <tiles:insert page="/common/layout/baseLayout.jsp" flush="true">
                <tiles:put name="title" value="Sistem Informasi Akademik" />
                <tiles:put name="header" value="/common/template/header.jsp" />
                <tiles:put name="menu" value="/common/template/menu.jsp" />
                <tiles:put name="body" value="/common/template/body.jsp" />
                <tiles:put name="footer" value="/common/template/footer.jsp" />
            </tiles:insert>
        </body>
    </html:html>
</logic:notEmpty>