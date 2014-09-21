$( document ).ready(function() {
	$('#profile-tweet-form-holder').on("click",function(){
		$(this).hide();
		$('#profile-tweet-form').show();
	});
	$('textarea').on("keyup",function(){	
		var remainingChars = 140 - $('textarea').val().length;
		$('.peep-count').text(remainingChars.toString());
	});


});