package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SubmitAction extends Action{
	private void process(HttpServletRequest request, String name ){
		HttpSession session = request.getSession();
		System.out.println("reading session id: "+ session.getId());

		String prmtr = request.getParameter(name);
		System.out.println("reading Prmtr in prcs: "+prmtr);
		session.setAttribute(name, prmtr);
	}
	@Override
	public String getName() {
		return "submit.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		
		process(request, "nameOfInstitution");


		return "index.jsp";	

	}
	

}
