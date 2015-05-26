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
    <script src="js/bootstrap.min.js"></script>
			<script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
			<script type="text/javascript" src="js/jquery.smartWizard.js"></script>

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
</head>
<body>
<form id="myForm" action="save.do">
	<div class="demoHead">
		<div>
			<div style="float: right;" class="demoNavLinks">
				<input class="btn" type="button" onclick="reset()" value="Reset">
				 <a
					href="https://github.com/mstratman/jQuery-Smart-Wizard/blob/master/README.md"
					class="btn">Load</a> <input
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
											<td>WHAT DOES <input type="text"
												name="nameOfInstitutionA" value="testname"
												placeholder="A NAME OF FINANCIAL INSTITUTION A"> DO WITH
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
												This information can include:
												<ul>
													<li>Social Security number and <input type="checkbox"
														name="what" value="1">employment information</li>
													<li><input type="checkbox" name="what" value="2">account
															balances and <input type="checkbox" name="what" value="3">payment
																history</li>
													<li><input type="checkbox" name="what" value="4">assets
															and <input type="checkbox" name="what" value="5">credit
																scores</li>
												</ul>


											</td>
										</tr>
										<tr>
											<td>How?</td>
											<td>All financial companies need to share
												customers&apos; personal information to run their everyday
												business. In the section below, we list the reasons
												financial companies can share their customers&apos;€ personal information; the reasons <input type="text"
												name="nameOfInstitution"
												placeholder="NAME OF FINANCIAL INSTITUTION"> chooses
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
            <th>Does <input type="text" name="nameOfInstitution" placeholder="NAME OF FINANCIAL INSTITUTION"> share?</th>
            <th>Can you limit this sharing?</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>For our everyday business purposes - such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
            <td><input type="radio" name="forBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
            <td><input type="radio" name="forBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
          </tr>
          <tr>
            <td>For our marketing purposes - with service providers we use to offer our products and services to you</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
          </tr>
          <tr>
            <td>For joint marketing with other financial companies</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
          </tr>
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your transactions and experiences</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
          </tr>        
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your creditworthiness</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
          </tr>
          <tr>
            <td>For our affiliates to market to you <br>   <input type="radio" name="showSixthRow" value="false" >hide</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
          </tr>
          <tr>
            <td>For nonaffiliates to market to you</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
            <td><input type="radio" name="limitBusiness" value="true" >Yes
<input type="radio" name="forBusiness" value="false">No</td>
          </tr>                        
        </tbody>
      </table>

							
							   
      <table class="table table-bordered">
        <tbody class="left-colored"> 
          <tr>
            <td>To limit our sharing</td>
            <td>Call <input type="text" name="phone" placeholder="phone number"> - our menu will prompt you through your choices
  Visit us online: <input type="text" name="url" placeholder="website">
  Talk to a banking center associate
  Talk to your assigned account representative (e.g., financial advisor, mortgage loan officer)
  Please note:
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
            <td>How does <input type="text" name="nameOfInstitution" placeholder="NAME OF FINANCIAL INSTITUTION"> protect my personal information?</td>
            <td>To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings. For more information visit bankofamerica.com/security or ml.com/privacy.</td>
          </tr>
          <tr>
            <td>How does <input type="text" name="nameOfInstitution" placeholder="NAME OF FINANCIAL INSTITUTION"> collect my personal information?</td>
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
