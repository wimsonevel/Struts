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
public class DosenForm extends org.apache.struts.action.ActionForm {
    
    private String nip;
    private String nama;
    private String alamat;
    private String telp;
    private String status;
    /**
     * @return
     */
    public String getNip() {
        return nip;
    }

    /**
     * @param string
     */
    public void setNip(String string) {
        nip = string;
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
    public DosenForm() {
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
        if (getNip() == null || getNip().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.nip.required' key to your resources
        }
        return errors;
    }
}
