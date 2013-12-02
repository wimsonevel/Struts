<%-- 
    Document   : tampilMatakuliah
    Created on : Dec 1, 2013, 1:36:46 AM
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
            <td colspan='7'><h3><strong><center>Data Matakuliah</center></strong></h3></td>
        </tr>
        <tr class='head'>
            <th width='200'>Kode</th>
            <th width='350'>Nama Matakuliah</th>
            <th width='300'>SKS</th>
            <th width='240'>Semester</th>
            <th width='260'>Aksi</th>
        </tr>
        <logic:notEmpty name="list">
            <logic:iterate id="element" name="list">
                <tr class='satu'>
                    <td><bean:write name="element" property="matKode"/></td>
                    <td><bean:write name="element" property="matNama"/></td>
                    <td><bean:write name="element" property="matSks"/></td>
                    <td><bean:write name="element" property="matSemester"/></td>
                    <td><a href="aksiMat.do?kode=<bean:write name="element" property="matKode"/>&status=Delete"><img width='12px' src='common/css/images/delete.png'/>Hapus</a>
                        <a href="findMat.do?kode=<bean:write name="element" property="matKode"/>"><img width='12px' src='common/css/images/edit.png'/>Edit</a></td>
                </tr>
            </logic:iterate>
        </logic:notEmpty>
    </table>
    <br/>
    <br/>
    <a href="Menu.do?method=matakuliah"><center>Tambah Data</center></a>
</html:html>