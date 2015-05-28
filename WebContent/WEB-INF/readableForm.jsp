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
			
   
			<script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
			<script type="text/javascript" src="js/jquery.smartWizard.js"></script>
			 <script src="js/bootstrap.min.js"></script>
			 <script type="text/javascript" src="js/jiali.js"></script>
			

			<script type="text/javascript">
			function reset() {
			    document.getElementById("myForm").reset();
			}
			
			$('#name').bind('input', function() {
			      $(".nameOfInstitution").val($("#name").val());
			});
			
				$(document).ready(function() {
					// Smart Wizard	
					$('#wizard').smartWizard({
						transitionEffect : 'slide'
					});

				});
			</script>
			
		<style>
			@media print {
			#non-print {
			display: none 
			}}</style>	
  
  
</head>
<body>


<form action="UploadServlet" method="post" enctype="multipart/form-data">
<input type="file" name="fileName">
<input type="submit" value="Upload">
</form>
<!-- <form action="upload" method="post" enctype="multipart/form-data">
    <input type="text" name="description" />
    <input type="file" name="file" />
    <input type="submit" />
</form> -->
<form id="myForm" action="save.do" method="POST">
	<div class="demoHead">
		<div>
			<div style="float: right;" class="demoNavLinks">
					
 					<input class="btn" type="submit" value = "Save"/>
 					
 					<button id="opener1">open the dialog</button>
<div id="dialog1" title="Dialog Title">I'm a dialog</div>
 
<script>
$( "#dialog1" ).dialog({ autoOpen: false });
$( "#opener1" ).click(function() {
  $( "#dialog1" ).dialog( "open" );
});
</script>


 
					 <a href="save.do" class="btn">DownLoad</a> 
					 <a type = "button" class = "btn" id = "non-print" name = "anything" onClick="javascript:window.print();return true" >Print</a>
					 <a class="btn" type="button" onclick="reset();" >Reset</a>
					 
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
									<span class="stepDesc"> Facts<br /> <small>say something</small>
								</span>
							</a></li>
							<li><a href="#step-2"> <label class="stepNumber">2</label>
									<span class="stepDesc"> Step 2<br /> <small>Step
											2 Reasons</small>
								</span>
							</a></li>
							<li><a href="#step-3"> <label class="stepNumber">3</label>
									<span class="stepDesc"> Opt-Out<br /> <small>Step
											3 Opt-Out options</small>
								</span>
							</a></li>
							<li><a href="#step-4"> <label class="stepNumber">4</label>
									<span class="stepDesc"> Step 4<br /> <small>Step
											4 Who and What</small>
								</span>
							</a></li>
							<li><a href="#step-5"> <label class="stepNumber">5</label>
									<span class="stepDesc"> Step 5<br /> <small>Step
											5 Definition and Other Information</small>
								</span>
							</a></li>
						</ul>
						<div id="step-1">
							<h2 class="StepTitle">Step 1 FACTS</h2>
							
								<table class="table table-bordered" >
									<tbody class="left-colored">
										<tr>
											<td>FACTS</td>
											<td>WHAT DOES <input type="text" id ="name"
												name="nameOfInstitution" class="nameOfInstitution"
												placeholder="NAME OF FINANCIAL INSTITUTION"> DO WITH
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
											<td>What?</td>
											<td>The types of personal information we collect and
												share depend on the product or service you have with us.
												This information can include (Please select 5):<br>
												<table>
												<tr>
												<td>Social Security number</td>
												<td><input type="checkbox" name="what" value="income">income</td>
												<td><input type="checkbox" name="what" value="account balances">account balances</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="payment history">payment history</td>
												<td><input type="checkbox" name="what" value="transaction history">transaction history</td>
												<td><input type="checkbox" name="what" value="transaction or loss history">transaction or loss history</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="credit history">credit history</td>
												<td><input type="checkbox" name="what" value="credit scores">credit scores</td>
												<td><input type="checkbox" name="what" value="assets">assets</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="investment experience">investment experience</td>

												<td><input type="checkbox" name="what" value="credit-­based insurance scores">credit-based insurance scores</td>
												<td><input type="checkbox" name="what" value="insurance claim history">insurance claim history</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="medical information">medical information</td>
												<td><input type="checkbox" name="what" value="overdraft history">overdraft history</td>
												<td><input type="checkbox" name="what" value="purchase history">purchase history</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="account transactions">account transactions</td>
												<td><input type="checkbox" name="what" value="risk tolerance">risk tolerance</td>
												<td><input type="checkbox" name="what" value="medical-­related debts">medical-related debts</td>
												</tr>
												<tr>
												<td><input type="checkbox" name="what" value="redit card or other debt">credit card or other debt</td>
												<td><input type="checkbox" name="what" value="mortgage rates and payments">mortgage rates and payments</td>
												<td><input type="checkbox" name="what" value="retirement assets">retirement assets</td>
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
							<h2 class="StepTitle">Step 2 REASONS</h2>
							   <div  >
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Reasons we can share your personal information</th>
            <th>Do we share?</th>
            <th>Can you limit this sharing?</th>
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
            <td><input type="radio" name="forMarketing" value="marketing purposes" class="Yes21">Yes
