/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.Adherent;
import Beans.User;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author l.IsSaM.l
 */
public class UserDAO {

    public static Boolean isExist(String name, String passwd) {

        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            ResultSet res = st.executeQuery(Requests.AdminExist(name, passwd));
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

    public static User getUser(String name, String passwd) {
        ResultSet res = null;
        try {
            Statement st = Factory.ConnectionFactory.getConnection().createStatement();
            res = st.executeQuery(Requests.Admin_getAdmin(name, passwd));
            res.next();
            return new User(res.getString(2), res.getString(3), res.getString(4), res.getString(5));

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

}
