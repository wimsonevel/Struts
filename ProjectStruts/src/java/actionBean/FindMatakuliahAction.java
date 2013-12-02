/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import formBean.MatakuliahForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pojos.Matakuliah;
import services.MatakuliahCrud;

/**
 *
 * @author wim
 */
public class FindMatakuliahAction extends org.apache.struts.action.Action {

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
        
        MatakuliahForm matBean = (MatakuliahForm) form;
        MatakuliahCrud mtc = new MatakuliahCrud();
        Matakuliah mat = mtc.findByKode(matBean.getKode());
        
        matBean.setMatakuliah(mat.getMatNama());
        matBean.setSks(mat.getMatSks());
        matBean.setSemester(mat.getMatSemester());
        
        return mapping.findForward(SUCCESS);
    }
}
