package controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.genericdao.RollbackException;

public class SubmitAction extends Action{
	private void process(HttpServletRequest request, String name ){
		System.out.println("processing  "+ name);

		HttpSession session = request.getSession();

		String prmtr = request.getParameter(name);
		System.out.println("reading Prmtr in prcs: "+prmtr);
		session.setAttribute(name, prmtr);
		System.out.println("Success");
	}
	
	private void processArray(HttpServletRequest request, String name ){
		System.out.println("processing  "+ name);

		HttpSession session = request.getSession();
		System.out.println("reading session id: "+ session.getId());

		String[] prmtr = request.getParameterValues(name);
		System.out.println("reading Prmtr in prcs: "+prmtr);
		session.setAttribute(name, prmtr);
		System.out.println("Success");

	}
	
	private void processArrayH(HttpServletRequest request, String name ){
		System.out.println("processing  "+ name);

		HttpSession session = request.getSession();
		System.out.println("reading session id: "+ session.getId());

		String[] prmtr = request.getParameterValues(name);
		if(prmtr!=null){
		Set set = new HashSet<String>();
		for ( int i = 0 ; i < prmtr.length ; i++){
			set.add(prmtr[i]);
		}
		System.out.println("reading Prmtr in prcs: "+prmtr);
		session.setAttribute(name+"H", set);
		System.out.println("Success");
		}

	}
	
	
	@Override
	public String getName() {
		return "submit.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		
		System.out.println("submit called");
//		process(request, "nameOfInstitution");
		HttpSession session = request.getSession();
		String sid = session.getId();

		System.out.println("reading session id: "+ sid);
		System.out.println("save is"+request.getParameter("save"));
		
		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("downhtml")){
			return "SaveAction?sid="+sid;	
		}
		


		
		java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
			     "yyyy-MM-dd");  
			   java.util.Date currentTime = new java.util.Date();  
			   String time = simpleDateFormat.format(currentTime).toString();  
			   
			   session.setAttribute("time", time);	   
		process(request, "nameOfInstitution");
		processArray(request, "what");
		processArrayH(request, "what");

		process(request, "forBusiness");
		process(request, "forMarketing");
		process(request, "limitMarketing");
		process(request, "forJointMarket");
		process(request, "limitJointMarket");
		process(request, "forAffiliateTransaction");
		process(request, "limitAffiliateTransaction");
		process(request, "forAffiliateCredit");
		process(request, "showSixthRow");
		process(request, "forAffiliateMarket");
		process(request, "limitAffiliateMarket");
		process(request, "forNonaffiliate");
		
		
		String[] prmtr = request.getParameterValues("phone");
		String noOpt = "false";
		String[] phoneNum = {"false", "false", "false"};
		if(prmtr == null) {
			noOpt = "true";
			
		} else {
			
			for(int i = 0; i < prmtr.length; i++) {
				phoneNum[Integer.parseInt(prmtr[i])] = "true";
			}
			
		}
		
		session.setAttribute("phone", phoneNum);
		Set phoneset = new HashSet<String>();
		for ( int i = 0 ; i < phoneNum.length ; i++){
			phoneset.add(phoneNum[i]);
		}
		System.out.println("reading Prmtr in prcs: "+prmtr);
		session.setAttribute("phoneH", phoneset);
		
		session.setAttribute("noOpt", noOpt);
		
		process(request, "questionPhone");
		process(request, "phoneNum");
		
		process(request, "questionUrl");
		process(request, "url");
		
		process(request, "address1");
		process(request, "address2");
		process(request, "city");
		process(request, "state");
		process(request, "zip");
		
		
		process(request, "haveAffiliates");
		process(request, "shareWithAffiliates");
		process(request, "whoIsProviding");
		process(request, "affiliates1");
		process(request, "affiliates2");
		process(request, "affiliates3");
		process(request, "affiliates4");
		process(request, "account");
		process(request, "jointMarketing");
		process(request, "NonaffiliatesList");
		process(request, "jointMarketList");
		process(request, "otherImportantInformation");
		process(request, "Providing");
		processArray(request, "howCollect");
		processArrayH(request, "howCollect");

		process(request, "collectFromAffiliates");
		process(request, "collectFromOtherCompany");
		
		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("Save")){
			return "DownJson?sid="+sid;	
		}
		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("Preview")){
			return "display.do";	
		}
		
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);
		
		String nameOfInstitution = request.getParameter("nameOfInstitution");
		if (nameOfInstitution == "") {
			errors.add("Name of institution is required.");
			return "readableForm.jsp";
		}
		
		String questionPhone = request.getParameter("questionPhone");
		if (questionPhone == "") {
			errors.add("Phone number is required.");
			return "readableForm.jsp";
		}
		
		String questionUrl = request.getParameter("questionUrl");
		if (questionUrl == "") {
			errors.add("Website is required.");
			return "readableForm.jsp";
		}
		
		String[] whats = request.getParameterValues("what");
		if (whats == null || whats.length != 5) {
			errors.add("Five types of personal information we collect should be selected.");
			return "readableForm.jsp";
		}
		String[] howCollects = request.getParameterValues("howCollect");
		if (howCollects == null || howCollects.length != 5) {
			errors.add("Five ways we collect your personal information should be selected.");
			return "readableForm.jsp";
		}
		
		String phoneNumber = request.getParameter("questionPhone");
		if (!phoneNumber.matches("^[0-9]{9}$")) {
			errors.add("Please enter a valid phone number");
			return "readableForm.jsp";
		}
		
		if (request.getParameter("forBusiness") == null 
				|| request.getParameter("forMarketing") == null 
				|| request.getParameter("forJointMarket") == null 
				|| request.getParameter("forAffiliateTransaction") == null 
				|| request.getParameter("forAffiliateCredit") == null 
				|| request.getParameter("forNonaffiliate") == null) {
			errors.add("Please provide all reasons that personal information can be shared.");
			return "readableForm.jsp";
		}


		return "index.jsp";	

		}
}
	
	


