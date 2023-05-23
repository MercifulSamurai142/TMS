(function($) {

	"use strict";

	var fullHeight = function() {

		$('.js-fullheight').css('height', $(window).height());
		$(window).resize(function(){
			$('.js-fullheight').css('height', $(window).height());
		});

	};
	fullHeight();

	$(".toggle-password").click(function() {

	  $(this).toggleClass("fa-eye fa-eye-slash");
	  var input = $($(this).attr("toggle"));
	  if (input.attr("type") == "password") {
	    input.attr("type", "text");
	  } else {
	    input.attr("type", "password");
	  }
	});

})(jQuery);

var counter = 1;
function changeForm() {
	var loginform = document.getElementById('loginform');
	var registrationform = document.getElementById('registrationform');

	if (counter == 0) {
		loginform.style.display = "block";
		registrationform.style.display = "none";
		counter = 1 - counter;
	}
	else {
		loginform.style.display = "none";
		registrationform.style.display = "block";
		counter = 1 - counter;
	}

}