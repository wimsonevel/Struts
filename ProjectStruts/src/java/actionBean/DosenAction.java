/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import formBean.DosenForm;
import java.util.List;
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
public class DosenAction extends org.apache.struts.action.Action {

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
        Dosen dos = new Dosen();

        dos.setNip(Integer.parseInt(dosBean.getNip()));
        dos.setDosNama(dosBean.getNama());
        dos.setDosAlamat(dosBean.getAlamat());
        dos.setDosTelp(dosBean.getTelp());

        if (dosBean.getStatus().equals("Simpan")) {
            dc.Create(dos);
        } else if (dosBean.getStatus().equals("Update")) {
            dc.Update(dos, dos.getNip());
        } else if (dosBean.getStatus().equals("Delete")) {
            dc.Delete(dos.getNip());
        }

        List<Dosen> list = dc.getAll();
        request.setAttribute("list", list);
        
        return mapping.findForward(SUCCESS);
    }
}
