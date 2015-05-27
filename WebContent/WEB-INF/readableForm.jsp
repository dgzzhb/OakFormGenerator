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
</head>
<body>
<form id="myForm" action="save.do">
	<div class="demoHead">
		<div>
			<div style="float: right;" class="demoNavLinks">
				<input class="btn" type="button" onclick="reset()" value="Reset">
				 <a
					href="https://github.com/mstratman/jQuery-Smart-Wizard/blob/master/README.md"
					class="btn">Load</a> 
					<input
					 class="btn" type="submit" value = "Save"/>
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
									<span class="stepDesc"> Step 1<br /> <small>Step
											1 Facts</small>
								</span>
							</a></li>
							<li><a href="#step-2"> <label class="stepNumber">2</label>
									<span class="stepDesc"> Step 2<br /> <small>Step
											2 Reasons</small>
								</span>
							</a></li>
							<li><a href="#step-3"> <label class="stepNumber">3</label>
									<span class="stepDesc"> Step 3<br /> <small>Step
											3 Who and What</small>
								</span>
							</a></li>
							<li><a href="#step-4"> <label class="stepNumber">4</label>
									<span class="stepDesc"> Step 4<br /> <small>Step
											4 Definition and Other Information</small>
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
												<td><input type="checkbox" name="what" value="credit­based insurance scores">credit­based insurance scores</td>
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
												<td><input type="checkbox" name="what" value="medical­related debts">medical­related debts</td>
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
<input type="radio" name="forMarketing" value="false" class="No21">No</td>
            <td><div class="limit22"  style="display:none"><input type="radio" name="limitMarketing" value="true" class="triggerOptOut">Yes
<input type="radio" name="limitMarketing" value="false">No</div>
<div class="limit23" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For joint marketing with other financial companies</td>
                        <td><input type="radio" name="forJointMarket" value="marketing purposes" class="Yes31">Yes
<input type="radio" name="forJointMarket" value="false" class="No31">No</td>
            <td><div class="limit32"  style="display:none"><input type="radio" name="limitJointMarket" value="true" class="triggerOptOut">Yes
<input type="radio" name="limitJointMarket" value="false">No</div>
<div class="limit33" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your transactions and experiences</td>
                        <td><input type="radio" name="forAffiliateTransaction" value="marketing purposes" class="Yes41">Yes
<input type="radio" name="forAffiliateTransaction" value="false" class="No41">No</td>
            <td><div class="limit42"  style="display:none"><input type="radio" name="limitAffiliateTransaction" value="true" class="triggerOptOut">Yes
<input type="radio" name="limitAffiliateTransaction" value="false">No</div>
<div class="limit43" style="display:none">We don't share.</div>
</td>
          </tr>        
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your creditworthiness</td>
                        <td><input type="radio" name="forAffiliateCredit" value="marketing purposes" id="Yes51" class="triggerOptOut">Yes
<input type="radio" name="forAffiliateCredit" value="false" class="No51">No</td>
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
            <td><div class="limit62"  style="display:none"><input type="radio" name="limitAffiliateMarket" value="true" class="triggerOptOut" >Yes
<input type="radio" name="limitAffiliateMarket" value="false">No</div>
<div class="limit63" style="display:none">We don't share.</div>
</td>
          </tr>
          <tr>
            <td>For nonaffiliates to market to you</td>
                        <td><input type="radio" name="forNonaffiliate" value="marketing purposes" id="Yes71" class="triggerOptOut">Yes
<input type="radio" name="forNonaffiliate" value="false" class="No71">No</td>
            <td><div class="limit72"  style="display:none">Yes</div>
<div class="limit73" style="display:none">We don't share.</div>
</td>
          </tr>                        
        </tbody>
      </table>

							
							   
      <table class="table table-bordered">
        <tbody class="left-colored"> 
          <tr>
            <td>To limit our sharing</td>
            <td>
            Please select one or more of the applicable opt­out methods described:<br>
            <input type="checkbox" name="phone" value="1" id="phone"onclick="validate()">Telephone
             <input type="checkbox" name="phone" value="1"id="website" onclick="validate()">Website
             <input type="checkbox" name="phone" value="1">mail-­in opt­-out form 
             <br>
            
<div class="phoneNumber" style="display:none">     Call <input type="text" name="phone" placeholder="phone number"  /> - our menu will prompt you through your choices</div>
 
 
  <br>
<div class="website" style="display:none">   Visit us online: <input type="text" name="url" placeholder="website"></div>
 <br> Talk to a banking center associate
  Talk to your assigned account representative (e.g., financial advisor, mortgage loan officer)
  <br>Please note:
  If you are a new customer, we can begin sharing your information <input type="text" name="beginShareDays" placeholder="30">  days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice. However, you can contact us at any time to limit our sharing.</td>
          </tr>
          <tr>
            <td>Why?</td>
            <td>Call <input type="text" name="phone" placeholder="phone number"> or go to <input type="text" name="url" placeholder="website"></td>
          </tr>           
        </tbody>
      </table>    
    </div> <!-- first-footer -->
						</div>
						<div id="step-3">
							<h2 class="StepTitle">Step 3 Who and What</h2>
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
            <td>To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings. For more information visit bankofamerica.com/security or ml.com/privacy.</td>
          </tr>
          <tr>
            <td>How do we collect my personal information?</td>
            <td>We collect your personal information, for example, when you:
            <ul>
            <li><input type="checkbox" name="howCollect" value="1">open an account or <input type="checkbox" name="howCollect" value="2">perform transactions</li> 
              <li><input type="checkbox" name="howCollect" value="3">apply for a loan or <input type="checkbox" name="howCollect" value="4">use your credit or debit card</li>
  			<li><input type="checkbox" name="howCollect" value="5">seek advice about your investments</li>
            </ul>
 

<input type="radio" name="whatHappens" value="true" >Your choices will apply to everyone on your account.
<br>
<input type="radio" name="whatHappens" value="false">Your choices will apply to everyone on your account.--unless you tell us otherwise.

 </td>
          </tr>
          <tr>
            <td>Why can&apos;t I limit all sharing?</td>
            <td>Federal law gives you the right to limit some but not all sharing related to:
            <ul>
 <li> affiliates' everyday business purposes €information about your creditworthiness</li>
  <li>affiliates from using your information to market to you</li>
  <li>nonaffiliates to market to you</li>
  </ul>
  State laws and individual companies may give you more rights to limit sharing. See Other important information section for your rights under state law.</td>
          </tr>
          <tr>
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
						<div id="step-4">
							<h2 class="StepTitle">Step 4 Definition and Other Information</h2>
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
            <td>Companies related by common ownership or control. They can be Financial and nonfinancial companies.
  Our affiliates include companies that utilize the names Bank of America; Banc of America; U.S. Trust; LandSafe or Merrill Lynch, financial companies such as General Fidelity Life Insurance Company.</td>
          </tr>
          <tr>
            <td>Nonaffiliates</td>
            <td>Companies not related by common ownership or control. They can be Financial and nonfinancial companies.
  Nonaffiliates we share with can include financial services companies such as insurance agencies or mortgage brokers, nonfinancial companies such as retailers, travel companies and membership groups, other companies such as nonprofit groups.</td>
          </tr>
          <tr>
            <td>Joint Marketing</td>
            <td>A formal agreement between nonaffiliated financial companies that together market financial products or services to you.
  Our joint marketing partners include financial service companies.</td>
          </tr>                              
        </tbody>
      </table>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Other important information</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>[insert]</td>
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
