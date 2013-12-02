/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actionBean;

import formBean.LoginForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import pojos.User;
import services.LoginService;

/**
 *
 * @author wim
 */
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";

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
        LoginForm loginBean = (LoginForm) form;

        LoginService loginService = new LoginService();
        User user = loginService.Authenticate(loginBean.getUsername(), loginBean.getPassword());
        
        if (user != null){
            HttpSession sesion = request.getSession();
            sesion.setAttribute("user", loginBean.getUsername());
            return mapping.findForward(SUCCESS);
        } else {
            loginBean.setError();
            return mapping.findForward(FAILURE);
        }
    }
}
