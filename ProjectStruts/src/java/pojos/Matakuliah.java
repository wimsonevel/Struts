package pojos;
// Generated Nov 29, 2013 10:08:11 PM by Hibernate Tools 3.2.1.GA



/**
 * Matakuliah generated by hbm2java
 */
public class Matakuliah  implements java.io.Serializable {


     private String matKode;
     private String matNama;
     private String matSks;
     private String matSemester;

    public Matakuliah() {
    }

	
    public Matakuliah(String matKode) {
        this.matKode = matKode;
    }
    public Matakuliah(String matKode, String matNama, String matSks, String matSemester) {
       this.matKode = matKode;
       this.matNama = matNama;
       this.matSks = matSks;
       this.matSemester = matSemester;
    }
   
    public String getMatKode() {
        return this.matKode;
    }
    
    public void setMatKode(String matKode) {
        this.matKode = matKode;
    }
    public String getMatNama() {
        return this.matNama;
    }
    
    public void setMatNama(String matNama) {
        this.matNama = matNama;
    }
    public String getMatSks() {
        return this.matSks;
    }
    
    public void setMatSks(String matSks) {
        this.matSks = matSks;
    }
    public String getMatSemester() {
        return this.matSemester;
    }
    
    public void setMatSemester(String matSemester) {
        this.matSemester = matSemester;
    }




}


