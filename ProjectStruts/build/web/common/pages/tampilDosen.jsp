<%-- 
    Document   : tampilDosen
    Created on : Dec 1, 2013, 12:09:46 AM
    Author     : wim
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html>
    <link href="common/css/tablestyle.css" rel="stylesheet"/>
    <table width='670' border='0' align='center'>
        <tr>
            <td colspan='7'><h3>Data Dosen</h3></td>
        </tr>
        <tr class='head'>
            <th width='200'>NIP</th>
            <th width='350'>Nama Dosen</th>
            <th width='300'>Alamat</th>
            <th width='240'>Telp</th>
            <th width='260'>Aksi</th>
        </tr>
        <logic:notEmpty name="list">
            <logic:iterate id="element" name="list">
                <tr class='satu'>
                    <td><bean:write name="element" property="nip"/></td>
                    <td><bean:write name="element" property="dosNama"/></td>
                    <td><bean:write name="element" property="dosAlamat"/></td>
                    <td><bean:write name="element" property="dosTelp"/></td>
                    <td><a href="aksiDos.do?nip=<bean:write name="element" property="nip"/>&status=Delete"><img width='12px' src='common/css/images/delete.png'/>Hapus</a>
                        <a href="findDos.do?nip=<bean:write name="element" property="nip"/>"><img width='12px' src='common/css/images/edit.png'/>Edit</a></td>
                </tr>
            </logic:iterate>
        </logic:notEmpty>
    </table>
    <br/>
    <br/>
    <a href="Menu.do?method=dosen"><center>Tambah Data</center></a>
</html:html>
