
$(document).ready(function () {
	$("#user_reg_form").validate({
		rules:{
			name:{
				required:true,	
			},
			password:{
				required:true,
				minlength:6,
				maxlength:12
			},
			emailAddress:{
				required:true,
				email:true,
			},
			password2:{
				required:true,
				minlength:6,
				maxlength:12,
				equalTo: "#password",
	
			},
			mobileNumber:{
				required:true,
				digits:true,
				minlength:10,
				maxlength:12
			},
			screenname:{
				required:true,
			},
			
			landlineNumber:{
				
				digits:true,
				minlength:10,
				maxlength:12
			}
		},
		messages:{
			name:{
				required:"Cannot be left blank",	
			},
			password:{
				required:"Cannot be left blank",
				minlength:"Minimum length must be of 6 characters",
				maxlength:"Maximum length must be of 12 characters"
			},
			emailAddress:{
				required:"Cannot be left blank",
				email:"Not a valid email address",
			},
			password2:{
				required:"Cannot be left blank",
				equalTo: "Password do not match",
				minlength:"Minimum length must be of 6 characters",
				maxlength:"Maximum length must be of 12 characters"

			},
			mobileNumber:{
				required:"Cannot be left blank",
				digits:"Please insert numbers only",
				minlength:"Minimum length must be of 10 characters",
				maxlength:"Maximum length must be of 12 characters"
			},
			screenname:{
				required:"Cannot be left blank",
			},
			
			landlineNumber:{
				
				digits:"Please insert numbers only",
				minlength:"Minimum length must be of 10 characters",
				maxlength:"Maximum length must be of 12 characters"
			}
		}
	});
	

    $("#user_reg_form").submit(function (event) {
        //stop submit the form, we will post it manually.
        event.preventDefault();
        var form = $("#user_reg_form");
        if(form.valid()){
        	alert("valid");
        	fire_ajax_submit();
        }
    });

});

function fire_ajax_submit() {
	var url ="<%=path %>" ;
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
    var search = {
    		
    		name:$("#name").val(),
    		password:$("#password").val(),
    		emailAddress:$("#emailAddress").val(),
    		mobileNumber:$("#mobileNumber").val(),
    		screenname:$("#screenname").val(),
    		password2:$("#password2").val(),
    		landlineNumber:$("#landlineNumber").val(),
    		"${_csrf.parameterName}":$("#app_csrf").val()
    }
    $("#submit").prop("disabled", true);
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
    $.ajax({
        type: "POST",
        contentType: "application/json",
        url: "<%=path %>/saveuser/",
        
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
				 //windows.location.href=;
			}else if(data.msgType==false) {
					alert(data.message);
				 //$("#submit").prop("disabled", true);
			}
           

        }
    });

}


$("#mobileNumber").on("change",function(){
	//var data = $("#mobileNumber").val();
	var type = "mobileNumber";
	if($("#mobileNumber").val()!=null && $("#mobileNumber").valid()){
		check_phone_screen_exist(type,$("#mobileNumber").val())
	}
});

$("#screenname").on("change",function(){
var type = "screenname";
if($("#screenname").val()!=null && $("#screenname").valid()){
	check_phone_screen_exist(type,$("#screenname").val())
}
});


function check_phone_screen_exist(type_rec, data_rec){
	var search  = {
			type:type_rec,
			data:data_rec
	}
	var url ='"<%=path %>"';
	alert(url);
	$.ajax({
        type: "GET",
        contentType: "application/json",
        url: "<%=path %>/existscreenphone/"+"?type="+type_rec+"&"+"data="+data_rec,
       /*   data: search, */
        dataType: 'json',
        cache: false,
        timeout: 600000,
        success: function (data) {
			if(data.msgType==false){
				alert(data.message);
				if(type_rec=="screenname"){
					 $('#screenname').val("");
				}

				 if(type_rec=="mobileNumber"){
					 $("#mobileNumber").val("");
					}
				 
			}
        }
    });
	
}








