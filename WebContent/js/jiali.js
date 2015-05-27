$(function() {
	$('.Yes11').change(function() {
		$(".limit12").show();
		$(".limit13").hide();
	});
});
$(function() {
	$('.No11').change(function() {
		$(".limit12").hide();
		$(".limit13").show();
		 
	});
});
$(function() {
	$('.Yes21').change(function() {
		$(".limit22").show();
		$(".limit23").hide();
	});
});
$(function() {
	$('.No21').change(function() {
		$(".limit22").hide();
		$(".limit23").show();
		 
	});
});
$(function() {
	$('.Yes31').change(function() {
		$(".limit32").show();
		$(".limit33").hide();
	});
});
$(function() {
	$('.No31').change(function() {
		$(".limit32").hide();
		$(".limit33").show();
		 
	});
});
$(function() {
	$('.Yes41').change(function() {
		$(".limit42").show();
		$(".limit43").hide();
	});
});
$(function() {
	$('.No41').change(function() {
		$(".limit42").hide();
		$(".limit43").show();
		 
	});
});
$(function() {
	$('#Yes51').change(function() {
		$(".limit52").show();
		$(".limit53").hide();
	});
});
$(function() {
	$('.No51').change(function() {
		$(".limit52").hide();
		$(".limit53").show();
		 
	});
});
$(function() {
	$('.Yes61').change(function() {
		$(".limit62").show();
		$(".limit63").hide();
	});
});
$(function() {
	$('.No61').change(function() {
		$(".limit62").hide();
		$(".limit63").show();
		 
	});
});
$(function() {
	$('#Yes71').change(function() {
		$(".limit72").show();
		$(".limit73").hide();
	});
});
$(function() {
	$('.No71').change(function() {
		$(".limit72").hide();
		$(".limit73").show();
		 
	});
});
$(function() {
	$('.hide61').change(function() {
		$(".share62").hide();
		
		$(".limit62").hide();
		$(".limit63").hide();
	});
});
$(function() {
	$('.show61').change(function() {
		$(".share62").show();

		$(".limit62").hide();
		$(".limit63").hide();
		 
	});
});
$(function() {
	$('.triggerOptOut').change(function() {
		 $("#optOut").show();
		 
	});
    
});


function validate(){
	  var remember = document.getElementById('phone');
	  if (remember.checked){
		  $(".phoneNumber").show();
	  }
	  else {
		  $(".phoneNumber").hide(); 
	  }
	  
	  var website = document.getElementById('website');
	  if (website.checked){
		  $(".website").show();
	  }
	  else {
		  $(".website").hide(); 
	  }
	  
	  var mail = document.getElementById('mail');
	  if (mail.checked){
		  $(".mail").show();
	  }
	  else {
		  $(".mail").hide(); 
	  }
	}
