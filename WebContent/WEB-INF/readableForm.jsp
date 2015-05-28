<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Smart Wizard 3 - Vertical Style Example - a javascript
		jQuery wizard control plugin</title>
	<link href="css/demo_style.css" rel="stylesheet" type="text/css">
	<!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

		<link href="css/smart_wizard_vertical.css" rel="stylesheet"
			type="text/css">
			<!-- Include all compiled plugins (below), or include individual files as needed -->
			  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   
 			<script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
  			<script type="text/javascript" src="js/jquery.smartWizard.js"></script>
 			
   <script src="js/bootstrap.min.js"></script>
 			 
 <script type="text/javascript" src="js/jiali.js"></script>
 			

			<script type="text/javascript">
			function reset() {
			    document.getElementById("myForm").reset();
			}
			

				$(document).ready(function() {
					// Smart Wizard	
					$('#wizard').smartWizard({
						transitionEffect : 'slide'
					});

				});
			</script>
			
		
  
  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
  
  
</head>
<body>
<div id="dialog" title="Dialog Title">I'm a dialog

<form action="UploadServlet" method="post" enctype="multipart/form-data">
<input type="file" name="fileName">
<input type="submit" value="Upload">
</form>


</div>
  					<button id="opener">upload</button>
 
<script>
$( "#dialog" ).dialog({ autoOpen: false });
$("#opener").click(function() {
  $( "#dialog" ).dialog( "open" );
});
</script>






<!-- <form action="upload" method="post" enctype="multipart/form-data">
    <input type="text" name="description" />
    <input type="file" name="file" />
    <input type="submit" />
</form> -->
<form id="myForm" action="submit.do" method="POST">
	<div class="demoHead">
		<div>
			<div style="float: right;" class="demoNavLinks">
					
 					<input name = "save" class="btn" type="submit" value = "Save"/>
 					<input name = "save" class="btn" type="submit" value = "Preview"/>
 					
<!-- <!-- 					 <a type = "button" class = "btn" id = "non-print" name = "anything" onClick="javascript:window.print();return true" >Print</a>
 --> -->					 <a class="btn" type="button" onclick="reset();" >Reset</a>
					 
			</div>
			<div style="clear: both;"></div>
		</div>


	</div>

		<table align="center" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<h2>Privacy Form</h2> <!-- Tabs -->
					<div id="wizard" class="swMain">
						<ul>
							<li><a href="#step-1"> <label class="stepNumber">1</label>
									<span class="stepDesc"> Facts<br /> <small>Basic Information</small>
								</span>
							</a></li>
							<li><a href="#step-2"> <label class="stepNumber">2</label>
									<span class="stepDesc"> Reasons<br /> <small>Reasons to share</small>
								</span>
							</a></li>
							<li><a href="#step-3"> <label class="stepNumber">3</label>
									<span class="stepDesc"> Opt-Out<br /> <small>Opt-Out & Question</small>
								</span>
							</a></li>
							<li><a href="#step-4"> <label class="stepNumber">4</label>
									<span class="stepDesc"> Who & What<br /> <small>Who and What</small>
								</span>
							</a></li>
							<li><a href="#step-5"> <label class="stepNumber">5</label>
									<span class="stepDesc"> Definition<br /> <small>Definition and Other Information</small>
								</span>
							</a></li>
						</ul>
						<div id="step-1">
							<h2 class="StepTitle">Step 1 FACTS</h2>
							
								<table class="table table-bordered" >
									<tbody class="left-colored">
										<tr>
											<td>Name Of institution</td>
											<td>
											 Please input name of the institution or group of affiliated institutions providing the notice.
											 <span class="glyphicon glyphicon-question-sign" title="Insert the name of the financial institution providing the notice or a common identity of affiliated institutions jointly providing the notice." ></span>
											 <br>
											 <input type="text" id ="name"
												name="nameOfInstitution" class="nameOfInstitution"

												placeholder="NAME OF FINANCIAL INSTITUTION" size="32" value="${nameOfInstitution}">DO WITH
													YOUR PERSONAL INFORMATION?</td>
										</tr>

										<tr>
											<td>Why?</td>
											<td>Financial companies choose how they share your
												personal information. Under federal law, that means
												personally identifiable information. Federal law gives
												consumers the right to limit some but not all sharing.
												Federal law also requires us to tell you how we collect,
												share, and protect your personal information. Please read
												this notice carefully to understand what we do.</td>
										</tr>
										<tr>
											<td>What?&nbsp;

