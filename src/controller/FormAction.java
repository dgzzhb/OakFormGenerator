package controller;

import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class FormAction extends Action{

	@Override
	public String getName() {
		return "form.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		//return "form.jsp";
		/*
		Set<String> set = new HashSet<String>();
		set.add("forBusiness");
		set.add("account balances");
		HttpSession session= request.getSession();
		session.setAttribute("what", set);
		session.setAttribute("forBusiness", "true");
		*/
	
		
		return "readableForm.jsp";	
	}

}
