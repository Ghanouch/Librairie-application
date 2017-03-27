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
public class EmpruntP {
    
    int idBook;
    String nomBook;
    String DateSortie;
    String DateMax;
    int idAdherent;

    public EmpruntP(int idBook, int idAdherent) {
        this.idBook = idBook;
        this.idAdherent = idAdherent;
    }

    public EmpruntP( int idAdherent , int idBook, String nomBook, String DateSortie, String DateMax) {
        this.idBook = idBook;
        this.nomBook = nomBook;
        this.DateSortie = DateSortie;
        this.DateMax = DateMax;
        this.idAdherent = idAdherent;
    }

    
    
    public EmpruntP(int idBook, String nomBook, String DateSortie, String DateMax) {
        this.idBook = idBook;
        this.nomBook = nomBook;
        this.DateSortie = DateSortie;
        this.DateMax = DateMax;
    }

    public int getIdBook() {
        return idBook;
    }

    public String getNomBook() {
        return nomBook;
    }

    public String getDateSortie() {
        return DateSortie;
    }

    public String getDateMax() {
        return DateMax;
    }

    public void setIdBook(int idBook) {
        this.idBook = idBook;
    }

    public void setNomBook(String nomBook) {
        this.nomBook = nomBook;
    }

    public void setDateSortie(String DateSortie) {
        this.DateSortie = DateSortie;
    }

    public void setDateMax(String DateMax) {
        this.DateMax = DateMax;
    }

    public int getIdAdherent() {
        return idAdherent;
    }

    public void setIdAdherent(int idAdherent) {
        this.idAdherent = idAdherent;
    }
    
    
    
}
