
$(function() {
$('#name').bind('input', function() {	
			      $(".nameOfInstitution").val($("#name").val());
			});
});
			
function loadinit() {
alert("testhaha");
var Yes11 = document.getElementById('Yes11');

if (Yes11.checked) {
	alert("dsfd");
	$(".limit12").show();
	$(".limit13").hide();
}
	
	
}

$(function() {
	//var st = "${sessionScope.forBusiness}";
	//alert(st);
//	alert("test");
	var Yes11 = document.getElementById('Yes11');
	if (Yes11.checked) {

		$(".limit12").show();
		$(".limit13").hide();
	}
	var No11 = document.getElementById('No11');
	if (No11.checked) {

		$(".limit12").show();
		$(".limit13").hide();
	}
	var Yes21 = document.getElementById('Yes21');
	var No21 = document.getElementById('noShareMarketing');
	var Yes31 = document.getElementById('Yes31');
	var No31 = document.getElementById('noShareJointMarketing');
	var Yes41 = document.getElementById('Yes41');
	var No41 = document.getElementById('No41');
	var Yes51 = document.getElementById('Yes51');
	var No51 = document.getElementById('No51');
	var Yes61 = document.getElementById('Yes61');
	var No61 = document.getElementById('No61');
	var Yes71 = document.getElementById('Yes71');
	var No71 = document.getElementById('No71');
	var hide61 = document.getElementById('hide61');
	var show61 = document.getElementById('show61');
	
	if (Yes21.checked) {
		$(".limit22").show();
		$(".limit23").hide();
	}
	if (No21.checked) {
		$(".limit22").hide();
		$(".limit23").show();
	}
	if (Yes31.checked) {
		$(".limit32").show();
		$(".limit33").hide();
	}
	if (No31.checked) {
		$(".limit32").hide();
		$(".limit33").show();
	}
	if (Yes41.checked) {
		$(".limit42").show();
		$(".limit43").hide();
	}
	if (No41.checked) {
		$(".limit42").hide();
		$(".limit43").show();
	}
	if (Yes51.checked) {
		$(".limit52").show();
		$(".limit53").hide();
	}
	if (No51.checked) {
		$(".limit52").hide();
		$(".limit53").show();
	}
	if (Yes71.checked) {
		$(".limit72").show();
		$(".limit73").hide();
	}
	if (No71.checked) {
		$(".limit72").hide();
		$(".limit73").show();
	}
	if (Yes61.checked) {
		$(".limit62").show();
		$(".limit63").hide();
	}
	if (No61.checked) {
		$(".limit62").hide();
		$(".limit63").show();
	}
	if (hide61.checked) {
		$(".share62").hide();
		
		$(".limit62").hide();
		$(".limit63").hide();
	}
	if (show61.checked) {
		$(".share62").show();

		$(".limit62").hide();
		$(".limit63").hide();
	}
	
	validateOptOut();
	validate();
	
});


$(function() {
	$('.Yes11').change(function() {
		$(".limit13").hide();
		$(".limit12").show();
		 
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
	$('#No51').change(function() {
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
		 $(".optOut").show();
		 $("#noOptOut").hide();
		 
	});
    
});

function validateOptOut(){
	var limitShare2 = document.getElementById('limitShare2');
	var limitShare3 = document.getElementById('limitShare3');
	var limitShare4 = document.getElementById('limitShare4');
	var Yes51 = document.getElementById('Yes51');
	var limitShare6 = document.getElementById('limitShare6');
	var Yes71 = document.getElementById('Yes71');
	if (limitShare2.checked || limitShare3.checked 
			|| limitShare4.checked ||Yes51.checked||limitShare6.checked
			||Yes71.checked){
		 $("#optOut").show();
		 $("#optOutWhatHappens").show();
		 $("#noOptOut").hide();
	}
	else {
		 $("#optOut").hide();
		 $("#optOutWhatHappens").hide();
		 $("#noOptOut").show();
	}
	
	
	
}

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

function hide(id){
	$(id).hide();
	}
function show(id){
	$(id).show();
	}

function showHide(show, hide){
	$(show).show();
	$(hide).hide();
	
	}
