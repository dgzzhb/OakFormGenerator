package controller;

import javax.servlet.http.HttpServletRequest;

public class DisplayAction extends Action{

	@Override
	public String getName() {
		return "display.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		System.out.println("display called");

		return "displayform.jsp";	
	}

}
