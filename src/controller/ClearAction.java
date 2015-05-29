package controller;

import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


public class ClearAction extends Action{

	@Override
	public String getName() {
		return "clear.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		//return "form.jsp";
		/*
		Set<String> set = new HashSet<String>();
		set.add("income");
		set.add("account balances");
		HttpSession session= request.getSession();
		session.setAttribute("what", set);
		*/
		HttpSession session = request.getSession(false);
		if (session != null) {
		    session.invalidate();
		}
		return "readableForm.jsp";	
	}

}