<span class="glyphicon glyphicon-question-sign" title="The bulleted list identifies the types of personal information that the institution collects and shares. All institutions must use the term "Social Security number"in the first bullet" ></span>
											</td>
											<td>The types of personal information we collect and
												share depend on the product or service you have with us.
												This information can include :
<span class="glyphicon glyphicon-question-sign" title="Institutions must use five (5) of the following terms to complete the bulleted list" ></span>

												<br>
												<table>
												<tr>
												<td>Social Security number</td>
												<%
												HashSet<String> what = (HashSet<String>)session.getAttribute("what");
												%>
												<td><input type="checkbox" name="what" value="income" <% if( what.contains("income")) { %>checked<% } %>> income</td>
												<td><input type="checkbox" name="what" value="account balances" <% if( what.contains("account balances")) { %>checked<% } %>>account balances</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="payment history" <% if( what.contains("payment history")) { %>checked<% } %>>payment history</td>
												<td><input type="checkbox" name="what" value="transaction history" <% if( what.contains("transaction history")) { %>checked<% } %>>transaction history</td>
												<td><input type="checkbox" name="what" value="transaction or loss history" <% if( what.contains("transaction or loss history")) { %>checked<% } %>>transaction or loss history</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="credit history" <% if( what.contains("credit history")) { %>checked<% } %>>credit history</td>
												<td><input type="checkbox" name="what" value="credit scores" <% if( what.contains("credit scores")) { %>checked<% } %>>credit scores</td>
												<td><input type="checkbox" name="what" value="assets" <% if( what.contains("assets")) { %>checked<% } %>>assets</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="investment experience" <% if( what.contains("investment experience")) { %>checked<% } %>>investment experience</td>

												<td><input type="checkbox" name="what" value="credit-­based insurance scores" <% if( what.contains("credit-­based insurance scores")) { %>checked<% } %>>credit-based insurance scores</td>
												<td><input type="checkbox" name="what" value="insurance claim history" <% if( what.contains("insurance claim history")) { %>checked<% } %>>insurance claim history</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="medical information" <% if( what.contains("medical information")) { %>checked<% } %>>medical information</td>
												<td><input type="checkbox" name="what" value="overdraft history" <% if( what.contains("overdraft history")) { %>checked<% } %>>overdraft history</td>
												<td><input type="checkbox" name="what" value="purchase history" <% if( what.contains("purchase history")) { %>checked<% } %>>purchase history</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="account transactions" <% if( what.contains("account transactions")) { %>checked<% } %>>account transactions</td>
												<td><input type="checkbox" name="what" value="risk tolerance" <% if( what.contains("risk tolerance")) { %>checked<% } %>>risk tolerance</td>
												<td><input type="checkbox" name="what" value="medical-­related debts" <% if( what.contains("medical-­related debts")) { %>checked<% } %>>medical-related debts</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="credit card or other debt" <% if( what.contains("credit card or other debt")) { %>checked<% } %>>credit card or other debt</td>
												<td><input type="checkbox" name="what" value="mortgage rates and payments" <% if( what.contains("mortgage rates and payments")) { %>checked<% } %>>mortgage rates and payments</td>
												<td><input type="checkbox" name="what" value="retirement assets" <% if( what.contains("retirement assets")) { %>checked<% } %>>retirement assets</td>
												</tr>
												</table>

												


											</td>
										</tr>
										<tr>
											<td>How?</td>
											<td>All financial companies need to share
												customers&apos; personal information to run their everyday
												business. In the section below, we list the reasons
												financial companies can share their customers&rsquo; personal information; the reasons we chooses
													to share; and whether you can limit this sharing.
											</td>
										</tr>
									</tbody>
								</table>


						</div>
						<div id="step-2">
							<h2 class="StepTitle">Step 2 REASONS



</span>
							</h2>
							   <div  >
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Reasons we can share your personal information
<span class="glyphicon glyphicon-question-sign" title="The left column lists reasons for sharing or using personal information. Each reason correlates to a specific legal provision."></span>

            </th>
            <th>Do we share?
<span class="glyphicon glyphicon-question-sign" title="each institution must provide a 'Yes' or 'No' response that accurately reflects its information sharing policies and practices with respect to the reason listed on the left."></span>
            </th>
            <th>Can you limit this sharing?
