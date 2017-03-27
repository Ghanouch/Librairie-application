

$(document).ready(function () {
    
     NOTIFICATION();
    // getNombreReservation();
    //alert(NombreReservation); 
    
    //window.setInterval(function(){ checkCountReservation(); } , 3000); 
  
    


});
        
        
function NOTIFICATION()
{
    
    

  var notifications = $('body').ttwSimpleNotifications();
      

            notifications.show({msg:'<a href="http://www.codebasehero.com" target="_blank">Codebase Hero</a> rocks my socks off. This notification will auto close in 6 seconds', autoHideDelay:6000});

            

            setTimeout(function() {
                notifications.show({msg:'Make sure to bookmark <a href="http://www.codebasehero.com" target="_blank">Codebase Hero</a> and check back often', autoHide:false});

                setTimeout(function() {
                    notifications.show({msg:'Don\'t forget to check out my <a href="http://codecanyon.net/user/23andwalnut/portfolio" target="_blank">Premium Files</a>', autoHide:false});

                }, 5000);
            }, 2000);
    
}

function getNombreReservation()
{
     $.ajax
   ({
     url: 'ReservationServlet',   
     Type: 'POST',
     dataType: 'html',
     data:"process=count",
     success: function(reponse) 
     {
            alert(reponse);
     },
      
     error: function() { alert("deconnexion"); } 
     
     
   });
}


       
            
            
           