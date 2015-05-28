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
		
		System.out.println("submit called");
		process(request, "nameOfInstitution");
		HttpSession session = request.getSession();
		String sid = session.getId();

		System.out.println("reading session id: "+ sid);
		System.out.println("save is"+request.getParameter("save"));

		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("DownLoad")){
			return "SaveAction?sid="+sid;	
		}
		if ( request.getParameter("save")!=null&&request.getParameter("save").equals("Save")){
			return "SaveAction?sid="+sid;	
		}
		System.out.println("submit called");
		process(request, "nameOfInstitution");


		return "index.jsp";	

	}
	

}
