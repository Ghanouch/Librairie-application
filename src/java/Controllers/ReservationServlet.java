/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Beans.EmpruntP;
import Beans.Reservation;
import Beans.ReservationP;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zGuindouOS
 */
@WebServlet(name = "ReservationServlet", urlPatterns = {"/ReservationServlet"})
public class ReservationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id_adherent = Integer.parseInt(request.getParameter("id_adherent"));
        int id_book =   Integer.parseInt(request.getParameter("id_book")) ;
        String process = request.getParameter("process");
        // come from admin
        if ( process.equals("valider"))
        {
           // Ajout de l emprunt 
           DAO.EmpruntDAO.addEmprunt(new EmpruntP(id_book, id_adherent));
           // Supression from Reservation
           DAO.ReservationDAO.deleteReservation(new ReservationP(id_book, request.getParameter("date"), id_adherent));

           response.sendRedirect("ReservationList.jsp");
           
            
        } 
        // come from adherent
        if ( process.equals("reserver"))
        {
        //ADD    
        DAO.ReservationDAO.addReservation(new Reservation(
                id_book, 
                id_adherent));
        // DECREMENTE NBRE RESERVATION 
        DAO.ReservationDAO.Decremente_Book_Reservation(id_book);
        response.sendRedirect("Livre_List_Adherent.jsp");
        }
         if ( process.equals("count"))
        {
            System.out.println("kkk");
        PrintWriter pr = response.getWriter();
            System.out.println(DAO.ReservationDAO.selectCountReservation());
        pr.print(DAO.ReservationDAO.selectCountReservation());
        
        }
    }

   
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
