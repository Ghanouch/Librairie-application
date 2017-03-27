/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author l.IsSaM.l
 */
public class User {
     int id_admin;
    String nom_admin;
     String prenom_admin;
      String login;
       String passwd;

    public User(String nom_admin, String prenom_admin, String login, String passwd) {
        this.nom_admin = nom_admin;
        this.prenom_admin = prenom_admin;
        this.login = login;
        this.passwd = passwd;
    }

    public int getId_admin() {
        return id_admin;
    }

    public String getNom_admin() {
        return nom_admin;
    }

    public String getPrenom_admin() {
        return prenom_admin;
    }

    public String getLogin() {
        return login;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setId_admin(int id_admin) {
        this.id_admin = id_admin;
    }

    public void setNom_admin(String nom_admin) {
        this.nom_admin = nom_admin;
    }

    public void setPrenom_admin(String prenom_admin) {
        this.prenom_admin = prenom_admin;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

   
    public String toString() {
        return "admin{" + "id_admin=" + id_admin + ", nom_admin=" + nom_admin + ", prenom_admin=" + prenom_admin + ", login=" + login + ", passwd=" + passwd + '}';
    }
    
}
