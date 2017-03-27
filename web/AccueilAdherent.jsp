<%-- 
    Document   : AccueilAdherent
    Created on : 6 févr. 2017, 19:31:36
    Author     : l.IsSaM.l
--%>

<%@page import="Beans.Adherent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/win.css" rel="stylesheet">
         <link href="css/stylePopup.css" rel="stylesheet" type="text/css">

        <style>
            
.s
{
  background-color: #000;
  position: absolute;
  top: 0px;
  right: 0px;
  width: 100%;
  height: 100%;
  opacity: 0.9;
  z-index: 50;
  display: none
}

        </style>

        <title>JSP Page</title>
    </head>
    <body>
        <% Adherent currentAdherent = (Adherent)request.getSession().getAttribute("currentAdherent"); %>
        <input hidden id="ETATADHERENT" value="<%=currentAdherent.getEtatAdherent() %>" />
        
        <input hidden id="IDADHERENT" value="<%=currentAdherent.getIdAdherent()%>" />
       
        <div class="s">
            <div class="ss">dddddddd
  		</div>
                <div class="windows8">
			<div class="wBall" id="wBall_1">)
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_2">
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_3">
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_4">
				<div class="wInnerBall"></div>
			</div>
			<div class="wBall" id="wBall_5">
				<div class="wInnerBall"></div>
			</div>

		</div> 

        </div>
        
        
        <div class="normal">
            HHH
        </div>
        
        <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="js/Listener.js" type="text/javascript"></script>
         <script type="text/javascript" src="js/ttw-simple-notifications-min.js"></script>    
         <script type="text/javascript" src="js/Notification.js"></script>    
    </body>    
</html>
