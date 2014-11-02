var BACKGROUNDS = ['url("../first.png")','url("../second.png")','url("../third.png")' ]
var backgroundIndex = 0;


$( document ).ready(function() {
	$('#profile-tweet-form-holder').on("click",function(){
		$(this).hide();
		$('#profile-tweet-form').show();
	});
	$('textarea').on("keyup",function(){	
		var remainingChars = 140 - $('textarea').val().length;
		$('.peep-count').text(remainingChars.toString());
	});

	setInterval(function(){	
     	console.log(backgroundIndex)
     	backgroundIndex = (backgroundIndex + 1)% 3 
     	$('#body_sign_in').css("background-image",BACKGROUNDS[backgroundIndex])
	},10000);

});