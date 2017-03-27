/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    

    
    refrechDatable();
 
    
  
    


});





function accepter_adh(id_adherent)
{

    $.ajax
            ({
                url : 'AdherentProcess',
                Type: 'POST',
                dataType: 'html',
                data: "process=accepte&id_adherent=" + id_adherent,
                success: function (reponse) {

                    $(".table-responsive").empty();
                    var html ="<table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\"><thead><tr><th>|</th><th>Code Adherent </th><th>CIN</th><th>Nom</th><th>prenom</th><th>Profession</th><th ><center>Accepter</center></th><th ><center>Refuser</center></th></tr></thead><tbody>";
                    $.each($.parseJSON(reponse), function (i, repons) {

                       html = html + "<tr><td><i class=\"glyphicon glyphicon-book icon_in_button\"></i></td><td>" + repons.CodeAdherent + "</td><td>" + repons.CIN + "</td><td>" + repons.NomAdherent + "</td><td>" + repons.PrenomAdherent + "</td><td>" + repons.ProfessionAdherent + "</td><td><center><input type=\"button\" class=\"AccepterAdh  btn btn-success\" id=\"" + repons.IdAdherent + "\" value=\"Accepter\"></center></td><td><center><input type=\"button\" class=\"RefuserAdh  btn btn-danger\" id=\"" + repons.IdAdherent + "\" value=\"Refuser\"></center></td></tr>";
                       

                    });
                    html = html + "</tbody></table>";
                    $(".table-responsive").html(html);
                    refrechDatable();
                    

    // ACCEPTER ADHERENT

               },

                error: function () {
                    alert("deconnexion");
                }


            });

}


function refuser_adh(id_adherent)
{

    $.ajax
            ({
                url : 'AdherentProcess',
                Type: 'POST',
                dataType: 'html',
                data: "process=refuser&id_adherent=" + id_adherent,
                success: function (reponse) {
                    //alert(reponse);

                    $(".table-responsive").empty();
                    var html ="<table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\"><thead><tr><th>|</th><th>Code Adherent </th><th>CIN</th><th>Nom</th><th>prenom</th><th>Profession</th><th ><center>Accepter</center></th><th ><center>Refuser</center></th></tr></thead><tbody>";
                    $.each($.parseJSON(reponse), function (i, repons) {
                       html = html + "<tr><td><i class=\"glyphicon glyphicon-book icon_in_button\"></i></td><td>" + repons.CodeAdherent + "</td><td>" + repons.CIN + "</td><td>" + repons.NomAdherent + "</td><td>" + repons.PrenomAdherent + "</td><td>" + repons.ProfessionAdherent + "</td><td><center><input type=\"button\" class=\"AccepterAdh  btn btn-success\" id=\"" + repons.IdAdherent + "\" value=\"Accepter\"></center></td><td><center><input type=\"button\" class=\"RefuserAdh  btn btn-danger\" id=\"" + repons.IdAdherent + "\" value=\"Refuser\"></center></td></tr>";

                        /*alert(repons.CodeAdherent);
                         alert(repons.CIN);
                         alert(repons.NomAdherent);
                         alert(repons.PrenomAdherent);
                         alert(repons.ProfessionAdherent);
                         alert(repons.etatAdherent);
                         alert("-------------"); */

                    });
                    html = html + "</tbody></table>";
                    $(".table-responsive").html(html);
                    refrechDatable();

            },

                error: function () {
                    alert("deconnexion");
                }


            });

}








function refrechDatable()
{
    
            $('#dataTables-example').dataTable({
        scrollY: 800,
        bPaginate: false,
        paging: true,
        info: false,
        bFilter: true,
        ordering: true,
        searching: true,
        "dom": "lfrti"
        
        });
         $(".dataTables_filter").attr('hidden','true');
                

            oTable = $('#dataTables-example').DataTable();   //pay attention to capital D, which is mandatory to retrieve "api" datatables' object, as @Lionel said
            $('#myInputTextField').keyup(function(){
                            oTable.search($(this).val()).draw() ;
});
   
   
    $(".AccepterAdh").click(function(){  var id_adherent = $(this).attr("id");

        Bootpop.ask('Voulez vous vraiment l accepter?', {
            title: 'Confirmation',
            size: 'small',

            buttons: [
                {btnClass: 'btn btn-success',
                    btnLabel: 'YES',
                    btnValue: 'YES',
                    btnAction: function (answer)
                    {
                        $('.modal').modal('hide');
                        accepter_adh(id_adherent);

                    }
                }


            ]

        });
    });
    // ACCEPTER ADHERENT
   
    
    $(".RefuserAdh").click(function(){ var id_adherent = $(this).attr("id");

       Bootpop.ask('Voulez vous vraiment le refuser?', {
            title: 'Confirmation',
            size: 'small',

            buttons: [
                {btnClass: 'btn btn-danger',
                    btnLabel: 'YES',
                    btnValue: 'YES',
                    btnAction: function (answer)
                    {
                        $('.modal').modal('hide');
                        refuser_adh(id_adherent);

                    }
                }


            ]

        });
    
    });


}

