/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import pojos.User;

/**
 *
 * @author wim
 */
public class LoginService {
    Session session;

    public User Authenticate(String username, String password) {
        User user = null;
        try {
            session = util.HibernateUtil.getSessionFactory().openSession();
            Query query = session.createQuery("FROM User WHERE username =:Username AND password =:Password");
            query.setString("Username", username);
            query.setString("Password", password);
            
            List<User> list = (List<User>) query.list();
            if (list.size() == 1) {
                user = (User) list.get(0);
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return user;
    }
}
