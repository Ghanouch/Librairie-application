/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.Reservation;
import Beans.ReservationP;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author zGuindouOS
 */
public class ReservationDAO {
    
    public static void addReservation(Reservation r) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.newReservation(r));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static ArrayList<ReservationP> getAll()
    {
         ArrayList<ReservationP> li_Res = null;
        try {
            li_Res = new ArrayList<ReservationP>();
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.Reservation_All_Reservation());
            while (res.next()) {

                li_Res.add(new ReservationP(res.getInt(1),res.getString(2), res.getString(3), res.getInt(4) , res.getString(5) , res.getString(6) , res.getString(7)));
                   
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return li_Res;
            
        } 
    }
    
    public static void deleteReservation(ReservationP r) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Reservation_Delete(r));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
     public static void Decremente_Book_Reservation(int id_book ) {
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            st.executeUpdate(Requests.Reservation_Decrementation(id_book));
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
     
    public static Integer selectCountReservation() {
        Integer c = 0;
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.SelectCountReservation());
            res.next();
            c = res.getInt(1);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return c;
    }
    
    
    


public static void main(String[] str)
{

    for(ReservationP P : getAll())
        System.out.println(P);
}
}
