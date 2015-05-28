package controller;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

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

        

		System.out.println("reading action: "+action);

		if ( action.equals("savehtml.do")){
			
			String prmtr = req.getParameter("nameOfInstitution");
			System.out.println("reading Prmtr in prcs: "+prmtr);
			req.setAttribute("nameOfInstitution", prmtr);
			
			URL url = new URL(new String("http://localhost:8080/OakFormGenerator/index.do"));
			URLConnection con = url.openConnection();
			con.setRequestProperty("Cookie", "JSESSIONID=D73B323172A859679A29208CB03BA0AB");
			
			BufferedReader bf = new BufferedReader(new InputStreamReader(con.getInputStream()));

			String inputLine;
			String html = "";

			while ((inputLine = bf.readLine()) != null){ 
			   html += inputLine + "\n";}
			bf.close();
			System.out.println("reading html: "+html);

			
			//String[] prmtr = req.getParameterValues("limitBusiness");
	        
			//System.out.println("reading Attr: "+attr);
			//System.out.println("reading Prmtr: "+prmtr[0]);
		        
				//System.out.println("reading Attr: "+attr);
				//System.out.println("reading Prmtr: "+prmtr[1]);
			
			System.out.print("haha");
		
		resp.setContentType("application/octet-stream");
		resp.setHeader("Content-Disposition",
		"attachment;filename=downloadfilename.html");
		
		StringBuffer sb = new StringBuffer(html);
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