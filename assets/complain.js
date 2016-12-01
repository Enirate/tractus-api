$(document).ready(function(){
	$("#complainForm").on('submit',function(e){
		//stop submit button from performing it's default action.
		e.preventDefault();

		//get form input as a java script array of key and values
		var form = $("#complainForm").serializeArray();

		//declaring our base server that holds the api logic
		const baseServer = 'http://localhost/tractus-api/index.php';

		//using ajax post method to send data to the backend for processing
		$.post(baseServer+'/complain', form, function(response){
			console.log(response);

			//parse response to standard Json format.
			var obj = JSON.parse(response);

			var status = obj.status;

			//check the value of the status key inside the response object and act appropraitely
			if(status == 'success') {

				//display success message.
				alert("Complaint recieved we'll get to you soon, thank you.");

				//redirect to home.
				window.location.href='http://localhost/tractus-api';
			}
			else
			{
				alert("Complaint not successfully lodge.");
			}


		})
	})
})