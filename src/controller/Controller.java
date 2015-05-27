package controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controller extends HttpServlet{

	/**
	 * version Id
	 */
	private static final long serialVersionUID = 823L;
	
	public void init() throws ServletException {
		Action.add(new IndexAction());
		Action.add(new FormAction());
		Action.add(new SaveAction());
		Action.add(new LoadAction());
		Action.add(new SubmitAction());

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//-------------------------------------
		String      servletPath = req.getServletPath();

        String      action = getActionName(servletPath);
        
       // String attr = (String) req.getAttribute("nameOfInstitutionA");
        String prmtr = req.getParameter("nameOfInstitutionA");
		//System.out.println("reading Attr: "+attr);
		System.out.println("reading Prmtr: "+prmtr);

		System.out.println("reading action: "+action);

		if ( action.equals("save1.do")){
			
			
			System.out.print("haha");
		
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition",
		"attachment;filename=downloadfilename.csv");
		
		StringBuffer sb = new StringBuffer("whatever string you like");
		InputStream in = new ByteArrayInputStream(sb.toString().getBytes("UTF-8"));
		ServletOutputStream out = resp.getOutputStream();
		 
		byte[] outputByte = new byte[4096];
		//copy binary contect to output stream
		while(in.read(outputByte, 0, 4096) != -1)
		{
			out.write(outputByte, 0, 4096);
		}
		in.close();
		out.flush();
		out.close();
		}
		
		//-------------------------------------
		else{
		String nextPage = performTheAction(req);
        sendToNextPage(nextPage,req,resp);
		}
	}
	


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	
	private String performTheAction(HttpServletRequest req) throws IOException, ServletException {
		//HttpSession session     = req.getSession(true);
        String      servletPath = req.getServletPath();

        String      action = getActionName(servletPath);


		return Action.perform(action,req);
	}
	

	private void sendToNextPage(String nextPage, HttpServletRequest req,
			HttpServletResponse resp) throws IOException, ServletException {
		if(nextPage ==  null ) {
			resp.sendError(HttpServletResponse.SC_NOT_FOUND,req.getServletPath());
			return;
		}
		if (nextPage.endsWith(".do")) {
			resp.sendRedirect(nextPage);
			return;
    	}
    	
    	if (nextPage.endsWith(".jsp")) {
	   		RequestDispatcher d = req.getRequestDispatcher("WEB-INF/" + nextPage);
	   		d.forward(req,resp);
	   		return;
    	}
    	else{
    		resp.sendRedirect(resp.encodeRedirectURL( nextPage));
        	return;
    	}
    	
    	//throw new ServletException(Controller.class.getName()+".sendToNextPage(\"" + nextPage + "\"): invalid extension.");
	}
	
	private String getActionName(String path) {
    	// We're guaranteed that the path will start with a slash
        int slash = path.lastIndexOf('/');
        return path.substring(slash+1);
    }
}