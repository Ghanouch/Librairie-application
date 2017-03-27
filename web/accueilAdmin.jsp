<%-- 
    Document   : accueilAdmin
    Created on : 3 févr. 2017, 23:03:21
    Author     : l.IsSaM.l
--%>

<%@page import="DAO.BookDAO"%>
<%@page import="Beans.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.LinkedList"%>
<%@page import="Beans.Adherent"%>
<html>
   
<head>
<%@include file="page_elements/header.jsp" %>

   </head>
<body>
    <div id="wrapper">
  
      <%@include file="page_elements/navbar.jsp" %> 

        <!-- /. NAV SIDE  -->
        
        <div id="page-wrapper" >
            <div id="page-inner">
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
            -->
            
                 <!-- /. ROW  -->
                 <!--<hr />-->

                
                 <!-- /. ROW  -->
                 
                 <div class="column col-lg-11 col-md-11 col-sm-12 col-xs-12 center">
                 <div class="abonnes_principal zone_grise_droite">              
                <div class="well well-lg">
                <div class="row">
                <h4 class="well_titre_2">Liste des livres</h4>
                <div class="col-lg-7 col-md-7"></div>
                <div class="col-lg-5 col-md-5">
                <a class="btn btn-success btn-lg col-lg-12 col-md-12 col-sm-12 col-xs-12 bouton-ajouter-abonne-f" href="bookInsert.jsp">
                <span class="glyphicon glyphicon-plus icon_in_button" aria-hidden="true"></span>Ajouter Livre</a>
                </div></div><br/><br/>
                    <!-- Advanced Tables -->
                <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="table-responsive">
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">                                                    <thead>
                                                        <tr>
                                                            <th class="center"></th>
                                                            <th class="center">Titre du livre</th>
                                                            <th class="center">Auteur du livre</th>
                                                            <th class="center">Genre du livre</th>
                                                            <th class="center">Date d'apparution</th>
                                                            <th class="center">Nombre de copies disponibles</th>                                                            
                                                            <th colspan="2"><center>Gestion</center></th>
                                                        </tr>
                                                    </thead>
                                                    <div id="corpTab">
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
                                                        <td><%=bk.getNombreCopieBook() %></td>
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
                                                    </div>
                                                </table>
                                            </div>
                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                </div>

                 </div>
                    
        </div>
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    
        <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    
    <script src="js/jquery.bootpop.js" ></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
    
        <script type="text/javascript" src="dist/demo.js"></script>
    <script src="js/ControlBook.js" ></script>
    
           
      
         <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>