<%-- 
    Document   : UpdateMahasiswa
    Created on : Dec 1, 2013, 1:58:52 AM
    Author     : wim
--%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h3>Form Update Data Mahasiswa</h3>
        <html:form action="/aksiMhs" method="POST">
            <table cellpadding='2' cellpadding='2'>
                <tr>
                    <td width='160'><label>NIM</label></td>
                    <td>:</td>
                    <td><input type='text' name='nim' placeholder='Nim' value='<bean:write name="MahasiswaForm" property="nim"/>' readonly="true"/></td>
                </tr>
                <tr>
                    <td><label>Nama</label></td>
                    <td>:</td>
                    <td><input type='text' name='nama' placeholder='Nama' value='<bean:write name="MahasiswaForm" property="nama"/>' /></td>
                </tr>
                <tr>
                    <td><label>Alamat</label></td>
                    <td>:</td>
                    <td><input type='text' name='alamat' placeholder='Alamat' value='<bean:write name="MahasiswaForm" property="alamat"/>' /></td>
                </tr>
                <tr>
                    <td><label>Jenis Kelamin</label></td>
                    <td>:</td>
                    <td><input type='radio' name='jeniskelamin' id='L' value='L' /><label>Laki-Laki</label>
                        <input type='radio' name='jeniskelamin' id='P' value='P' /><label>Perempuan</label></td>
                </tr>
                <tr>
                    <td><label>Jurusan</label></td>
                    <td>:</td>
                    <td><select name='jurusan'>
                            <option value='<bean:write name="MahasiswaForm" property="jurusan"/>'><bean:write name="MahasiswaForm" property="jurusan"/></option>
                            <option>Pilih Jurusan</option>
                            <option value='Matematika'>Matematika</option>
                            <option value='Fisika'>Fisika</option>
                            <option value='Biologi'>Biologi</option>
                            <option value='Kimia'>Kimia</option>
                            <option value='Teknik Informatika'>Teknik Informatika</option>
                            <option value='Teknik Arsitektur'>Teknik Arsitektur</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label>Telp</label></td>
                    <td>:</td>
                    <td><input type='text' name='telp' placeholder='Telp' value='<bean:write name="MahasiswaForm" property="telp"/>' /></td>
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
        <a href="aksiMhs.do"><center>Lihat Data</center></a>
    </body>
    <script>
        var jeniskelamin = "<bean:write name='MahasiswaForm' property='jeniskelamin'/>";
        document.getElementById(jeniskelamin).checked = true;;
    </script>
</html:html>