<input type="radio" name="forMarketing" value="false" class="No21" id="noShareMarketing" onclick="validateOptOut()">No</td>
            <td><div class="limit22"  style="display:none"><input type="radio" name="limitMarketing" value="true" id="limitShare2" onclick="validateOptOut()">Yes
<input type="radio" name="limitMarketing" value="false" onclick="validateOptOut()">No</div>
</td>
          </tr>
          <tr>
            <td>For joint marketing with other financial companies</td>
                        <td><input type="radio" name="forJointMarket" value="marketing purposes" class="Yes31">Yes
<input type="radio" name="forJointMarket" value="false"  id="noShareJointMarketing" class="No31" onclick="validateOptOut()">No</td>
            <td><div class="limit32"  style="display:none"><input type="radio" name="limitJointMarket" value="true" class="triggerOptOut"  id="limitShare3" onclick="validateOptOut()">Yes

<input type="radio" name="limitJointMarket" value="false" onclick="validateOptOut()">No</div>

<div class="limit33" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your transactions and experiences</td>
                        <td><input type="radio" name="forAffiliateTransaction" value="marketing purposes" class="Yes41">Yes
<input type="radio" name="forAffiliateTransaction" value="false" class="No41">No</td>

 <td><div class="limit42"  style="display:none"><input type="radio" name="limitAffiliateTransaction" value="true" class="triggerOptOut"  id="limitShare4" onclick="validateOptOut()">Yes
 <input type="radio" name="limitAffiliateTransaction" value="false"  onclick="validateOptOut()">No</div>

<div class="limit43" style="display:none">We don't share.</div>
</td>
          </tr>        
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your creditworthiness</td>
                        <td><input type="radio" name="forAffiliateCredit" value="marketing purposes" id="Yes51" class="triggerOptOut">Yes
<input type="radio" name="forAffiliateCredit" value="false" id="No51" onclick="validateOptOut()">No</td>
            <td><div class="limit52"  style="display:none">Yes</div>
<div class="limit53" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For our affiliates to market to you <br>   <input type="radio" name="showSixthRow" value="false" class="hide61" >hide
            <input type="radio" name="showSixthRow" value="false"class="show61" >show
            </td>
                        <td><div class="share62"  style="display:none"><input type="radio" name="forAffiliateMarket" value="marketing purposes" class="Yes61">Yes
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
		<div id="noOptOut" >No opt-out here based on the disclosure table.
		 </div>					   
      <table class="table table-bordered" id="optOut" style="display:none">
        <tbody class="left-colored"> 
          <tr>
            <td>To limit our sharing</td>
            <td>
            Please select one or more of the applicable opt­-out methods described:<br>
            <input type="checkbox" name="phone" value="1" id="phone"onclick="validate()">Telephone
             <input type="checkbox" name="phone" value="1"id="website" onclick="validate()">Website
             <input type="checkbox" name="mail" value="1" id="mail" onclick="validate()">mail-­in opt-out form 
             <br>
             <br>
<div class="phoneNumber" style="display:none">     Call <input type="text" name="phone" placeholder="phone number"  /> - our menu will prompt you through your choices<br></div>
 
 
  
<div class="website" style="display:none"><br>   Visit us online: <input type="text" name="url" placeholder="website"><br></div>
 
   <div class="mail" style="display:none"><br>Do we require customers to provide additional or different information other than name and address, such as a random opt-out number or a truncated account number?<br>
   		<input type="radio" name="account" value="marketing purposes">Yes
<input type="radio" name="account" value="false" >No	

    <br><br>
    Opt-out mailing address:<br>
    <input type="text" name="address1" placeholder="Address1"> <br>
    <input type="text" name="address2" placeholder="Address2"> <br>
    <input type="text" name="city" placeholder="city"><br> 
    <input type="text" name="street" placeholder="street"> <br>
    <input type="text" name="zip" placeholder="zip"> <br>
   
   	<br>
   	<!--If we do, we must  include in the far left column of the mail-­in form the following statement.  -->
   	<!-- If you have a joint account, your choice(s) will apply to everyone on your account unless you mark below. ô° Apply my choice(s) only to me. -->
   	Do we provide their joint accountholders the choice to opt out for only one accountholder?<br>
   	   		<input type="radio" name="jointAccountHolders" value="marketing purposes">Yes
