/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function ()

{

    // Listener de la remise d un livre 
    $(".remettre").click(function () {
        var id_book = $(this).attr("id");
        var id_adherent = $(this).attr("name");
        Bootpop.ask('Voulez vous vraiment remettre le livre = '+id_book+' ?', {
            title: 'Confirmation',
            size: 'small',
            buttons: [
                {btnClass: 'btn btn-success',
                    btnLabel: 'YES',
                    btnValue: 'YES',
                    btnAction: function (answer)
                    {
                        $('.modal').modal('hide');
                        doModifier(id_book, id_adherent);

                    }
              }


            ],
        });

    });
    
    
    
    // Listener Quand je fait modifier 
    
    $("#modifier").click(function()
    {
        $(".Amodier").removeAttr("disabled");
        $("#imodifier").hide();  
        $("#valider").show();
    });

      $("#valider").click(function()
    {
  
        $(".Amodier").attr('disabled',true);
        $("#valider").hide();
        $("#imodifier").show();
        
        var Adherent = new Object();
        
        // Recupérer Info de l adherent
        Adherent.idAdherent = $("#idAdherent").val();
        Adherent.CodeAdherent = $("#CodeAdherent").val();
        Adherent.NomAdherent = $("#NomAdherent").val();
        Adherent.CinAdherent = $("#CinAdherent").val();
        Adherent.ProfessionAdherent = $("#ProfessionAdherent").val();
        Adherent.Login = $("#Login").val();
        Adherent.Passwd = $("#Passwd").val();
        
        MidifierProfil(Adherent);


       
    });

   // Listener pour bloquer et debloquer 
   
   
  $("#bloquer").click(function () {
      
   blocage($("#idAdherent").val(),"bloquer");
   $("#bloquer").hide();
   $("#debloquer").show();
 
  });


  $("#debloquer").click(function () {
      
   blocage($("#idAdherent").val(),"debloquer");
   $("#debloquer").hide();
   $("#bloquer").show();
  
  });

});

// Modifier le profil

function MidifierProfil(Adherent)
{
    
    $.ajax
            ({
                
                url : 'AdherentProcess',
                Type: 'POST',
                dataType: 'html',
                data: "process=update&id_adherent="+Adherent.idAdherent+"&CodeAdherent="+Adherent.CodeAdherent+"&NomAdherent="+Adherent.NomAdherent+"&CinAdherent="+ Adherent.CinAdherent+"&ProfessionAdherent="+Adherent.ProfessionAdherent+"&Login="+Adherent.Login+"&Passwd="+Adherent.Passwd,
                success: function (reponse) {
                    alert("reponse");
               
                 
                },

                error: function () {
                    alert("deconnexion");
                }


            });
    
        
}

// book remis 

function doModifier(id_book, id_adherent)
{
    $.ajax
            ({
                url: 'EmpruntActualisation.jsp',
                Type: 'post',
                dataType: 'html',
                data: "id_book=" + id_book + "&IdAdherent=" + id_adherent,
                success: function (reponse)
                {
                    $("#actualiser").empty();
                    $("#actualiser").html(reponse);
                    $(".remettre").click(function () {
                        var id_book = $(this).attr("id");
                        var id_adherent = $(this).attr("name");
                        Bootpop.ask('Are you sure?', {
                            title: 'Confirmation',
                            size: 'small',
                            buttons: [
                                {btnClass: 'btn btn-success',
                                    btnLabel: 'YES',
                                    btnValue: 'YES',
                                    btnAction: function (answer)
                                    {
                                        $('.modal').modal('hide');
                                        doModifier(id_book, id_adherent);

                                    }
                                }


                          ],
                        });





                    });
                },
                error: function () {
                    alert("deconnexion");
                }
            });
}


function blocage(idAdherent,type)
{
    
   $.ajax
            ({
                
                url : 'AdherentProcess',
                Type: 'POST',
                dataType: 'html',
                data: "process="+type+"&id_adherent="+idAdherent,
                success: function (reponse) {
               
                },

                error: function () {
                    alert("deconnexion");
                }


            }); 
            
}