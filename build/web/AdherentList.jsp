<%@page import="DAO.BookDAO"%>
<%@page import="Beans.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="Beans.Adherent"%>
<html>
<head>
<%@include file="page_elements/header.jsp" %>
<style>
    .pagination .paginate_button a.paginate_button {
    color: #fffff !important;
}
.paging_full_numbers a.paginate_active {
    color: #fff !important;
}
</style>
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
                        
                      <h4 class="well_titre_2"> Liste des Adherents</h4>
                      
                    
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
                                                            <th>|</th>
                                                            <th>Code Adherent </th>
                                                            <th>CIN</th>
                                                            <th>Nom</th>
                                                            <th>prenom</th>
                                                            <th>Profession</th>
                                                            <th ><center>Consultation</center></th>


                                        </tr>
                                    </thead>
                                                    <tbody>
                                                    <!-- nb_forms=0 -->
                                                    <!-- foreach (Livre L: Liste_Livres -->
                                                    
                                                       
                                                     <%  LinkedList<Adherent> li = DAO.AdherentDAO.Adherentliste();
                                                       for ( Adherent ad : li ) {  %>   
                                                <tr>
                                                     <td>
                                                            <i class="glyphicon glyphicon-book icon_in_button"></i>
                                                     </td>
                                                        <!-- normalement id="form.'nb_forms'."-->
                                                          
                                                   
                                                        <td><%=ad.getCodeAdherent() %></td>
                                                        <td><%=ad.getCIN() %></td>
                                                        <td><%=ad.getNomAdherent() %></td>
                                                        <td><%=ad.getPrenomAdherent() %></td>
                                                        <td><%=ad.getProfessionAdherent() %></td>
                                                        <td>
                                                    <center><a href="AdherentDisplay.jsp?ETAT=<%=ad.getEtatAdherent() %>&id_adherent=<%=ad.getIdAdherent()%>" > <input type="button" class="ConsulterAdh btn btn-success" id="<%=ad.getIdAdherent()%>" value="Consulter"></a> </center>
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
    <!--script src="assets/js/jquery.metisMenu.js"></script-->
     <!-- DATA TABLE SCRIPTS -->
 
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>

         <!-- CUSTOM SCRIPTS -->
         <!--script src="assets/js/custom.js"></script-->
         <script src="js/ControlAdherent.js" ></script>
   
</body>
</html>