package Beans;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

/**
 * Created by zGuindouOS on 26/12/2016.
 */
public class Book implements Serializable{

    private Long idBook;
    private String codeBook;
    private String titreBook;
    private String categorieBook;
    private String auteurBook;
    private int NombreCopieBook;
    private String dateParution;

    public Book(String codeBook, String titreBook, String categorieBook, String auteurBook, int NombreCopieBook, String dateParution) {
        this.codeBook = codeBook;
        this.titreBook = titreBook;
        this.categorieBook = categorieBook;
        this.auteurBook = auteurBook;
        this.NombreCopieBook = NombreCopieBook;
        this.dateParution = dateParution;
    }

    public Book(String codeBook, String titreBook, String categorieBook, String auteurBook, int NombreCopieBook) {
        this.codeBook = codeBook;
        this.titreBook = titreBook;
        this.categorieBook = categorieBook;
        this.auteurBook = auteurBook;
        this.NombreCopieBook = NombreCopieBook;
    }

    @Override
    public String toString() {
        return "Book{" + "idBook=" + idBook + ", codeBook=" + codeBook + ", titreBook=" + titreBook + ", categorieBook=" + categorieBook + ", auteurBook=" + auteurBook + ", NombreCopieBook=" + NombreCopieBook + ", dateParution=" + dateParution + '}';
    }



    public Book() {
    }

    public Long getIdBook() {
        return idBook;
    }

    public void setIdBook(Long idBook) {
        this.idBook = idBook;
    }

    public String getCodeBook() {
        return codeBook;
    }

    public void setCodeBook(String codeBook) {
        this.codeBook = codeBook;
    }

    public String getTitreBook() {
        return titreBook;
    }

    public void setTitreBook(String titreBook) {
        this.titreBook = titreBook;
    }

    public String getCategorieBook() {
        return categorieBook;
    }

    public void setCategorieBook(String categorieBook) {
        this.categorieBook = categorieBook;
    }

    public String getAuteurBook() {
        return auteurBook;
    }

    public void setAuteurBook(String auteurBook) {
        this.auteurBook = auteurBook;
    }

    public int getNombreCopieBook() {
        return NombreCopieBook;
    }

    public void setNombreCopieBook(int nombreCopieBook) {
        NombreCopieBook = nombreCopieBook;
    }



    public void setDateParution(String dateParution) {
        this.dateParution = dateParution;
    }


    public String getDateParution() {
        return dateParution;
    }

  

}
