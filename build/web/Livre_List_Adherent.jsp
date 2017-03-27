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
  
        <%@include file="page_elements/navbarAdherent.jsp" %> 
        
      
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
           
                
            <% Adherent currentAdherent = (Adherent)request.getSession().getAttribute("currentAdherent"); %>

                 
                 
                 <div class="row">
                      <!-- Ajouter Livre -->
                 
                <div class="col-md-12">
                
               
                    
                <!-- Advanced Tables -->
                    <div class="panel panel-default">
                    
                    <div class="panel-heading">
                        
                      <h4 class="well_titre_2"> Liste des livres</h4>
                      
                    
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
                                                           
                                                        <th></th>
                                                        <th>Titre du livre</th>
                                                        <th>Auteur du livre</th>
                                                        <th>Genre du livre</th>
                                                        <th>Date d'apparution</th>
                                                        <th>Nombre de copies disponibles</th>                                                            
                                                        <th><center>Reserver un Livre</center></th>
                                                


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
                                                            <td><%=bk.getNombreCopieBook() %></td>
                                                            <td>
                                                            <center>
                                                            <%if(bk.getNombreCopieBook()==0){%>
                                                               <input disabled type="button" class="Reservation btn btn-success" value="Reserver">
                                                            <% }else{ %> 
                                                                <a href="ReservationServlet?process=reserver&id_book=<%=bk.getIdBook()%>&id_adherent=<%=currentAdherent.getIdAdherent()%>" > 
                                                                    <input  type="button" class="Reservation btn btn-success" value="Reserver">
                                                                </a>
                                                            <% } %>
                                                            </center>
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
    
    <script src="assets/js/jquery-1.10.2.js"></script>
   
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