<span class="glyphicon glyphicon-question-sign" title="each institution must provide in each box one of the following three (3) responses, as applicable, that reflects whether a consumer can limit such sharing: 'Yes' if it is required to or voluntarily provides an opt­-out; 'No' if it does not provide an opt­-out; or 'We don't share' if it answers 'No' in the middle column. Only the sixth row ('For our affiliates to market to you') may be omitted at the option of the institution."></span>
            </th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>For our everyday business purposes - such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
            <td><input type="radio" name="forBusiness" value="true" class="Yes11">Yes
<input type="radio" name="forBusiness" value="false" class="No11">No</td>
            <td><div class="limit12"  style="display:none">No</div>
		<div class="limit13" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For our marketing purposes - with service providers we use to offer our products and services to you</td>
            <td><input type="radio" name="forMarketing" value="true" class="Yes21">Yes
<input type="radio" name="forMarketing" value="false" class="No21" id="noShareMarketing" onclick="validateOptOut()">No</td>
            <td><div class="limit22"  style="display:none"><input type="radio" name="limitMarketing" value="true" id="limitShare2" onclick="validateOptOut()">Yes
<input type="radio" name="limitMarketing" value="false" onclick="validateOptOut()">No</div>
</td>
          </tr>
          <tr>
            <td>For joint marketing with other financial companies</td>
                        <td><input type="radio" name="forJointMarket" value="true" class="Yes31">Yes
<input type="radio" name="forJointMarket" value="false"  id="noShareJointMarketing" class="No31" onclick="validateOptOut()">No</td>
            <td><div class="limit32"  style="display:none"><input type="radio" name="limitJointMarket" value="true" class="triggerOptOut"  id="limitShare3" onclick="validateOptOut()">Yes

<input type="radio" name="limitJointMarket" value="false" onclick="validateOptOut()">No</div>

<div class="limit33" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your transactions and experiences</td>
                        <td><input type="radio" name="forAffiliateTransaction" value="true" class="Yes41">Yes
<input type="radio" name="forAffiliateTransaction" value="false" class="No41">No</td>

 <td><div class="limit42"  style="display:none"><input type="radio" name="limitAffiliateTransaction" value="true" class="triggerOptOut"  id="limitShare4" onclick="validateOptOut()">Yes
 <input type="radio" name="limitAffiliateTransaction" value="false"  onclick="validateOptOut()">No</div>

<div class="limit43" style="display:none">We don't share.</div>
</td>
          </tr>        
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your creditworthiness</td>
                        <td><input type="radio" name="forAffiliateCredit" value="true" id="Yes51" class="triggerOptOut">Yes
<input type="radio" name="forAffiliateCredit" value="false" id="No51" onclick="validateOptOut()">No</td>
            <td><div class="limit52"  style="display:none">Yes</div>
<div class="limit53" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For our affiliates to market to you <br>   <input type="radio" name="showSixthRow" value="false" class="hide61" >hide
            <input type="radio" name="showSixthRow" value="false"class="show61" >show
            </td>
                        <td><div class="share62"  style="display:none"><input type="radio" name="forAffiliateMarket" value="true" class="Yes61">Yes
<input type="radio" name="forAffiliateMarket" value="false" class="No61">No</div></td>

            <td><div class="limit62"  style="display:none"><input type="radio" name="limitAffiliateMarket" value="true" class="triggerOptOut"  id="limitShare6" onclick="validateOptOut()">Yes
           
<input type="radio" name="limitAffiliateMarket" value="false" onclick="validateOptOut()">No</div>

<div class="limit63" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For nonaffiliates to market to you</td>
                        <td><input type="radio" name="forNonaffiliate" value="marketing purposes" id="Yes71" class="triggerOptOut">Yes
<input type="radio" name="forNonaffiliate" value="false" class="No71" onclick="validateOptOut()">No</td>
            <td><div class="limit72"  style="display:none">Yes</div>
<div class="limit73" style="display:none">We don't share.</div>
</td>
          </tr>                        
        </tbody>
      </table>
