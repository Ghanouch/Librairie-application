package DAO;

import Factory.ConnectionFactory;
import Beans.Book;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 * Created by zGuindouOS on 26/12/2016.
 */
public class BookDAO {

    
    private static PreparedStatement prStatement;

    public static void addBook(Book b) {
        try {
            prStatement = Factory.ConnectionFactory.getConnection().prepareStatement("INSERT INTO `book`(`CodeBook`, `titreBook`, `auteurBook`, `CategorieBook`, `NombreCopieBook`, `dateparution`) VALUES (?,?,?,?,?,?)");

            prStatement.setString(1, b.getCodeBook());
            prStatement.setString(2, b.getTitreBook());
            prStatement.setString(3, b.getAuteurBook());
            prStatement.setString(4, b.getCategorieBook());
            prStatement.setInt(5, b.getNombreCopieBook());
            prStatement.setString(6, b.getDateParution());
            prStatement.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Ici---"+e.getMessage());
        }
    }

    public static void removeBook(Long id) {
        try {
            
            prStatement = Factory.ConnectionFactory.getConnection().prepareStatement("DELETE FROM Book where idBook = ?");
            prStatement.setLong(1, id);

            prStatement.execute();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void updateBook(Book b) {
        try {
           
            prStatement = Factory.ConnectionFactory.getConnection().prepareStatement(Requests.Book_Update(b));
            prStatement.executeUpdate();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static ArrayList getAll() {
        ArrayList<Book> Books = new ArrayList<Book>();
        try {
           
            prStatement = Factory.ConnectionFactory.getConnection().prepareStatement(Requests.Book_All());

            ResultSet rs = prStatement.executeQuery();

            while (rs.next()) {
                Book b = new Book();
                b.setIdBook(rs.getLong("idBook"));
                b.setCodeBook(rs.getString("CodeBook"));
                b.setTitreBook(rs.getString("titreBook"));
                b.setAuteurBook(rs.getString("auteurBook"));
                b.setCategorieBook(rs.getString("CategorieBook"));
                b.setNombreCopieBook(rs.getInt("NombreCopieBook"));
                b.setDateParution(rs.getString("DateParution"));
              

                Books.add(b);
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            return Books;
        }
    }
    
    public static Book getBook(long id_book)
    {    Book b = new Book();
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Book_IdBook(id_book));
            res.next();

            b = new Book(res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getInt(6),res.getString(7));
            b.setIdBook(id_book);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return b;
        }
    }       
}
