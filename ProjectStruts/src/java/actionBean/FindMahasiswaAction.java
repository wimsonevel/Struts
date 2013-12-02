/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import formBean.MahasiswaForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pojos.Mahasiswa;
import services.MahasiswaCrud;

/**
 *
 * @author wim
 */
public class FindMahasiswaAction extends org.apache.struts.action.Action {

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
        
        MahasiswaForm mhsBean = (MahasiswaForm) form;
        MahasiswaCrud mc = new MahasiswaCrud();
        Mahasiswa mhs = mc.findByNim(Integer.parseInt(mhsBean.getNim()));
        mhsBean.setNama(mhs.getMhsNama());
        mhsBean.setAlamat(mhs.getMhsAlamat());
        mhsBean.setJeniskelamin(mhs.getMhsJenisKelamin());
        mhsBean.setJurusan(mhs.getMhsJurusan());
        mhsBean.setTelp(mhs.getMhsTelp());
        
        return mapping.findForward(SUCCESS);
    }
}
