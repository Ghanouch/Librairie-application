<%-- 
    Document   : AdherentDisplay
    Created on : 3 févr. 2017, 00:29:24
    Author     : l.IsSaM.l
--%>

<%@page import="Beans.EmpruntP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.Adherent"%>
<%@include file="page_elements/header.jsp" %>
	<link rel="stylesheet" href="./assets/css/styleAfficher1Ab.css" />			
	<body>
    <div id="wrapper">

    <%@include file="page_elements/navbar.jsp" %> 
              
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <!--
                <div class="row">
                    
                    <div class="col-md-12">
                    <a href="accueil.php" class="lien"><h4>Accueil</h4></a>
                    <a href="bookList.php" class="lien"><h4 class="tabulation">Livres</h4></a>
                    <a href="abonnes.php" class="Acceuil"><h3 class="tabulation">Gestion des adhérents:</h3></a>
                    <a href="emprunts.php" class="lien"><h4 class="tabulation">Emprunts</h4></a>
                    <a href="reservations.php" class="lien"><h4 class="tabulation">Réservations</h4></a>
                    <a href="profil.php" class="lien"><h4 class="tabulation">Gestion du profil</h4></a>
                
                    </div>
                </div>
                <hr />-->



                <div class="row">
                    <div class="col-md-12">


        
                        <% int id = Integer.parseInt(request.getParameter("id_adherent")); 
                         Adherent adh = DAO.AdherentDAO.Adh_Id(id);
                          adh.setIdAdherent(id);   %>
