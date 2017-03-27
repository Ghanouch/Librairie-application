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
                        
                      <h4 class="well_titre_2"> Liste des Livres</h4>
                      
                    
                        </div>
                        <div class="panel-body">
                             <div id="page-inner">
                                 
                                 <div class="col-lg-offset-3 col-sm-12 col-md-6">
                <a class="btn btn-info btn-lg col-lg-12 col-md-12 col-sm-12 col-xs-12 bouton-ajouter-abonne-f" href="bookInsert.jsp">
                <span class="glyphicon glyphicon-plus icon_in_button" aria-hidden="true"></span>Ajouter Livre</a>
                                     </div><br><br><br>
                                 
                                 
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
                                                            <th><center>|</center></th>
                                                            <th><center>Titre</center></th>
                                                            <th class=""><center>Auteur</center></th>
                                                            <th class=""><center>Genre</center></th>
                                                            <th class=""><center>Date<center></th>
                                                            <th class=""><center>Copies</center></th>                                                            
                                                            <th><center>Gestion</center></th>
                                                            <th><center>Gestion</center></th>


                                        </tr>
                                    </thead>
                                                    <tbody>
                                                    <!-- nb_forms=0 -->
                                                    <!-- foreach (Livre L: Liste_Livres -->
                                                    
                                                       
                                                    <%  ArrayList<Book> li = BookDAO.getAll();
                                                       for ( Book bk : li ) {  %>   
                                                <tr>
                                                     <td>
                                                            <i class="glyphicon glyphicon-book icon_in_button"></i>
                                                     </td>
                                                        <!-- normalement id="form.'nb_forms'."-->
                                                          
                                                   
                                                        <td><%=bk.getTitreBook() %></td>
                                                        <td><%=bk.getAuteurBook() %></td>
                                                        <td><%=bk.getCategorieBook() %></td>
                                                        <td><%=bk.getDateParution() %></td>
                                                        <td><center><%=bk.getNombreCopieBook() %></center></td>
                                                        <td>
                                                    <center><a href="books?process=modifier&id_book=<%=bk.getIdBook()%>" > <input type="button" class="modification btn btn-success" id="<%=bk.getIdBook()%>" value="Modifier"></a> </center>
                                                        </td>
                                                        <td>
                                                        <center> <input type="button" class="suppression  btn btn-success " id="<%=bk.getIdBook()%>" style="border-color:#d2322d;background-color:#d2322d;" value="Supprimer"></center>
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
       <script src="js/ControlBook.js" ></script>
   
</body>
</html>