/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import java.util.Date;

/**
 *
 * @author zGuindouOS
 */
public class Reservation {
    private int idBook;
    private int idAdherent;
    private String DateReservation;

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public void setIdAdherent(int idAdherent) {
        this.idAdherent = idAdherent;
    }

    public void setDateReservation(String DateReservation) {
        this.DateReservation = DateReservation;
    }

    public int getIdBook() {
        return idBook;
    }

    public int getIdAdherent() {
        return idAdherent;
    }

    public String getDateReservation() {
        return DateReservation;
    }

    public Reservation(int idBook, int idAdherent) {
        this.idBook = idBook;
        this.idAdherent = idAdherent;
    }

    public Reservation(int idBook, int idAdherent, String DateReservation) {
        this.idBook = idBook;
        this.idAdherent = idAdherent;
        this.DateReservation = DateReservation;
    }
}