</div>
</div>
							
	<div id="step-3">
			<h2 class="StepTitle">Step 3 OPT-OUT</h2>
		<div id="noOptOut" >No opt-out here based on the disclosure table.<br>
		 </div>					   
      <table class="table table-bordered" id="optOut" style="display:none">
        <tbody class="left-colored"> 
          <tr>
            <td>To limit our sharing</td>
            <td>
            Please select one or more of the applicable opt-out methods described:<br>
            <input type="checkbox" name="phone" value="1" id="phone"onclick="validate()">Telephone
             <input type="checkbox" name="phone" value="1"id="website" onclick="validate()">Website
             <input type="checkbox" name="phone" value="1" id="mail" onclick="validate()">mail-in opt-out form 
             <br>
             <br>
<div class="phoneNumber" style="display:none">     Call <input type="text" name="phoneNum" placeholder="phone number"  /> - our menu will prompt you through your choices<br></div>
 
 
  
<div class="website" style="display:none"><br>   Visit us online: <input type="text" name="url" placeholder="website"><br></div>
 
   <div class="mail" style="display:none"><br>Do we require customers to provide additional or different information other than name and address, such as a random opt-out number or a truncated account number?<br>
   		<input type="radio" name="account" value="true">Yes
<input type="radio" name="account" value="false" >No	

    <br><br>
    Opt-out mailing address:<br>
    <input type="text" name="address1" placeholder="Address1"> <br>
    <input type="text" name="address2" placeholder="Address2"> <br>
    <input type="text" name="city" placeholder="city"><br> 
    <input type="text" name="state" placeholder="state"> <br>
    <input type="text" name="zip" placeholder="zip"> <br>
   
   	<br>
   	<!--If we do, we must  include in the far left column of the mail-­in form the following statement.  -->
   	<!-- If you have a joint account, your choice(s) will apply to everyone on your account unless you mark below. ô° Apply my choice(s) only to me. -->
   	Do we provide their joint accountholders the choice to opt out for only one accountholder?<br>
   	   		<input type="radio" name="jointAccountHolders" value="true">Yes
<input type="radio" name="jointAccountHolders" value="false" >No	
   	
   
   </div>
   
   
 
  <br>Please note:
  If you are a new customer, we can begin sharing your information <input type="text" name="beginShareDays" placeholder="30 or greater">  days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice. However, you can contact us at any time to limit our sharing.</td>
          </tr>
          
        </tbody>
      </table>  
      <!-- Finish To limit our sharing -->
      <!-- Question Field-->
      <table class="table table-bordered">
      	<tr>
      	<td>Question
