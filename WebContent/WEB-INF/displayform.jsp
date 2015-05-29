<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>index</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href="css/demo_style.css" rel="stylesheet" type="text/css">
	<!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Link customized CSS -->
  <link rel="stylesheet" href="css/style.css">
<link href="css/smart_wizard_vertical.css" rel="stylesheet"
			type="text/css">
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/jquery.smartWizard.js"></script>
 			
   <script src="js/bootstrap.min.js"></script>
  <script>
function goBack() {
    window.history.back();
}
</script>

 
  <style>
			@media print {
			#non-print {
			display: none 
			}}</style>	
			
			
</head>
<body>

<div class="demoHead" id = "non-print" >
		<div>
			<div style="float: right;" class="demoNavLinks">
					
 					<a href="submit.do?save=downhtml" class="btn">DownLoad</a> 
					 <a type = "button" class = "btn" name = "anything" onClick="javascript:window.print();return true" >Print</a>
					 <a class="btn" type="button" href="form.do" >Back</a>
					 
			</div>
			<div style="clear: both;"></div>
		</div>


	</div>
	
	
	
	
  <div class="container" id="main-container">
    <p>Rev.${time }</p>
    
    <div class="container" id="facts">
      <table class="table table-bordered">
        <tbody class="left-colored">
          <tr>
            <td>FACTS</td>
            <td>WHAT DOES ${nameOfInstitution} DO WITH YOUR PERSONAL INFORMATION?</td>
          </tr>
          <tr>
            <td>Why?</td>
            <td>Financial companies choose how they share your personal information. Under federal law, that means personally identifiable information. Federal law gives consumers the right to limit some but not all sharing. Federal law also requires us to tell you how we collect, share, and protect your personal information. Please read this notice carefully to understand what we do.</td>
          </tr>
          <tr>
            <td>What?</td>
            <td>The types of personal information we collect and share depend on the product or service you have with us.
  This information can include:<br>
  <ul>
	  <li>Social Security number.</li>
	  <c:forEach var = "w" items = "${what}">
			<li>${w}</li>
		</c:forEach>
  </ul>
  </td>
          </tr>
          <tr>
            <td>How?</td>
            <td>All financial companies need to share customers’ personal information to run their everyday business. In the section below, we list the reasons financial companies can share their customers’ personal information; the reasons ${nameOfInstitution} chooses to share; and whether you can limit this sharing.</td>
          </tr>                
        </tbody>
      </table>    
    </div> <!-- facts -->
    <div class="container" id="yes-no">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Reasons we can share your personal information</th>
            <th>Does ${nameOfInstitution} share?</th>
            <th>Can you limit this sharing?</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>For our everyday business purposes - such as to process your transactions, maintain your account(s), respond to court orders and legal investigations, or report to credit bureaus</td>
            
            <c:choose>
				<c:when test="${forBusiness == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forBusiness == false}">
            		<td>No</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            	
            </c:choose>
             <c:choose>
				<c:when test="${forBusiness == true}">
            		<td>No</td>
            	</c:when>
            	<c:when test="${forBusiness == false}">
            		<td>We don't share.</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
          </tr>
          <tr>
            <td>For our marketing purposes - with service providers we use to offer our products and services to you</td>
           <c:choose>
				<c:when test="${forMarketing == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forMarketing == false}">
            		<td>No</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
            <c:choose>
				<c:when test="${forMarketing == true}">
            		<c:choose>
						<c:when test="${limitMarketing == true}">
		            		<td>Yes</td>
		            	</c:when>
		            	<c:when test="${limitMarketing == false}">
		            		<td>No</td>
		            	</c:when>
		            </c:choose>
            	</c:when>
            	<c:when test="${forMarketing == false}">
            		<td>We don't share.</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
          </tr>
          <tr>
            <td>For joint marketing with other financial companies</td>
            <c:choose>
				<c:when test="${forJointMarket == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forJointMarket == false}">
            		<td>No</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
            <c:choose>
				<c:when test="${forJointMarket == true}">
            		<c:choose>
						<c:when test="${limitJointMarket == true}">
		            		<td>Yes</td>
		            	</c:when>
		            	<c:when test="${limitJointMarket == false}">
		            		<td>No</td>
		            	</c:when>
		            </c:choose>
            	</c:when>
            	<c:when test="${forJointMarket == false}">
            		<td>We don't share.</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
          </tr>
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your transactions and experiences</td>
            <c:choose>
				<c:when test="${forAffiliateTransaction == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forAffiliateTransaction == false}">
            		<td>No</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
             <c:choose>
				<c:when test="${forAffiliateTransaction == true}">
            		<c:choose>
						<c:when test="${limitAffiliateTransaction == true}">
		            		<td>Yes</td>
		            	</c:when>
		            	<c:when test="${limitAffiliateTransaction == false}">
		            		<td>No</td>
		            	</c:when>
		            </c:choose>
            	</c:when>
            	<c:when test="${forAffiliateTransaction == false}">
            		<td>We don't share.</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
          </tr>        
          <tr>
            <td>For our affiliates' everyday business purposes - Information about your creditworthiness</td>
            <c:choose>
				<c:when test="${forAffiliateCredit == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forAffiliateCredit == false}">
            		<td>No</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
            <c:choose>
				<c:when test="${forAffiliateCredit == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forAffiliateCredit == false}">
            		<td>We don't share.</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
          </tr>
          <tr>
            <td>For our affiliates to market to you</td>
             <c:choose>
				<c:when test="${showSixthRow == true}">
            		<c:choose>
						<c:when test="${forAffiliateMarket == true}">
		            		<td>Yes</td>
		            	</c:when>
		            	<c:when test="${forAffiliateMarket == false}">
		            		<td>No</td>
		            	</c:when>
		            </c:choose>
            	</c:when>
            	<c:when test="${showSixthRow == false}">
            		<td></td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
            
            <c:choose>
				<c:when test="${showSixthRow == true}">
            		<c:choose>
						<c:when test="${forAffiliateMarket == true}">
		            		<c:choose>
								<c:when test="${limitAffiliateMarket == true}">
				            		<td>Yes</td>
				            	</c:when>
				            	<c:when test="${limitAffiliateMarket == false}">
				            		<td>No</td>
				            	</c:when>
				            </c:choose>
		            	</c:when>
		            	<c:when test="${forAffiliateMarket == false}">
		            		<td>We don't share.</td>
		            	</c:when>
		            </c:choose>
		        </c:when>
		        <c:when test="${showSixthRow == false}">
            		<td></td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
			</c:choose>
          </tr>
          <tr>
            <td>For nonaffiliates to market to you</td>
            <c:choose>
				<c:when test="${forNonaffiliate == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forNonaffiliate == false}">
            		<td>No</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
            <c:choose>
				<c:when test="${forNonaffiliate == true}">
            		<td>Yes</td>
            	</c:when>
            	<c:when test="${forNonaffiliate == false}">
            		<td>We don't share.</td>
            	</c:when>
            	<c:otherwise><td></td></c:otherwise>
            </c:choose>
          </tr>                        
        </tbody>
      </table>
    </div> <!-- yes-no -->
    
    
    <div class="container" id="facts">
 		<c:choose>
 		
          <c:when test="${noOpt == true}"> 	
			  <table class="table table-bordered">
				<tbody class="left-colored">
				<tr>
					<td>Questions?</td>
					<td>Call ${phoneNum} or go to ${url}</td>
				 </tr>
					</tbody>
			  </table>
							
			</c:when>
			<c:otherwise>	
			  
					<div class="container" id="facts">
					  <table class="table table-bordered">
						<tbody class="left-colored">
						<tr>
							<td>To limit our sharing</td>
							<td>
							<c:choose>
							<c:when test="${ phone[0] == true}">Call ${questionPhone} - our menu will prompt you through your choices
							</c:when>
							</c:choose>
							
							<c:choose>
							<c:when test="${phone[1] == true}">
							  Visit us online: ${questionUrl}
							</c:when>
							</c:choose>
							  Talk to a banking center associate
							  Talk to your assigned account representative (e.g., financial advisor, mortgage loan officer)
							  Please note:
							  If you are a new customer, we can begin sharing your information 45 days from the date we sent this notice. When you are no longer our customer, we continue to share your information as described in this notice. However, you can contact us at any time to limit our sharing.</td>
					  </tr>
					  <tr>
						<td>Questions?</td>
						<td>
						Call ${phoneNum} or go to ${url}.
							</tbody>
					  </table>			 
					</div> 
					<c:choose>
			      		<c:when test="${phone[2] == true}">
			      		  <div class="container" id="second-page">
							<hr style="border:1px dotted #036" />
							  <table class="table table-bordered">
								<thead>
								  <tr>
									<th colspan = "4">Mail-in Form</th>
									<th></th>
								  </tr>
								</thead>
								<tbody>
								 <tr>
							   
										<td  rowspan = "6">
									Leave Blank Or [If your have a joint account, 
									your choice{s} will apply to everyone on your accoutn unless
									 you mark below.]
									 <label><input name="ApplyChoice" type="radio" value="" />
										Apply my choices only to me.
									 </label> 
									 </td>
									 
									 <td colspan="3">
										Mark any/or you want to limit:<br>
										<label><input name="limit" type="checkbox" value="" />
										Do not share information about my creditworthiness with my 
										affiliates for their everyday business purposes.
										</label> 
										
										<label>
										<input name="limit" type="checkbox" value="" />
										Do not allow your affiliates to use my personal information to market to me.
										</label> 
										
										<label>
										<input name="limit" type="checkbox" value="" />
										Do not share my personal information with nonaffiliates to market their products and service to me.
										</label> 
									 </td>
									 
									</tr>
									
									<tr>
									<td bgcolor="yellow" width="90"><b>Name</b></td>
									<td></td>
									<td rowspan = "5">
									Mail to:<br>
									
									${nameOfInstitution}<br>
									${address1}<br>
									${address2}<br>
									${city}${state}<br>${zip}<br>
									</td>
									</tr>
								   
								   
									<tr>
									<td bgcolor="yellow" rowspan = "3">
									<b>Address</b><br>
									<b>City, State, Zip</b></td>
									<td></td>
									</tr>
									
									<tr>
									<td></td>
									</tr>
									
									<tr>
									<td></td>
									</tr>
									
									<tr>
									<td bgcolor="yellow">
									<b>Account</b><br>
									</td>
									<td></td>
									</tr>
									</tbody>
							  </table>
							</div>
				  		</c:when>
				</c:choose>	
			</c:otherwise>
		</c:choose>			
	</div>  
    
    
    <!-- first-footer -->
    <div class="container" id="second-page">
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
            <td>${whoIsProviding}</td>
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
            <td>How does ${nameOfInstitution} protect my personal information?</td>
            <td>To protect your personal information from unauthorized access and use, we use security measures that comply with federal law. These measures include computer safeguards and secured files and buildings. 
            ${Providing }</td>
          </tr>
          <tr>
            <td>How does ${nameOfInstitution} collect my personal information?</td>
            <td>We collect your personal information, for example, when you:
            <ul>
				  <c:forEach var = "w" items = "${howCollect}">
						<li>${w}</li>
					</c:forEach>
			  </ul>
			  
			  <c:choose>
			      		<c:when test="${whatHappens == true}">
			      		We also collect your personal information from others, 
			      		such as credit bureaus, affiliates.
			      		</c:when>
			   </c:choose>
			    <c:choose>
			      		<c:when test="${whatHappensCompany == true}">
			      		We also collectcollect information from other companies.
			      		</c:when>
			   </c:choose>
  			</td>
          </tr>
          <tr>
            <td>Why can’t I limit all sharing?</td>
            <td>Federal law gives you the right to limit some but not all sharing related to:
  affiliates' everyday business purposes—information about your creditworthiness
  affiliates from using your information to market to you
  nonaffiliates to market to you
  State laws and individual ${nameOfInstitution} companies may give you more rights to limit sharing. See Other important information section for your rights under state law.</td>
          </tr>
          <tr>
            <td>What happens when I limit sharing for an account I hold jointly with someone else?</td>
            <td>Your choices will apply to you alone unless you tell us otherwise. However, your choice to limit sharing with nonaffiliates to market to you for credit card accounts or Sponsored Accounts will apply to all joint account holders.
  If you have more than one credit card account or Sponsored Account and you choose to opt out, you will need to do so for each account.</td>
          </tr>                               
        </tbody>
      </table>
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
  Our affiliates include companies that utilize the names ${nameOfInstitution}; Banc of America; U.S. Trust; LandSafe or Merrill Lynch, financial companies such as General Fidelity Life Insurance Company.
          <c:choose>
          <c:when test="${haveAffiliates == true}">
	          <c:choose>
	          <c:when test="${shareWithAffiliates == true}">
	          Our affiliates include companies with a ${affiliates1} name; 
		financial companies such as ${affiliates2}; 
		nonfinancial companies, such as ${affiliates3};
		 and others, such as ${affiliates4}.
	          </c:when>
	          </c:choose>
          </c:when>
          </c:choose>
          </td>
          </tr>
          <tr>
            <td>Nonaffiliates</td>
            <td>Companies not related by common ownership or control. They can be Financial and nonfinancial companies.
  Nonaffiliates we share with can include financial services companies such as insurance agencies or mortgage brokers, nonfinancial companies such as retailers, travel companies and membership groups, other companies such as nonprofit groups.
	          <c:choose>
	          <c:when test="${account == true}">
	             Companies include:
 					${ NonaffiliatesList}.
	          </c:when>
	          </c:choose>
	         
          </td>
          </tr>
          <tr>
            <td>Joint Marketing</td>
            <td>A formal agreement between nonaffiliated financial companies that together market financial products or services to you.
  Our joint marketing partners include financial service companies.
  		
	          <c:choose>
	          <c:when test="${jointMarketing == true}">
	             Companies include:
						${jointMarketList}.
	          </c:when>
	          </c:choose>
	       </td>   
          </tr>                              
        </tbody>
      </table>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Ohter important information</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>${otherImportantInformation }</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div> <!-- main-container -->
</body>
</html>