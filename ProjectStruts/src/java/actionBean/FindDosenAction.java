/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import formBean.DosenForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pojos.Dosen;
import services.DosenCrud;

/**
 *
 * @author wim
 */
public class FindDosenAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        DosenForm dosBean = (DosenForm) form;
        DosenCrud dc = new DosenCrud();
        Dosen dos = dc.findByNip(Integer.parseInt(dosBean.getNip()));
        
        dosBean.setNama(dos.getDosNama());
        dosBean.setAlamat(dos.getDosAlamat());
        dosBean.setTelp(dos.getDosTelp());
        
        return mapping.findForward(SUCCESS);
    }
}