<span class="glyphicon glyphicon-question-sign" title="Customer service contact information must be inserted as appropriate. Institutions may elect to provide either a phone number, such as a toll-free number, or a Web address, or both. Institutions may include the words 'toll-free' before the telephone number, as appropriate."></span>
      	</td>
      	<td>Call <input type="text" name="questionPhone" placeholder="phone number"  /> or go to <input type="text" name="questionUrl" placeholder="website"></td>
      	</tr>
      
      </table>
      
        
    </div> <!-- first-footer -->
    
    
   
						
						<div id="step-4">
							<h2 class="StepTitle">Step 4 Who and What</h2>
							    	  <table class="table table-bordered">
        <thead>
          <tr>
            <th>Who we are</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Who is providing this notice?&nbsp;<span class="glyphicon glyphicon-question-sign" title="Please omit it when only one financial institution provides the model form." ></span></td>
            <td><input type="text" name="whoIsProviding" placeholder="insert" class="nameOfInstitution"></td>
          </tr>
        </tbody>
      </table>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>What we do</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>How do we protect my personal information?</td>
            <td>To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings.<br>
            	<br>
            	Please provide additional information pertaining to its safeguards practices following the designated response to this question here 
            	<span class="glyphicon glyphicon-question-sign" title="Such information may include information about the institution's use of cookies or other measures it uses to safeguard personal information. "></span>  <br>
            	
            	<textarea rows="2" cols="50" placeholder="a maximum of 30 additional words" name="Providing"></textarea>
            
            </td>
          </tr>
          <tr>
            <td>How do we collect your personal information?</td>
            <td>We collect your personal information, for example, when you:
            <span class="glyphicon glyphicon-question-sign" title="Please select 5 of the following terms to complete the bulleted list for this question. "></span> <br>
            <table>
            <tr>
            <td><input type="checkbox" name="howCollect" value="open an account">open an account</td>
            <td><input type="checkbox" name="howCollect" value="deposit money">deposit money</td>
            <td><input type="checkbox" name="howCollect" value="pay your bills">pay your bills</td>
            </tr>
             <tr>
            <td><input type="checkbox" name="howCollect" value="apply for a loan">apply for a loan</td>
            <td><input type="checkbox" name="howCollect" value="use your credit or debit card">use your credit or debit card</td>
            <td><input type="checkbox" name="howCollect" value="seek financial or tax advice">seek financial or tax advice</td>
            </tr>
             <tr>
            <td><input type="checkbox" name="howCollect" value="apply for insurance">apply for insurance</td>
            <td><input type="checkbox" name="howCollect" value="pay insurance premiums">pay insurance premiums</td>
            <td><input type="checkbox" name="howCollect" value="file an insurance claim">file an insurance claim</td>
            </tr>
             <tr>
            <td><input type="checkbox" name="howCollect" value="seek advice about your investments">seek advice about your investments</td>
            <td><input type="checkbox" name="howCollect" value="buy securities from us">buy securities from us</td>
            <td><input type="checkbox" name="howCollect" value="sell securities to us">sell securities to us</td>
            </tr>
             <tr>
            <td><input type="checkbox" name="howCollect" value="direct us to buy securities">direct us to buy securities</td>
            <td><input type="checkbox" name="howCollect" value="direct us to sell your securities">direct us to sell your securities</td>
            <td><input type="checkbox" name="howCollect" value="make deposits or withdrawals from your account">make deposits or withdrawals from your account</td>
            </tr>
             <tr>
            <td><input type="checkbox" name="howCollect" value="enter into an investment advisory contract">enter into an investment advisory contract</td>
            <td><input type="checkbox" name="howCollect" value="give us your income information">give us your income information</td>
            <td><input type="checkbox" name="howCollect" value="provide employment information">provide employment information</td>
            </tr>
            <tr>
            <td><input type="checkbox" name="howCollect" value="give us your employment history">give us your employment history</td>
            <td><input type="checkbox" name="howCollect" value="tell us about your investment or retirement portfolio">tell us about your investment or retirement portfolio</td>
            <td><input type="checkbox" name="howCollect" value="tell us about your investment or retirement earnings"> tell us about your investment or retirement earnings</td>
            </tr>
            <tr>
            <td><input type="checkbox" name="howCollect" value="apply for financing">apply for financing</td>
            <td><input type="checkbox" name="howCollect" value="apply for a lease">apply for a lease</td>
            <td><input type="checkbox" name="howCollect" value="provide account information">provide account information</td>
            </tr>

            <tr>
            <td><input type="checkbox" name="howCollect" value="give us your contact information">give us your contact information</td>
            <td><input type="checkbox" name="howCollect" value="pay us by check">pay us by check</td>
            <td><input type="checkbox" name="howCollect" value="give us your wage statements">give us your wage statements</td>
            </tr>
                        <tr>
            <td><input type="checkbox" name="howCollect" value="make a wire transfer">make a wire transfer</td>
            <td><input type="checkbox" name="howCollect" value="tell us who receives the money">tell us who receives the money</td>
            <td><input type="checkbox" name="howCollect" value="tell us where to send the money">tell us where to send the money</td>
            </tr>
                        <tr>
            <td><input type="checkbox" name="howCollect" value="show your government-issued ID">show your government-issued ID</td>
            <td><input type="checkbox" name="howCollect" value="show your driver's license">show your driver's license</td>
            <td><input type="checkbox" name="howCollect" value="order a commodity futures or option trade.">order a commodity futures or option trade.</td>
            </tr>
            </table>
            <br>
            <div id="collect">
            Do we collect personal information from their affiliates and/or credit bureaus?<br>
            <input type="radio" name="collectFromAffiliates" value="true" onclick="hide('#collectFromOtherCompany')">Yes
            <input type="radio" name="collectFromAffiliates" value="false" onclick="show('#collectFromOtherCompany')">No<br>
            </div>
             <div id="collectFromOtherCompany" style="display:none" >
            <br>Do we collect information from other companies?<br>
            <input type="radio" name="collectFromOtherCompany" value="true" >Yes
            <input type="radio" name="collectFromOtherCompany" value="false" >No<br>
           </div>
            
            

             <br><select>
  <option  value="whatHappens">Your choices will apply to everyone on your account.</option>
  <option  value="whatHappens">Your choices will apply to everyone on your account.--unless you tell us otherwise. </option>
