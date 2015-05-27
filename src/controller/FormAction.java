package controller;

import javax.servlet.http.HttpServletRequest;

public class FormAction extends Action{

	@Override
	public String getName() {
		return "form.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		//return "form.jsp";
		return "readableForm.jsp";	
	}

}
