<%-- 
    Document   : dosen
    Created on : Nov 30, 2013, 12:00:55 AM
    Author     : wim
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h3>Form Input Data Dosen</h3>
        <html:form action="/aksiDos" method="POST">
            <table cellpadding='2' cellpadding='2'>
                <tr>
                    <td width='160'><label>NIP</label></td>
                    <td>:</td>
                    <td><input type='text' name='nip' placeholder='Nip' required=""/></td>
                </tr>
                <tr>
                    <td><label>Nama Dosen</label></td>
                    <td>:</td>
                    <td><input type='text' name='nama' placeholder='Nama Dosen' required=""/></td>
                </tr>
                <tr>
                    <td><label>Alamat</label></td>
                    <td>:</td>
                    <td><input type='text' name='alamat' placeholder='Alamat' required=""/></td>
                </tr>
                <tr>
                    <td><label>Telp</label></td>
                    <td>:</td>
                    <td><input type='text' name='telp' placeholder='Telp' required=""/></td>
                </tr>
                <tr>
                    <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>
                        <input type='reset' name='reset' class='btn' value='Reset'/></td>
                </tr>
                <input type="hidden" name="status" value="Simpan" />
            </table>
        </html:form>
    </body>
</html:html>