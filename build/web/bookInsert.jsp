<%-- 
    Document   : bookInsert
    Created on : 2 févr. 2017, 01:29:18
    Author     : l.IsSaM.l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <head>
<%@include file="page_elements/header.jsp" %>
   </head>
<body>
    <div id="wrapper">
    <%@include file="page_elements/navbar.jsp" %> 
          
       
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
          
                 <!-- /. ROW  -->
                 <hr />
                 
                 <div class="col-md-10 center">
                    <form method="post" action="books">
                    <input type="text" hidden name="process" value="insert" />
                    <div class="well well-lg"             
                    <h4 class="well_titre">
                        <i class="glyphicon glyphicon-book"></i>
                        <span> Titre du Livre:</span><span class="mini_tabulation">
                            <input class="form-control" name="titreBook"  > <!-- if(isset($_POST['titreBook'])) echo'value="'.$_POST['titreBook'].'" '-->
                        </span><br/>
                    </h4>
                    <div class="row col-md-8">
                    <div class="column">
                    <div class="row col-md-5">
                    
                    <br><span class="">- Code du livre:</span>
                    <span class="mini_tabulation"><input class="form-control" name="codeBook"/><!-- if(isset($_POST['codeBook'])) echo'value="'.$_POST['codeBook'].'" ';-->
                    </span><br/>

                    <br><span class="">- Nom de l'auteur:</span>
                    <span class="mini_tabulation"><input class="form-control" name="auteurBook"/><!-- if(isset($_POST['auteurBook'])) echo'value="'.$_POST['auteurBook'].'" ';-->
                    </span><br/>

                    <br> <span class="">- Catégorie du livre</span>
                    <span class="mini_tabulation"><input class="form-control" name="categorieBook"/><!-- if(isset($_POST['categorieBook'])) echo'value="'.$_POST['categorieBook'].'" ';-->
                    </span><br/>
                    
                    <br><span class="">- Date de parution du livre</span>
                    <span class="mini_tabulation"><input class="form-control"  type="date" name="date"/><!-- if(isset($_POST['dateParutionBook'])) echo'value="'.$_POST['dateParutionBook'].'" ';-->
                    </span><br/>
                    <br><span class="">- Nombre de copies du livre</span>
                    <span class="mini_tabulation"><input class="form-control" name="nombreCopieBook"/><!-- if(isset($_POST['nombreCopieBook'])) echo'value="'.$_POST['nombreCopieBook'].'" ';-->
                    </span><br/>

                    <br/><br/>
                    </div></div></div>

                    <div class="row">
                    <div class="col-md-4">

            

                    <br/><hr/><br/>

                    <button class="btn btn-info btn-lg bouton col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <span class="glyphicon glyphicon-floppy-disk icon_in_button" aria-hidden="true"></span>
                    </button> 
                 
                    <p><br/><br/></p>
                    <a  href="bookList.jsp" class="btn btn-danger btn-lg bouton col-lg-12 col-md-12 col-sm-12 col-xs-12 bouton-supprimer-abonne"><span class="glyphicon glyphicon-remove icon_in_button" aria-hidden="true"></span>Annuler </a>
                    </div>

                     <br/><br/>
                    </div>
                  
                   
                    </div>
                        



                    </form>

                    </div>
                </div>
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
        <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>

