package Beans;

/**
 * Created by zGuindouOS, l.IsSaM.l on 27/12/2016.
 */

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.util.logging.Logger;

public class Adherent {

    private int IdAdherent;
    private String CodeAdherent;
    private String CIN;
    private String NomAdherent;
    private String PrenomAdherent;
    private String ProfessionAdherent;
    private int etatAdherent;
    private String Login;
    private String Passwd;

    public Adherent() {
    }

    public Adherent(int IdAdherent, String CodeAdherent, String NomAdherent, String CIN ,String ProfessionAdherent, String Login, String Passwd) {
        this.IdAdherent = IdAdherent;
        this.CodeAdherent = CodeAdherent;
        this.CIN = CIN;
        this.NomAdherent = NomAdherent;
        this.ProfessionAdherent = ProfessionAdherent;
        this.etatAdherent = etatAdherent;
        this.Login = Login;
        this.Passwd = Passwd;
    }
    
    public Adherent(String CodeAdherent, String CIN, String NomAdherent, String PrenomAdherent, String ProfessionAdherent, int etatAdherent, String Login, String Password) {
        this.CodeAdherent = CodeAdherent;
        this.CIN = CIN;
        this.NomAdherent = NomAdherent;
        this.PrenomAdherent = PrenomAdherent;
        this.ProfessionAdherent = ProfessionAdherent;
        this.etatAdherent = etatAdherent ;
        this.Login = Login;
        this.Passwd = Password;
    }
    
    public Adherent(int IdAdherent, String CodeAdherent, String CIN, String NomAdherent, String PrenomAdherent, String ProfessionAdherent, int etatAdherent) {
        this.IdAdherent = IdAdherent;
        this.CodeAdherent = CodeAdherent;
        this.CIN = CIN;
        this.NomAdherent = NomAdherent;
        this.PrenomAdherent = PrenomAdherent;
        this.ProfessionAdherent = ProfessionAdherent;
        this.etatAdherent = etatAdherent ;
    }

     
    public Adherent(int IdAdherent, String CodeAdherent, String CIN, String NomAdherent, String PrenomAdherent, String ProfessionAdherent) {
        this.IdAdherent = IdAdherent;
        this.CodeAdherent = CodeAdherent;
        this.CIN = CIN;
        this.NomAdherent = NomAdherent;
        this.PrenomAdherent = PrenomAdherent;
        this.ProfessionAdherent = ProfessionAdherent;
    }

    
    public Adherent(String CodeAdherent, String CIN, String NomAdherent, String PrenomAdherent, String ProfessionAdherent) {
        this.CodeAdherent = CodeAdherent;
        this.CIN = CIN;
        this.NomAdherent = NomAdherent;
        this.PrenomAdherent = PrenomAdherent;
        this.ProfessionAdherent = ProfessionAdherent;
    }

    public int getIdAdherent() {
        return IdAdherent;
    }

    public String getCodeAdherent() {
        return CodeAdherent;
    }

    public String getNomAdherent() {
        return NomAdherent;
    }

    public String getPrenomAdherent() {
        return PrenomAdherent;
    }

    public String getProfessionAdherent() {
        return ProfessionAdherent;
    }

    public void setIdAdherent(int IdAdherent) {
        this.IdAdherent = IdAdherent;
    }

    public void setCodeAdherent(String CodeAdherent) {
        this.CodeAdherent = CodeAdherent;
    }

    public void setNomAdherent(String NomAdherent) {
        this.NomAdherent = NomAdherent;
    }

    public void setPrenomAdherent(String PrenomAdherent) {
        this.PrenomAdherent = PrenomAdherent;
    }

    public void setProfessionAdherent(String ProfessionAdherent) {
        this.ProfessionAdherent = ProfessionAdherent;
    }

    public Adherent(int IdAdherent, String CodeAdherent, String CIN, String NomAdherent, String PrenomAdherent, String ProfessionAdherent, int etatAdherent, String Login, String Passwd) {
        this.IdAdherent = IdAdherent;
        this.CodeAdherent = CodeAdherent;
        this.CIN = CIN;
        this.NomAdherent = NomAdherent;
        this.PrenomAdherent = PrenomAdherent;
        this.ProfessionAdherent = ProfessionAdherent;
        this.etatAdherent = etatAdherent;
        this.Login = Login;
        this.Passwd = Passwd;
    }

 

    public String getCIN() {
        return CIN;
    }

    @Override
    public String toString() {
        return "Adherent{" + "IdAdherent=" + IdAdherent + ", CodeAdherent=" + CodeAdherent + ", CIN=" + CIN + ", NomAdherent=" + NomAdherent + ", PrenomAdherent=" + PrenomAdherent + ", ProfessionAdherent=" + ProfessionAdherent + ", etatAdherent=" + etatAdherent + ", Login=" + Login + ", Passwd=" + Passwd + '}';
    }

    public void setCIN(String CIN) {
        this.CIN = CIN;
    }

    public void setEtatAdherent(int etatAdherent) {
        this.etatAdherent = etatAdherent;
    }

    public void setLogin(String Login) {
        this.Login = Login;
    }

    public void setPasswd(String Passwd) {
        this.Passwd = Passwd;
    }

    public int getEtatAdherent() {
        return etatAdherent;
    }

    public String getLogin() {
        return Login;
    }

    public String getPasswd() {
        return Passwd;
    }

}
