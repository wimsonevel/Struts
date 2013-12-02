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
public class MatakuliahForm extends org.apache.struts.action.ActionForm {
    
    private String kode;
    private String matakuliah;
    private String sks;
    private String semester;
    private String status;
    /**
     * @return
     */
    public String getKode() {
        return kode;
    }

    /**
     * @param string
     */
    public void setKode(String string) {
        kode = string;
    }

    /**
     * @return the matakuliah
     */
    public String getMatakuliah() {
        return matakuliah;
    }

    /**
     * @param matakuliah the matakuliah to set
     */
    public void setMatakuliah(String matakuliah) {
        this.matakuliah = matakuliah;
    }

    /**
     * @return the sks
     */
    public String getSks() {
        return sks;
    }

    /**
     * @param sks the sks to set
     */
    public void setSks(String sks) {
        this.sks = sks;
    }

    /**
     * @return the semester
     */
    public String getSemester() {
        return semester;
    }

    /**
     * @param semester the semester to set
     */
    public void setSemester(String semester) {
        this.semester = semester;
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
    /**
     *
     */
    public MatakuliahForm() {
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
        if (getKode() == null || getKode().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.kode.required' key to your resources
        }
        return errors;
    }
}
