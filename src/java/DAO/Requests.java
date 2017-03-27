package DAO;

import Beans.*;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by zGuindouOS, l.IsSaM.l on 26/12/2016.
 */
public class Requests {

    
     //  ************************LES REQUETES DE   BOOK  ************************ //
    
    public static String Book_All() {
        return "select * from Book;";
    }

    public static String Book_CodeBook(String Code) {
        return "select * from Book where CodeBook = '" + Code + "';";
    }
    
     public static String Book_IdBook(long idBook) {
        return "select * from Book where idBook = '" + idBook + "';";
    }

    public static String Book_Disponible_All() {
        return "select * from Book where image = true;";
    }

    public static String Book_No_Disponible_All() {
        return "select * from Book where image = false;";
    }

    public static String Book_Categorie_All(String Categ) {
        return "select * from Book where CategorieBook = '" + Categ + "';";
    }

    public static String Book_Update(Book b) {
        return "update Book set CodeBook = '"  + b.getCodeBook()
                + "',titreBook = '"  + b.getTitreBook()
                + "',auteurBook = '"  + b.getAuteurBook()
                + "',CategorieBook = '"  + b.getNombreCopieBook()
                + "',NombreCopieBook = '"  + b.getNombreCopieBook()
                + "',dateparution = '"  + b.getDateParution()
                + "' where idBook = '" + b.getIdBook() + "';";
                
               
    }

    
    // ************************   LES REQUETES DES ADHERENTS   ************************* //
    public static String Adhenrent_all() {
        return " select * from adherent where etatAdherent !=0  ;";  
    }

    public static String Adh_CIN(String CIN) {
        return " select * from adherent where CIN ='" + CIN + "';";
    }

    public static String Adh_CODE(String CODE) {
        return " select * from adherent where CodeAdherent ='" + CODE + "';";
    }
    
     public static String Adh_ID(int id) {
        return " select * from adherent where IdAdherent ='" + id + "';";
    }

    public static String Adh_like_Nom(String Nom) {
        return "select * from adherent where NomAdherent like '%" + Nom + "%';";
    }

    public static String Adh_Add(Adherent Adh) {
        return "INSERT INTO `adherent`(`CodeAdherent`, `CIN`, `NomAdherent`, `PrenomAdherent`, `ProfessionAdherent`, `EtatAdherent`, `Login`, `passwd`) VALUES ('" + Adh.getCodeAdherent() + "','" + Adh.getCIN() + "','" + Adh.getNomAdherent() + "','" + Adh.getPrenomAdherent() + "','" + Adh.getProfessionAdherent() + "' ,'" + Adh.getEtatAdherent() + "' ,'" + Adh.getLogin() + "','" + Adh.getPasswd() + "' );";
    }

    public static String Adh_del_CIN(String CIN) {
        return "delete from adherent where CIN ='" + CIN + "';";
    }
    
     public static String Adh_del_ID(int id) {
        return "delete from adherent where IdAdherent ='" + id + "';";
    }

    public static String Adh_del_CODE(String CODE) {
        return "delete from adherent where CodeAdherent ='" + CODE + "';";
    }

    public static String Adh_Update_By_CIN(Adherent Adh) {
        return "UPDATE Adherent SET CodeAdherent='" + Adh.getCodeAdherent() + "',NomAdherent='" + Adh.getNomAdherent() + "',PrenomAdherent='" + Adh.getPrenomAdherent() + "',ProfessionAdherent='" + Adh.getProfessionAdherent() + "' WHERE CIN ='" + Adh.getCIN() + "';";
    }
    
    public static String Adh_Update_By_ID(Adherent Adh) {
        return "UPDATE Adherent SET CodeAdherent='" + Adh.getCodeAdherent() + "',NomAdherent='" + Adh.getNomAdherent() + "',CIN='" + Adh.getCIN() + "',ProfessionAdherent='" + Adh.getProfessionAdherent() +"',login='" + Adh.getLogin() + "',passwd='" + Adh.getPasswd() + "' WHERE IdAdherent ='" + Adh.getIdAdherent() + "';";
    }

    public static String Adh_profil(String CIN, String CODE) {
        return "select * from adherent where CIN='" + CIN + "' and CodeAdherent='" + CODE + "';";
    }
    
