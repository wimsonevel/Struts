/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package formBean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author wim
 */
public class MahasiswaForm extends org.apache.struts.action.ActionForm {
    
    private String nim;
    private String nama;
    private String alamat;
    private String jeniskelamin;
    private String jurusan;
    private String telp;
    private String status;
    /**
     * @return
     */
    public String getNim() {
        return nim;
    }

    /**
     * @param string
     */
    public void setNim(String string) {
        nim = string;
    }

    /**
     * @return the nama
     */
    public String getNama() {
        return nama;
    }

    /**
     * @param nama the nama to set
     */
    public void setNama(String nama) {
        this.nama = nama;
    }

    /**
     * @return the alamat
     */
    public String getAlamat() {
        return alamat;
    }

    /**
     * @param alamat the alamat to set
     */
    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    /**
     * @return the jeniskelamin
     */
    public String getJeniskelamin() {
        return jeniskelamin;
    }

    /**
     * @param jeniskelamin the jeniskelamin to set
     */
    public void setJeniskelamin(String jeniskelamin) {
        this.jeniskelamin = jeniskelamin;
    }

    /**
     * @return the jurusan
     */
    public String getJurusan() {
        return jurusan;
    }

    /**
     * @param jurusan the jurusan to set
     */
    public void setJurusan(String jurusan) {
        this.jurusan = jurusan;
    }

    /**
     * @return the telp
     */
    public String getTelp() {
        return telp;
    }

    /**
     * @param telp the telp to set
     */
    public void setTelp(String telp) {
        this.telp = telp;
    }
    
    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }
    
    public MahasiswaForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getNim() == null || getNim().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.nim.required' key to your resources
        }
        return errors;
    }
}
