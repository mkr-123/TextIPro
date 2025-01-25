/**
 * 
 */

function addRowTabel(ids){
    	/* alert(ids); */
    	var safeId = ids.replace(/.(?=.{4})/g, "*"); // Masks all but the last 4 characters
		console.log("ID:", safeId);
    	var last="<tr>"+$("#"+ids).find("tbody> tr:last").html()+"</tr>"; 
    	 $("#"+ids).append(last);
		 $("#" + ids)
		       .find("tbody>tr")
		       .each(function (index) {
		           $(this)
		               .find("input, select")
		               .each(function () {
		                   var nameAttr = $(this).attr("name");
		                   if (nameAttr) {
		                       // Update the index in the name attribute
		                       var updatedName = nameAttr.replace(/\[\d+\]/, "[" + index + "]");
		                       $(this).attr("name", updatedName);
		                   }
		               });
		       });
    	 if($("#"+ids).find("tbody> tr").length==2)
    	 $("#"+ids).find("tbody> tr:last").find("td:last").append('<button type="button" class="btn btn-danger btn-sm removeRow">Remove</button>');

    }
    $(document).on('click', '.removeRow', function () {
    	var ids=$(this).parents("table").attr("id");
        if ($("#"+ids+" tr").length > 1) {
            $(this).closest('tr').remove();

            // Update serial numbers
            /* $("#"+ids+" tr").each(function (index) {
                $(this).find("td:first").text(index + 1);
            }); */
			// Recalculate and update serial numbers and name attributes
			    $("#" + ids)
			        .find("tbody>tr")
			        .each(function (index) {
			            $(this).find("td:first").text(index + 1); // Update serial number

			            $(this)
			                .find("input, select")
			                .each(function () {
			                    var nameAttr = $(this).attr("name");
			                    if (nameAttr) {
			                        // Update the index in the name attribute
			                        var updatedName = nameAttr.replace(/\[\d+\]/, "[" + index + "]");
			                        $(this).attr("name", updatedName);
			                    }
			                });
			        });
        } else {
            alert("At least one row is required.");
        }
    });
