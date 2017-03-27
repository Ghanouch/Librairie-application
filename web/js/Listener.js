var audioElement ;
var exETAT ;
 $(document).ready(function () {  
     
     audioElement = document.createElement('audio');
     audioElement.setAttribute('src', 'sounds/sumsumg.mp3');
     
     audioElement.addEventListener("canplay",function(){
     audioElement.play();    
     });
     exETAT = $("#ETATADHERENT").val();
     checkFirstState();
     window.setInterval(function(){ checkState(); } , 3000); 
     
 });
 
 
 /*function checkState()
 {
    etat_adherent = etatAdherent();
    
                if(etat_adherent == 1);
                
                // SI L ADHERENT EST EN ATTENTE 
                if(etat_adherent == 0)
                {
                   $(".normal").hide();
                   $(".s").show();
                   alert('EN ATTENTE');
                }
                //SI IL EST BLOQUE PAR L ADMIN
                if(etat_adherent == 2)
                {
                   $(".normal").hide();
                   $(".s").show();
                   alert('BLOQUE');
                }
 }
 */

 function checkState()
 {
   id_adherent = $("#IDADHERENT").val();
    $.ajax
            ({
                url : 'AdherentProcess',
                Type: 'POST',
                dataType: 'html',
                data: "process=checkETAT&id_adherent=" + id_adherent,
                success: function (reponse) {
                    
                if  (reponse !== exETAT)
                {
                    exETAT = reponse;
                    audioElement.play();  
                    if(reponse == 1)
                        {

                           $(".normal").show();
                           $(".s").hide();
                        }

                        // SI L ADHERENT EST EN ATTENTE 
                    if(reponse == 0)
                        {
                           $(".normal").hide();
                           $(".ss").append("HELLO kkqksKQS");
                           $(".s").show();
                          // alert('EN ATTENTE');
                        }
                        //SI IL EST BLOQUE PAR L ADMIN
                    if(reponse == 2)
                        {
                           $(".normal").hide();
                           $(".s").append("HELLO kkqksKQS");
                           $(".s").show();
                          // alert('BLOQUE');
                        }
                }
                
                
                // SI L ETAT = 1 ALORS IL EST ACCEPTE
              
                
                
               },

                error: function () {
                    alert("deconnexion");
                }


            });
 }
 
 function checkFirstState()
 {
     exETAT = $("#ETATADHERENT").val();
   
                    if(exETAT == 1)
                        {

                           $(".normal").show();
                           $(".s").hide();
                        }

                        // SI L ADHERENT EST EN ATTENTE 
                        if(exETAT == 0)
                        {
                           $(".normal").hide();
                           $(".s").show();
                          // alert('EN ATTENTE');
                        }
                        //SI IL EST BLOQUE PAR L ADMIN
                    if(exETAT == 2)
                        {
                           $(".normal").hide();
                           $(".s").show();
                          // alert('BLOQUE');
                        }
                
 }