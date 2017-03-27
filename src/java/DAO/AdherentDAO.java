package DAO;

/**
 * Created by zGuindouOS, l.IsSaM.l on 27/12/2016.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Beans.Adherent;
import DAO.Requests;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class AdherentDAO {

    public static LinkedList<Adherent> Adherentliste() {
        LinkedList<Adherent> li_Adh = null;
        try {
            li_Adh = new LinkedList<Adherent>();
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Adhenrent_all());
            while (res.next()) {

                li_Adh.add(new Adherent(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(6), res.getInt(7)));

            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return li_Adh;

        }
    }

    public static LinkedList<Adherent> AdherentlisteAttente() {
        LinkedList<Adherent> li_Adh = null;
        try {
            li_Adh = new LinkedList<Adherent>();
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Adherent_Attente());
            while (res.next()) {
                li_Adh.add(new Adherent(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(6), res.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return li_Adh;
        }
    }

    public static Adherent Adh_CIN(String CIN) {
        Adherent Adh = new Adherent();
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Adh_CIN(CIN));
            res.next();

            Adh = new Adherent(res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(6));

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return Adh;
        }
    }

    public static Adherent Adh_Id(int Id) {
        Adherent Adh = new Adherent();
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Adh_ID(Id));
            res.next();

            Adh = new Adherent(res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(6));

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return Adh;
        }
    }

    public static Adherent Adh_CODE(String CODE) {
        Adherent Adh = new Adherent();
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Adh_CODE(CODE));
            res.next();

            Adh = new Adherent(res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(6));

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return Adh;
        }
    }

    public static LinkedList<Adherent> Search_By__like_Nom(String Nom) {
        LinkedList<Adherent> li_Adh = null;
        try {
            li_Adh = new LinkedList<Adherent>();
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Adh_like_Nom(Nom));
            while (res.next()) {

                li_Adh.add(new Adherent(res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getString(6)));
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return li_Adh;
        }
    }

    public static boolean Adh_Add(Adherent Adh) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adh_Add(Adh));
            ResultSet res = st.executeQuery("select max(idAdherent) from adherent");
            res.next();
            Adh.setIdAdherent(res.getInt(1));
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
   public static void Adh_delete_ID(int id_adherent) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adh_del_ID(id_adherent));
       
        } catch (Exception e) {
            System.out.println(e.getMessage());
           
        }
    }


    public static boolean Adh_delete_CIN(String CIN) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adh_del_CIN(CIN));
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static boolean Adh_delete_CODE(String CODE) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adh_del_CODE(CODE));
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
     public static boolean Update_ID(Adherent Adh) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adh_Update_By_ID(Adh));
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }

    }

    public static boolean Update_CIN(Adherent Adh) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adh_Update_By_CIN(Adh));
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }

    }

    public static void AfficherAdherent(LinkedList<Adherent> li) {

        for (int i = 0; i < li.size(); i++) {
            System.out.println(li.get(i));
        }
    }
    
    public static void AccepterAdherent(int id_adh) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adherent_Accepte(id_adh));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static void BloquerAdherent(int id_adh) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adherent_Bloquer(id_adh));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
      public static void DebloquerAdherent(int id_adh) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Adherent_Debloquer(id_adh));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static Boolean isExist(String Login, String passwd) {

        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.AdherentExist(Login, passwd));
            if (res.next()) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public static Adherent getAdherent(String Login, String passwd) {
        ResultSet res = null;
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            res = st.executeQuery(Requests.AdherentExist(Login, passwd));
            res.next();
            return new Adherent(res.getInt(1),
                    res.getString(2),
                    res.getString(3),
                    res.getString(4),
                    res.getString(5),
                    res.getString(6),
                    res.getInt(7), 
                    res.getString(8),
                    res.getString(9));

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
    
    public static int getEtat(int id_adherent) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Adh_Etat(id_adherent));
            res.next();
            return res.getInt(1);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return -1;
        } 
    }


    public static void main(String[] arg) {

        System.out.println(getEtat(2));

    }

}
