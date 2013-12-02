/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import formBean.MahasiswaForm;
import java.util.List;
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
public class MahasiswaAction extends org.apache.struts.action.Action {

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
        Mahasiswa mhs = new Mahasiswa();

        mhs.setNim(Integer.parseInt(mhsBean.getNim()));
        mhs.setMhsNama(mhsBean.getNama());
        mhs.setMhsAlamat(mhsBean.getAlamat());
        mhs.setMhsJenisKelamin(mhsBean.getJeniskelamin());
        mhs.setMhsJurusan(mhsBean.getJurusan());
        mhs.setMhsTelp(mhsBean.getTelp());

        if (mhsBean.getStatus().equals("Simpan")) {
            mc.Create(mhs);
        } else if (mhsBean.getStatus().equals("Update")) {
            mc.Update(mhs, mhs.getNim());
        } else if (mhsBean.getStatus().equals("Delete")) {
            mc.Delete(mhs.getNim());
        }
        
        List<Mahasiswa> list = mc.getAll();
        request.setAttribute("list", list);
        return mapping.findForward(SUCCESS);
    }
}