    public static String Adh_Etat(int idAdherent) {
        return "select etatAdherent from adherent where idAdherent='" + idAdherent +"';";
    }
    
    
    // ************************ LES REQUETES DE L'ADMIN ************************//
    
    public static String AdminExist(String name , String passwd) {
        return "select * from admin where login='" + name + "' and passwd='" + passwd + "';";
    }
    
    public static String Admin_getAdmin(String name , String passwd)
    {
       return "select * from admin where login='" + name + "' and passwd='" + passwd + "';"; 
    }
    
        // ************************LES REQUETES DE L'EMPRUNT ************************ //
    
    public static String Emprunt_En_cours_By_Adh(int id_adherent)
    {
        return  "select B.idBook , B.titreBook, E.DateSortie, E.DateMax from emprunt E , Book B where E.IdAdherent = '" + id_adherent + "' AND DateRetour is null AND E.idBook = B.idBook ;";
    }
    
    public static String Emprunt_Remis_By_Adh(int id_adherent)
    {
        return  "select B.idBook , B.titreBook, E.DateSortie, E.DateMax from emprunt E , Book B where E.IdAdherent = '" + id_adherent + "' AND DateRetour is not null AND E.idBook = B.idBook ;";
    }
    
    public static String Emprunt_En_cours()
    {
        
        return  "select E.IdAdherent , B.idBook , B.titreBook, E.DateSortie, E.DateMax from emprunt E , Book B where DateRetour is null AND E.idBook = B.idBook order by DateSortie DESC ;";
    }
    
    public static String Emprunt_Book_Remis(int id_adherent, int id_book)
    {
        return  "update emprunt set DateRetour='" + new SimpleDateFormat("YYYY-MM-dd").format(new Date()) + "' where IdAdherent = '" + id_adherent + "' AND DateRetour is null AND idBook = '" + id_book + "' ;";
    }
    
    public static String Emprunt_ADD(EmpruntP P) {
        return "insert into emprunt values('" + P.getIdBook() + "', '" + P.getIdAdherent() + "', '" + new SimpleDateFormat("YYYY-MM-dd").format(new Date()) + "',null , now() + INTERVAL 20 DAY);";
    }
    
    
    //  ************************  CONSULTATION DES STATUS DES ADHERENTS ************************//
    
    public static String Adherent_Attente() {
        return " select * from adherent where etatAdherent = 0 ";
    }
    
    public static String Adherent_Accepte(int id_adherent) {
        return "update adherent set EtatAdherent = 1 where IdAdherent = '" + id_adherent + "';";
    }
    
    public static String Adherent_Bloquer(int id_adherent) {
        return "update adherent set EtatAdherent = 2 where IdAdherent = '" + id_adherent + "';";
    }
    public static String Adherent_Debloquer(int id_adherent) {
    
        return "update adherent set EtatAdherent = 1 where IdAdherent = '" + id_adherent + "';";
    }
    
    
    public static String AdherentExist(String name , String passwd) {
        return "select * from adherent where login='" + name + "' and passwd='" + passwd + "';";
    }
    
    
    // ************************  RESERVATION  ************************ //
    public static String newReservation(Reservation r) {
        return "insert into reservation values('" + r.getIdBook() + "', '" + r.getIdAdherent() + "', '" + new SimpleDateFormat("YYYY-MM-dd").format(new Date()) + "');";
    }
    
    public static String Reservation_All_Reservation()
    {
        return "select R.idBook ,  B.titreBook, R.date , R.idAdherent , A.CIN , A.NomAdherent , A.PrenomAdherent from adherent A , book B , reservation R where R.IdAdherent = A.IdAdherent AND R.idBook = B.idBook Order By R.date DESC,A.nomAdherent ;";

    }
    
    
    public static String Reservation_Delete(ReservationP R)
    {
        return "delete from reservation where idBook = '" + R.getIdBook() + "' AND IdAdherent = '" + R.getIdAdherent() + "' AND Date like '%" + R.getDateReservation() + "%';";
    }
    
    public static String Reservation_Decrementation(int id_book)
    {
        return "update book set NombreCopieBook = NombreCopieBook - 1 where idBook = '"+ id_book + "';";
    }
    
    public static String SelectCountReservation() {
        return " select count(*) from Reservation";
    }
    
}
