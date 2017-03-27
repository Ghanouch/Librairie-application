<%-- 
    Document   : ReservationList
    Created on : 5 févr. 2017, 01:12:52
    Author     : l.IsSaM.l
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Beans.ReservationP"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="page_elements/header.jsp" %>
   </head>
<body>
    <div id="wrapper">
  
      <%@include file="page_elements/navbar.jsp" %> 
        
      
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
           
                
       
 
                <!--
            <div class="row">
                    <div class="col-md-12">
                     <a href="accueil.php" class="lien"><h4>Page d'accueil</h4></a>
                    <a href="bookList.php" class="Acceuil"><h3 class="tabulation">Gestion de livres:</h3></a>
                    <a href="abonnes.php" class="lien"><h4 class="tabulation">Abonnés</h4></a>
                    <a href="emprunts.php" class="lien"><h4 class="tabulation">Emprunts</h4></a>
                    <a href="reservations.php" class="lien"><h4 class="tabulation">Réservations</h4></a>
                    <a href="profil.php" class="lien"><h4 class="tabulation">Gestion du profil:</h4></a>
                       
                    </div>
                </div>
                 <!-- /. ROW  -->
                 <!--<hr />-->

                
                 <!-- /. ROW  -->
                 
                 
                 <div class="row">
                      <!-- Ajouter Livre -->
                 
                <div class="col-md-12">
                
               
                    
                <!-- Advanced Tables -->
                    <div class="panel panel-default">
                    
                    <div class="panel-heading">
                        
                      <h4 class="well_titre_2"> Liste des Livres</h4>
                      
                    
                        </div>
                        <div class="panel-body">
                             <div id="page-inner">
                                 
                                 
                                         <div class="form-group input-group">
                                            <input type="text" class="form-control" id="myInputTextField">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                                </button>
                                            </span>
                                        </div>
                            <div class="table-responsive">
                                 <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                                            <th><center>Livre:NOM</center></th>
                                                            <th><center>Date Reservation </center></th>
                                                            <th><center>Adherent:CIN</center></th>
                                                            <th><center>Adherent:NOM</center></th>
                                                            <th><center>Adherent:PRENOM</center></th>
                                                            <th><center>CONFIRMER</center></th>
                                                           


                                        </tr>
                                    </thead>
                                                    <tbody>
                                                    <!-- nb_forms=0 -->
                                                    <!-- foreach (Livre L: Liste_Livres -->
                                                    
                                                       
                                                    <%  ArrayList<ReservationP> li = DAO.ReservationDAO.getAll();
                                                        for (ReservationP ad : li) {%>   
                                                <tr>
                                                            <!-- normalement id="form.'nb_forms'."-->


                                                            <td><center><%=ad.getNomBook() %></center></td>
                                                            <td><center><%=ad.getDateReservation() %></center></td>
                                                            <td><center><%=ad.getCIN() %></center></td>
                                                            <td><center><%=ad.getNomAdherent() %></center></td>
                                                            <td><center><%=ad.getPrenomAdherent() %></center></td>
                                                            <td>
                                                     
                                                            <center><a href="ReservationServlet?process=valider&id_adherent=<%=ad.getIdAdherent() %>&id_book=<%=ad.getIdBook()%>&date=<%=ad.getDateReservation()%>"><input type="button" class="ConfirmerRerservation btn btn-success" id="<%=ad.getIdAdherent() %>" value="Confirmer"></a> </center>
                                                    </td>
                                                   
                                                </tr>
                                                <% } %>

                                                        <!-- nb_forms++; -->
                                                    <!-- fin foreach -->
                                                        
                                                        
                                 </tbody>
                                                </table>
                                         </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div
        </div>
    </div>
               
    </div>
</div>
             <!-- /. PAGE INNER  -->
          
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    
        <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
      <!-- BOOTSTRAP SCRIPTS -->
      <script src="assets/js/bootstrap.min.js"></script>   
    
    <script src="js/jquery.bootpop.js" ></script>
    
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
 
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    
             

         <!-- CUSTOM SCRIPTS -->
         <!--script src="assets/js/custom.js"></script-->
       <script src="assets/js/custom.js"></script>

      
</body>
</html>