</select>
 </td>
          </tr>
          <tr>
            <td>Why can&apos;t I limit all sharing?</td>
            <td>Federal law gives you the right to limit some but not all sharing related to:
            <ul>
 <li> affiliates' everyday business purposes - information about your creditworthiness</li>
  <li>affiliates from using your information to market to you</li>
  <li>nonaffiliates to market to you</li>
  </ul>
  State laws and individual companies may give you more rights to limit sharing. See Other important information section for your rights under state law.</td>
          </tr>
          <tr id="optOutWhatHappens" style="display:none">
            <td>What happens when I limit sharing for an account I hold jointly with someone else?</td>
            <td>
            <select>
  <option  value="whatHappens">We also collect your personal information from others, such as credit bureaus, affiliates, or other companies.</option>
  <option  value="whatHappens">Your choices will apply to you alone unless you tell us otherwise. </option>
</select>
        </td>
          </tr>  
      
                                      
        </tbody>
      </table>

						</div>
						<div id="step-5">
							<h2 class="StepTitle">Step 5 Definition and Other Information</h2>
							    <table class="table table-bordered">
        <thead>
          <tr>
            <th>Definitions</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Affiliates</td>
            <td>
            Do we have affiliates?<br>
             <input type="radio" name="haveAffiliates" value="true" onclick="showHide('#shareWithAffiliates','#shareWithNonaffiliates')">Yes
<input type="radio" name="haveAffiliates" value="false" onclick="showHide('#shareWithNonaffiliates','#shareWithAffiliates')" >No <br><br>
           
           

<div id="shareWithAffiliates" style="display:none" >
			Do we share personal information with affiliates?<br>
				 <input type="radio" name="shareWithAffiliates" value="true" onclick="show('#affiliatesList')">Yes
<input type="radio" name="shareWithAffiliates" value="false"  onclick="hide('#affiliatesList')">No <br><br>
</div>
			

		<div id="affiliatesList" style="display:none" >
		Our affiliates include companies with a <input type="text" name="affiliates1" placeholder="common corporate identity of financial institution"> name; 
		financial companies such as <input type="text" name="affiliates2" placeholder="illustrative list of companies">; 
		nonfinancial companies, such as <input type="text" name="affiliates3" placeholder="illustrative list of companies">;
		 and others, such as <input type="text" name="affiliates4" placeholder="illustrative list">.
		</div>
</td>


            
            
            
          </tr>
          <tr id="shareWithNonaffiliates" style="display:none">
            <td >Nonaffiliates</td>
            
              <td>
             <div  >
            	Do we share with nonaffiliated third parties?<br>
			 <input type="radio" name="shareWithNonaffiliates" value="true"onclick="show('#NonaffiliatesList')" >Yes
<input type="radio" name="shareWithNonaffiliates" value="false" onclick="hide('#NonaffiliatesList')">No <br><br>
</div>

 <div id="NonaffiliatesList" style="display:none" >
 Please input list categories of companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations
 <textarea rows="4" cols="50" name="NonaffiliatesList"></textarea>
 
 </div>
  </td>
            
            
            
                   </tr>
          <tr>
            <td>Joint Marketing</td>
             <td>
                         <div  >
            	Do we engage in joint marketing?<br>
			 <input type="radio" name="jointMarketing" value="true"onclick="show('#jointMarketList')" >Yes
<input type="radio" name="jointMarketing" value="false" onclick="hide('#jointMarketList')">No <br><br>
</div>

 <div id="jointMarketList" style="display:none" >
 Our joint marketing partners include:<span class="glyphicon glyphicon-question-sign" title="Please input list categories of companies such as credit card companies." ></span><br> 
 
 <textarea rows="4" cols="50" name="jointMarketList">
 </textarea>
 </div>
 
 </td>
          </tr>                              
        </tbody>
      </table>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Other important information 
            <span class="glyphicon glyphicon-question-sign" title=" This box is optional.
 Only the following types of information can appear in this box.
(1) State and/or international privacy law information; and/or
(2) Acknowledgment of receipt form.
            " ></span>
            
            
            </th>
          </tr>
        </thead>
        <tbody>
          <tr>

            <td>
             <div   >

 <textarea rows="5" cols="90"  name="otherImportantInformation">

 </textarea>
 </div>
            
            
            </td>

          </tr>
        </tbody>
      </table>
							

						</div>
					</div> <!-- End SmartWizard Content -->

				</td>
			</tr>
		</table>
	</form>

</body>
</html>
