<%-- 
    Document   : mahasiswa
    Created on : Nov 29, 2013, 11:01:31 PM
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
        <h3>Form Input Data Mahasiswa</h3>
        <html:form action="/aksiMhs" method="POST">
            <table cellpadding='2' cellpadding='2'>
                <tr>
                    <td width='160'><label>NIM</label></td>
                    <td>:</td>
                    <td><input type='text' name='nim' placeholder='Nim' required="" /></td>
                </tr>
                <tr>
                    <td><label>Nama</label></td>
                    <td>:</td>
                    <td><input type='text' name='nama' placeholder='Nama' required="" /></td>
                </tr>
                <tr>
                    <td><label>Alamat</label></td>
                    <td>:</td>
                    <td><input type='text' name='alamat' placeholder='Alamat' required="" /></td>
                </tr>
                <tr>
                    <td><label>Jenis Kelamin</label></td>
                    <td>:</td>
                    <td><input type='radio' name='jeniskelamin' value='L'/><label>Laki-Laki</label>
                        <input type='radio' name='jeniskelamin' value='P'/><label>Perempuan</label></td>
                </tr>
                <tr>
                    <td><label>Jurusan</label></td>
                    <td>:</td>
                    <td><select name='jurusan' required="">
                            <option>Pilih Jurusan</option>
                            <option value='Matematika'>Matematika</option>
                            <option
                                value='Fisika'>Fisika</option>
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
                    <td><input type='text' name='telp' placeholder='Telp' required="" /></td>
                </tr>
                <tr>
                    <td colspan='3'><input type='submit' name='submit' class='btn btn-primary' value='Simpan'/>
                        <input type='reset' name='reset' class='btn' value='Reset'/></td>
                </tr>
                <input type="hidden" name="status" value='Simpan' />
            </table>
        </html:form>
    </body>
</html:html>