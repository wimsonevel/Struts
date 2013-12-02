<%-- 
    Document   : tampilMahasiswa
    Created on : Nov 30, 2013, 8:05:37 PM
    Author     : wim
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="common/css/tablestyle.css" rel="stylesheet"/>
<html:html lang="true">

    <table width='800' border='0' align='center'>
        <tr>
            <td colspan='7'><h3>Data Mahasiswa</h3></td>
        </tr>
        <tr class='head'>
            <th width='200'>NIM</th>
            <th width='300'>Nama Mahasiswa</th>
            <th width='300'>Alamat</th>
            <th width='230'>Jenis Kelamin</th>
            <th width='300'>Jurusan</th>
            <th width='240'>Telp</th>
            <th width='300'>Aksi</th>
        </tr>

        <logic:notEmpty name="list">
            <logic:iterate id="element" name="list">
                <tr class='satu'>
                    <td><bean:write name="element" property="nim"/></td>
                    <td><bean:write name="element" property="mhsNama"/></td>
                    <td><bean:write name="element" property="mhsAlamat"/></td>
                    <td><bean:write name="element" property="mhsJenisKelamin"/></td>
                    <td><bean:write name="element" property="mhsJurusan"/></td>
                    <td><bean:write name="element" property="mhsTelp"/></td>
                    <td><a href="aksiMhs.do?nim=<bean:write name="element" property="nim"/>&status=Delete"><img width='12px' src='common/css/images/delete.png'/>Hapus</a>
                        <a href="findMhs.do?nim=<bean:write name="element" property="nim"/>"><img width='12px' src='common/css/images/edit.png'/>Edit</a></td>
                </tr>
            </logic:iterate>
        </logic:notEmpty>
    </table>
    <br/>
    <br/>
    <a href="Menu.do?method=mahasiswa"><center>Tambah Data</center></a>
</html:html>

