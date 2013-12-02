<%-- 
    Document   : updateDosen
    Created on : Dec 1, 2013, 2:22:15 AM
    Author     : wim
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h3>Form Update Data Dosen</h3>
        <html:form action="/aksiDos" method="POST">
            <table cellpadding='2' cellpadding='2'>
                <tr>
                    <td width='160'><label>NIP</label></td>
                    <td>:</td>
                    <td><input type='text' name='nip' placeholder='Nip' value='<bean:write name="DosenForm" property="nip"/>' readonly="true"/></td>
                </tr>
                <tr>
                    <td><label>Nama Dosen</label></td>
                    <td>:</td>
                    <td><input type='text' name='nama' placeholder='Nama Dosen' value='<bean:write name="DosenForm" property="nama"/>'/></td>
                </tr>
                <tr>
                    <td><label>Alamat</label></td>
                    <td>:</td>
                    <td><input type='text' name='alamat' placeholder='Alamat' value='<bean:write name="DosenForm" property="alamat"/>'/></td>
                </tr>
                <tr>
                    <td><label>Telp</label></td>
                    <td>:</td>
                    <td><input type='text' name='telp' placeholder='Telp' value='<bean:write name="DosenForm" property="telp"/>'/></td>
                </tr>
                <tr>
                    <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
                        <input type='reset' name='reset' class='btn' value='Reset'/></td>
                </tr>
                <input type="hidden" name="status" value="Update" />
            </table>
        </html:form>
        <br/>
        <br/>
        <a href="aksiDos.do"><center>Lihat Data</center></a>
    </body>
</html:html>