<input type="radio" name="jointAccountHolders" value="false" >No	
   	
   
   </div>
   
   
 
  <br>Please note:
  If you are a new customer, we can begin sharing your information <input type="text" name="beginShareDays" placeholder="30 or greater">  days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice. However, you can contact us at any time to limit our sharing.</td>
          </tr>
          
        </tbody>
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
            <td>Who is providing this notice?</td>
            <td><input type="text" name="whoIsProviding" placeholder="insert"></td>
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
            	Please provide additional information pertaining to its safeguards practices following the designated response to this question here <span class="glyphicon glyphicon-question-sign" title="Such information may include information about the institution's use of cookies or other measures it uses to safeguard personal information. "></span>  <br>
            	
            	<textarea rows="2" cols="50" placeholder="a maximum of 30 additional words"></textarea>
            
            </td>
          </tr>
          <tr>
            <td>How do we collect your personal information?</td>
            <td>We collect your personal information, for example, when you:<br>
            (Please select 5 of the following terms to complete the bulleted list for this question:)<br>
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
            </table>
            <br>
            <div id="collect">
            Do we collect personal information from their affiliates and/or credit bureaus?<br>
            <input type="radio" name="whatHappens" value="true" onclick="hide('#collectFromOtherCompany')">Yes
            <input type="radio" name="whatHappens" value="true" onclick="show('#collectFromOtherCompany')">No<br>
            </div>
             <div id="collectFromOtherCompany" style="display:none" >
            <br>Do we collect information from other companies?<br>
            <input type="radio" name="whatHappens" value="true" >Yes<input type="radio" name="whatHappens" value="true" >No<br>
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
          <tr class="optOut">
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
             <input type="radio" name="account" value="Affiliate" onclick="showHide('#shareWithAffiliates','#shareWithNonaffiliates')">Yes
<input type="radio" name="account" value="NoAffiliate" onclick="showHide('#shareWithNonaffiliates','#shareWithAffiliates')" >No <br><br>
           
           

<div id="shareWithAffiliates" style="display:none" >
			Do we share personal information with affiliates?<br>
				 <input type="radio" name="account" value="Affiliate" onclick="show('#affiliatesList')">Yes
<input type="radio" name="account" value="NoAffiliate"  onclick="hide('#affiliatesList')">No <br><br>
</div>
			

		<div id="affiliatesList" style="display:none" >
		Our affiliates include companies with a <input type="text" name="whoIsProviding" placeholder="common corporate identity of financial institution"> name; 
		financial companies such as <input type="text" name="whoIsProviding" placeholder="illustrative list of companies">; 
		nonfinancial companies, such as <input type="text" name="whoIsProviding" placeholder="illustrative list of companies">;
		 and others, such as <input type="text" name="whoIsProviding" placeholder="illustrative list">.
		</div>
</td>


            
            
            
          </tr>
          <tr id="shareWithNonaffiliates" style="display:none">
            <td >Nonaffiliates</td>
            
              <td>
             <div  >
            	Do we share with nonaffiliated third parties?<br>
			 <input type="radio" name="account" value="Affiliate"onclick="show('#NonaffiliatesList')" >Yes
<input type="radio" name="account" value="NoAffiliate" onclick="hide('#NonaffiliatesList')">No <br><br>
</div>

 <div id="NonaffiliatesList" style="display:none" >
 <textarea rows="4" cols="50">
Please input list categories of companies such as mortgage companies, insurance companies, direct marketing companies, and nonprofit organizations
</textarea>
 
 </div>
  </td>
            
            
            
                   </tr>
          <tr>
            <td>Joint Marketing</td>
             <td>
                         <div  >
            	Do we engage in joint marketing?<br>
			 <input type="radio" name="account" value="Affiliate"onclick="show('#jointMarketList')" >Yes
<input type="radio" name="account" value="NoAffiliate" onclick="hide('#jointMarketList')">No <br><br>
</div>

 <div id="jointMarketList" style="display:none" >
 Our joint marketing partners include:<br>
 <textarea rows="4" cols="50">
 Please input list categories of companies such as credit card companies.</textarea>
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

 <textarea rows="5" cols="90" >

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
