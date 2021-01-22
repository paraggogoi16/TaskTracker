//Add State Form


$(document).ready(function () {
	$("#add_state").validate({
		rules:{
			name:{
				required:true,	
			}
			
		},
		messages:{
			name:{
				required:"Cannot be left blank",	
			}
			
		}
	});
	

    $("#stateNamesubmit").click(function (event) {
        //stop submit the form, we will post it manually.
        event.preventDefault();
        var form = $("#add_state");
        if(form.valid()){
        	alert("valid");
        	state_add();
        }
    });

});

function state_add(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
    var search = {
    		
    		stateName:$("#stateName").val()
    		
    }
    $("#stateNamesubmit").prop("disabled", true);
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "/master/state/addnewstate/",
        
        data: JSON.stringify(search),
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (data) {
			if(data.msgType==true){
				alert(data.message);
				 $("#submit").prop("disabled", false);
				 $('#user_reg_form')[0].reset();
				 $(location).attr('href',"<%=path %>/login");
				 
			}else if(data.msgType==false) {
					alert(data.message);
				 
			}
           

        }
    });
}