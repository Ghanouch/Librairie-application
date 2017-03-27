<%-- 
    Document   : EmpruntList
    Created on : 5 févr. 2017, 23:51:30
    Author     : l.IsSaM.l
--%>

<%@page import="Beans.EmpruntP"%>
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
           
                
                 
                 
                 <div class="row">
                      <!-- Ajouter Livre -->
                 
                <div class="col-md-12">
                
               
                    
                <!-- Advanced Tables -->
                    <div class="panel panel-default">
                    
                    <div class="panel-heading">
                        
                      <h4 class="well_titre_2"> Liste des Emprunts</h4>
                      
                    
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
                                                            <th>LIVRE:TITRE</th>
                                                            <th>DATE SORTIE</th>
                                                            <th>DATE MAX</th>
                                                            <th>ADHERENT:CIN</th>
                                                            <th>IDENTITE</th>

                                        </tr>
                                    </thead>
                                                    <tbody>
                                                    <!-- nb_forms=0 -->
                                                    <!-- foreach (Livre L: Liste_Livres -->
                                                    
                                                       
                                                    <%  LinkedList<EmpruntP> li = DAO.EmpruntDAO.get_All_En_Cours();
                                                        Adherent adh = new Adherent();
                                                       for ( EmpruntP Emp : li ) {  %>   
                                                <tr>
                                                   
                                                        <!-- normalement id="form.'nb_forms'."-->
                                                        <% adh = DAO.AdherentDAO.Adh_Id(Emp.getIdAdherent()); %>
                                                   
                                                        <td><%=Emp.getNomBook()%></td>
                                                        <td><%=Emp.getDateSortie() %></td>
                                                        <td><%=Emp.getDateMax() %></td>
                                                        <td><%=adh.getCIN() %></td>
                                                        <td><%=adh.getNomAdherent()%> <%=adh.getPrenomAdherent()%></td>
                                                      
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
