<%-- 
    Document   : navbarAdherent
    Created on : 3 f�vr. 2017, 18:13:25
    Author     : zGuindouOS
--%>

<%@page import="Beans.Adherent"%>
<%@page import="java.util.Date"%>
<!--
Cette page contient la barre du haut, dont on modifiera le nom pour chaque admin connecté, le "last acess" et la photo de l'admin aussi, cette derniere fait appel à la page "menu.php" qui, elle, contient le menu
-->

<!--  Cette partie contient la barre du haut -->
<% Adherent ad = (Adherent)request.getSession().getAttribute("currentAdherent"); %>

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
    <div style="color: white;padding: 15px 50px 5px 50px;float: left;font-size: 22px;">Bienvenue, monsieur  <% if (request.getSession(false) == null ) response.sendRedirect("indexAdherent.jsp");   %><span style="color: red;"> <%=ad.getNomAdherent().toUpperCase() %></span> </div>  
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

            <%@ include file="sidebarAdherent.jsp" %>	
        </ul>

    </div>

</nav>
