/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import pojos.Matakuliah;

/**
 *
 * @author wim
 */
public class MatakuliahCrud {
    Session session;
    
    public void Create(Matakuliah matakuliah){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            session.save(matakuliah);
            transaksi.commit();
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    
    public List<Matakuliah> getAll(){
        session = util.HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Matakuliah> MatakuliahList = null;
        try {
            Query query = session.createQuery("from Matakuliah");
            MatakuliahList = query.list();

	}catch(Exception e){
            e.getMessage();
	}finally{
            if (session != null) {
                session.close();
            }
        }
	return MatakuliahList;
    }
    
    public void Delete(String matKode){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            Matakuliah mat = (Matakuliah) session.load(Matakuliah.class, matKode);
            if(mat != null){
                session.delete(mat);
                transaksi.commit();
            }
        }catch(Exception e){
            e.getMessage();
        } finally {
            if (session != null) {
		session.close();
            }
	}
    }
    
    public void Update(Matakuliah matakuliah, String kode){
        try{
            session = util.HibernateUtil.getSessionFactory().openSession();
            Transaction transaksi = session.beginTransaction();
            Matakuliah mat = (Matakuliah) session.load(Matakuliah.class, kode);
            mat.setMatNama(matakuliah.getMatNama());
            mat.setMatSks(matakuliah.getMatSks());
            mat.setMatSemester(matakuliah.getMatSemester());
            transaksi.commit();
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
    public Matakuliah findByKode(String kode) {
	Matakuliah mat = null;

	try {
            session = util.HibernateUtil.getSessionFactory().openSession();
            mat = (Matakuliah) session.get(Matakuliah.class, kode);
        } catch (Exception e) {
            e.getMessage();
	} finally {
            if (session != null) {
                session.close();
            }
	}
	return mat;
    }
}
