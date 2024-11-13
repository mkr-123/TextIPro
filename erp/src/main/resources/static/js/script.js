/**
 * 
 */
/*This Script is to show no record found when data is empty*/

 $().ready(function(){
         const headCount=$(".table thead th").length;
         console.log(headCount);
         $("#empty_row").html('<td colspan="' + headCount + '" style="color:red; text-align:center">No record Found</td>');
         console.log($("#empty_row").html());
  });
 