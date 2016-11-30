$(document).ready(function(){
	$("#tractus-reg").on('submit', function(e){
		e.preventDefault();
		var baseServer = 'http://localhost/tractus-api/index.php/regUser';
		$.ajax({
			url: baseServer,
			type: "POST",
			data: new FormData(this),
			contentType: false,
    	    cache: false,
			processData:false,
			success: function(data){
				console.log(data);
			},
			error: function (){

			}


		})
	})
})