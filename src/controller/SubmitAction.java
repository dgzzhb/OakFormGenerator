package controller;

import java.util.ArrayList;
import java.util.List;

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
	
	
	@Override
	public String getName() {
		return "submit.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		
		System.out.println("submit called");
		process(request, "nameOfInstitution");
		HttpSession session = request.getSession();
		String sid = session.getId();

		System.out.println("reading session id: "+ sid);
		System.out.println("save is"+request.getParameter("save"));


		
		java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(  
			     "yyyy-MM-dd");  
			   java.util.Date currentTime = new java.util.Date();  
			   String time = simpleDateFormat.format(currentTime).toString();  
			   
			   session.setAttribute("time", time);	   
		process(request, "nameOfInstitution");
		processArray(request, "what");
		
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
		process(request, "collectFromAffiliates");
		process(request, "collectFromOtherCompany");
		
		List<String> errors = new ArrayList<String>();
		request.setAttribute("errors", errors);
		
		String[] whats = request.getParameterValues("what");
		if (whats == null || whats.length < 5) {
			errors.add("At least five types of personal information we collect should be selected.");
			return "readableForm.jsp";
		}
		String[] howCollects = request.getParameterValues("howCollect");
		if (howCollects == null || howCollects.length < 5) {
			errors.add("At least five ways we collect your personal information should be selected.");
			return "readableForm.jsp";
		}
		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("Save")){
			return "DownJson?sid="+sid;	
		}
		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("Download")){
			return "SaveAction?sid="+sid;	
		}
		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("Preview")){
			return "display.do";	
		}

		return "index.jsp";	

		}
}
	
	


