/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




 $(document).ready(function () {
          
   
     refrechDatable();

           $(".modification").click(function() {
               var id_book = $(this).attr("id"); 
             
               
           } );  
           $(".suppression").on('click',function(){
               
               var id_book = $(this).attr("id");
               Bootpop.alert('Are you sure?', {
                 title : 'Confirmation',
                 size :  'small',
                 
                 buttons :  [ 
                     {   btnClass : 'btn btn-danger', 
                         btnLabel : 'YES', 
                         btnValue : 'YES',
                         btnAction : function(answer)
                         {  
                             $('.modal').modal('hide');
                             delete_book(id_book);
                             
                         }
                     },
                      {   btnClass : 'btn btn-success', 
                         btnLabel : 'Cancel', 
                         btnValue : 'Cancel',
                         btnAction : function(answer)
                         {  
                             $('.modal').modal('hide');
                             delete_book(id_book);
                             
                         }
                     } 
                    
                 
                            ],  
                 
               });
               
                     
               
           } );  
        });
      
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
                        


}
function delete_book(id_book)
{
 $.ajax
   ({
     url: 'books',
     
     Type: 'POST',
     dataType: 'html',
     data:"id_book="+id_book+"&process=delete",
     success: function(reponse) 
     {
        //alert(reponse);
         $(".table-responsive").empty();
         $(".table-responsive").html(reponse);
         
     
                    refrechDatable();
      
     $(".suppression").on('click',function(){
               
               var id_book = $(this).attr("id");
               Bootpop.alert('Are you sure?', {
                 title : 'Confirmation',
                 size :  'small',
                 
                 buttons :  [ 
                     {   btnClass : 'btn btn-danger', 
                         btnLabel : 'YES', 
                         btnValue : 'YES',
                         btnAction : function(answer)
                         {  
                             $('.modal').modal('hide');
                             delete_book(id_book);
                             
                         }
                     },
                      {   btnClass : 'btn btn-success', 
                         btnLabel : 'Cancel', 
                         btnValue : 'Cancel',
                         btnAction : function(answer)
                         {  
                             $('.modal').modal('hide');
                             delete_book(id_book);
                             
                         }
                     } 
                    
                 
                            ],  
                 
               });
               
                     
               
           } ); 
           
         
      
     },
      
     error: function() { alert("deconnexion"); } 
     
     
   });

    
}