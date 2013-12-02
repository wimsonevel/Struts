<%-- 
    Document   : updateMatakuliah
    Created on : Dec 1, 2013, 2:57:50 AM
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
        <h3>Form Update Data Matakuliah</h3>
        <html:form action="/aksiMat" method="POST">
            <table cellpadding='2' cellpadding='2'>
                <tr>
                    <td width='160'><label>Kode Matakuliah</label></td>
                    <td>:</td>
                    <td><input type='text' name='kode' placeholder='Kode Matakuliah' value='<bean:write name="MatakuliahForm" property="kode"/>' readonly="true"/></td>
                </tr>
                <tr>
                    <td><label>Nama Matakuliah</label></td>
                    <td>:</td>
                    <td><input type='text' name='matakuliah' placeholder='Nama Matakuliah' value='<bean:write name="MatakuliahForm" property="matakuliah"/>'/></td>
                </tr>
                <tr>
                    <td><label>SKS</label></td>
                    <td>:</td>
                    <td><select name='sks'>
                            <option value='<bean:write name="MatakuliahForm" property="sks"/>'><bean:write name="MatakuliahForm" property="sks"/></option>
                            <option>Pilih SKS</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>Semester</label></td>
                    <td>:</td>
                    <td><select name='semester'>
                            <option value='<bean:write name="MatakuliahForm" property="semester"/>'><bean:write name="MatakuliahForm" property="semester"/></option>
                            <option>Pilih Semester</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Update'/>
                        <input type='reset' name='reset' class='btn' value='Reset'/></td>
                </tr>
                <input type="hidden" name="status" value="Update" />
            </table>
        </html:form>
    </body>
</html:html>
