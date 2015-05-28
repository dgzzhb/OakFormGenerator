package controller;

import javax.servlet.http.HttpServletRequest;

public class IndexAction extends Action{

	@Override
	public String getName() {
		return "index.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		System.out.println("index called");

		return "index.jsp";	
	}

}