<div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 center">
                    <div class="well well-lg">
                    <h4 class="well_titre"><i class="glyphicon glyphicon-user"></i> Informations sur l'adhérent</h4> 
                    <div class="row col-md-8">
                    <div class="column">      


                        <span class="">Id Adhérent</span><br>
                        <input class="form-control" id="idAdherent"  type="text" disabled  value="<%=adh.getIdAdherent() %>">

                    <br><span class="">Code adhérent</span><br>
                    <input class="Amodier form-control" type="text" id="CodeAdherent"  disabled  value="<%=adh.getCodeAdherent()%>"><br>

    
                    <span class="">Nom </span><br>
                    <input class="Amodier form-control"  type="text" id="NomAdherent"  disabled value="<%=adh.getNomAdherent()%>"><br>

                    <span class="">CIN </span><br>
                    <input class="Amodier form-control"  type="text" id="CinAdherent" disabled value="<%=adh.getCIN()%>"><br>

                    <span class="">Profession</span><br>
                    <input class="Amodier form-control"  type="text"  id="ProfessionAdherent" disabled value="<%=adh.getProfessionAdherent()%>"><br>
 
                    <span class="">Login adherent</span><br>
                    <input class="Amodier form-control"  type="text" id="Login" disabled value="<%=adh.getLogin()%>"><br>

                    <span class="">Mot de passe adherent</span><br>
                    <input class="Amodier form-control"  type="text" id="Passwd" disabled value="<%=adh.getPasswd()%>"><br>

                    </div></div>
                    <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                        
                        <a href="lien_image"><img src="assets/img/ensias.png"
                        alt="Photo Abonne" title="Cliquez pour agrandir" /></a>

                

                </div></div>


                <hr/>

                    <div class="row">
                        
                        
                       



                 
                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
                        <a href="#" class="btn btn-warning btn-lg bouton col-lg-12 col-md-12 col-sm-12 col-xs-12 "><span class="glyphicon glyphicon-retweet icon_in_button" aria-hidden="true"></span>Prolonger </a>
                 
                </div>


                <%
                int etat = Integer.parseInt(request.getParameter("ETAT")); 
                %>

                <div id="bloquer"   class=" col-lg-4 col-md-4 col-sm-4 col-xs-12"  <% if(etat != 1) { %> hidden <% } %> >
                        <a href="#" class="btn btn-danger btn-lg bouton col-lg-12 col-md-12 col-sm-12 col-xs-12 "><span class="glyphicon glyphicon-ban-circle icon_in_button" aria-hidden="true"></span>Bloquer </a>
                 </div>

               <div id="debloquer" class="col-lg-4 col-md-4 col-sm-4 col-xs-12" <% if(etat == 1) { %> hidden <% } %> >
                   
                        <a href="#" class="btn btn-success btn-lg bouton col-lg-12 col-md-12 col-sm-12 col-xs-12 "><span class="glyphicon glyphicon-ban-circle icon_in_button" aria-hidden="true"></span>Debloquer </a>
                 </div>
              
         
                
          
               

                        <br/><br/>



                        <hr/>
                        <div id="actualiser" >
                        <div class="col-md-12">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                        
                   
                        <% ArrayList<EmpruntP> li_empr = DAO.EmpruntDAO.get_All_En_Cours(adh.getIdAdherent()); 
                        if(li_empr.size() == 0 )
                        {
                        %>
                         PAS D'EMPRUNTS ACTUELS 
                        <% 
                        } else {   %>

                        EMPRUNTS ACTUELS     :     <strong><%=li_empr.size() %></strong>
                         </div>
                         <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>id Livre</th>
                                    <th>Titre Livre</th>
                                    <th>Date d'emprunt</th>
                                    <th>Date max de remise</th>
                                    <th>Remettre</th>

                                </tr>
                                </thead>
                                <tbody>
                                    
                                <%    for ( EmpruntP Emp : li_empr ) { %>
                                 <tr>
                                    <td> <%=Emp.getIdBook() %> </td>
                                    <td> <%=Emp.getNomBook() %></td>
                                    <td><%=Emp.getDateSortie() %></td>
                                    <td><%=Emp.getDateMax() %></td>
                                    <td><center><a href="#" id="<%=Emp.getIdBook() %>" name="<%=adh.getIdAdherent() %>" class='remettre btn btn-warning btn-xs'>Remettre</a></center></td>
                                  <tr>
                                   

                                <% } } %>

                                </tbody>
                            </table>
                        </div>
                      </div>
                    </div>
                                
                        <br/><br/>
                     </div> 
                        <% ArrayList<EmpruntP> li_empr_Remis = DAO.EmpruntDAO.get_All_Remis(adh.getIdAdherent()); 
                        if(li_empr_Remis.size() != 0 )
                        {
                        %>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                         EMPRUNTS REMISES 
                          </div>
                         <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>id Livre</th>
                                    <th>Titre Livre</th>
                                    <th>Date d'emprunt</th>
                                    <th>Date max de remise</th>



                                </tr>
                                </thead>
                                <tbody>
                                    
                                <%    for ( EmpruntP Emp : li_empr_Remis ) { %>
                                 <tr>
                                    <td> <%=Emp.getIdBook() %> </td>
                                    <td> <%=Emp.getNomBook() %></td>
                                    <td><%=Emp.getDateSortie() %></td>
                                    <td><%=Emp.getDateMax() %></td>
                                   
                                  <tr>
                                   

                                <% } } %>

                                </tbody>
                            </table>
                        </div>
                      </div>
                    </div>
                                
                        </div>

                        </div>
                        </div>

                        <hr/>

                        





                        <!-- JQUERY SCRIPTS -->
        <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
                        <script src="js/bootstrap.min.js"></script>
                        <!-- METISMENU SCRIPTS -->
                        <script src="assets/js/jquery.metisMenu.js"></script>
                        <!-- DATA TABLE SCRIPTS -->
                        <script src="js/dataTables.bootstrap.min.js"></script>
                        <script src="js/jquery.dataTables.min.js"></script>
                        
                         <script src="js/jquery.bootpop.js" ></script>

                         <script src="js/controlEmprunt.js"></script>
                        
                       
                        <script src="assets/js/custom.js"></script>


                    </div>
      	  	    </div>
       	    </div>
        </div>
     </body>
</html>
