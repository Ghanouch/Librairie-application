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
public class ReservationP {
    
    int idBook;
    String nomBook;
    String DateReservation;
    int idAdherent;
    String CIN;
    String nomAdherent;
    String prenomAdherent;

    public ReservationP(int idBook, String nomBook, String DateReservation, int idAdherent, String CIN, String nomAdherent, String prenomAdherent) {
        this.idBook = idBook;
        this.nomBook = nomBook;
        this.DateReservation = DateReservation;
        this.idAdherent = idAdherent;
        this.CIN = CIN;
        this.nomAdherent = nomAdherent;
        this.prenomAdherent = prenomAdherent;
    }

    public ReservationP(int idBook, String DateReservation, int idAdherent) {
        this.idBook = idBook;
        this.DateReservation = DateReservation;
        this.idAdherent = idAdherent;
    }
    
    

    public int getIdBook() {
        return idBook;
    }

    public String getNomBook() {
        return nomBook;
    }

    public String getDateReservation() {
        return DateReservation;
    }

    public int getIdAdherent() {
        return idAdherent;
    }

    public String getCIN() {
        return CIN;
    }

    public String getNomAdherent() {
        return nomAdherent;
    }

    public String getPrenomAdherent() {
        return prenomAdherent;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public void setNomBook(String nomBook) {
        this.nomBook = nomBook;
    }

    public void setDateReservation(String DateReservation) {
        this.DateReservation = DateReservation;
    }

    public void setIdAdherent(int idAdherent) {
        this.idAdherent = idAdherent;
    }

    public void setCIN(String CIN) {
        this.CIN = CIN;
    }

    public void setNomAdherent(String nomAdherent) {
        this.nomAdherent = nomAdherent;
    }

    public void setPrenomAdherent(String prenomAdherent) {
        this.prenomAdherent = prenomAdherent;
    }

    @Override
    public String toString() {
        return "ReservationP{" + "idBook=" + idBook + ", nomBook=" + nomBook + ", DateReservation=" + DateReservation + ", idAdherent=" + idAdherent + ", CIN=" + CIN + ", nomAdherent=" + nomAdherent + ", prenomAdherent=" + prenomAdherent + '}';
    }
    
    
}
