<%@page import="java.util.Date"%>
<%@page import="Beans.User"%>
<!--
Cette page contient la barre du haut, dont on modifiera le nom pour chaque admin connecté, le "last acess" et la photo de l'admin aussi, cette derniere fait appel à la page "menu.php" qui, elle, contient le menu
-->

<!--  Cette partie contient la barre du haut -->
<nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="accueil.php">Accueil</a> 
            </div>
    <div style="color: white;padding: 15px 50px 5px 50px;float: left;font-size: 22px;">Bienvenue, monsieur  <% if (request.getSession(false) == null ) response.sendRedirect("index.jsp");   User u = (User)request.getSession().getAttribute("user"); System.out.println(u); %><span style="color: red;"> <%=u.getPrenom_admin().toUpperCase() %></span> </div>  
<div style="color: white;padding: 15px 50px 5px 50px;float: right;font-size: 16px;"> On est le <%=new Date().toString() %> &nbsp;<a href="identity?process=deconexion" class="btn btn-danger square-btn-adjust">D�connexion</a> </div>
        </nav>
	<!-- ici c'est la fin de la barre du haut et commence la barre latérale (plus précisemment l'image de profil  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
			<!-- La balise suivante édite l'image de profil de l'admin-->
                    <img src="assets/img/Library3.png" class="user-image img-responsive"/>
					</li>
	
			        <%@ include file="sidebar.jsp" %>	
                </ul>
               
            </div>
            
        </nav>

         <!--script src="js/jquery-1.6.1.min.js" type="text/javascript"></script>
         <script type="text/javascript" src="js/ttw-simple-notifications-min.js"></script>    
         <script type="text/javascript" src="js/Notification.js"></script-->