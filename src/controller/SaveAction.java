package controller;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
@WebServlet("/SaveAction")
public class SaveAction extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static JSONObject obj=new JSONObject();
	private void process(HttpServletRequest request, String name ){
		String prmtr = request.getParameter(name);
		System.out.println("reading Prmtr in prcs: "+prmtr);
		
		obj.put(name, prmtr);
	}
	
	
	@Override

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		

		System.out.println("saveaction called");

			String prmtr = req.getParameter("nameOfInstitution");
			System.out.println("reading Prmtr in prcs: "+prmtr);
			req.setAttribute("nameOfInstitution", prmtr);
			
			URL url = new URL(new String("http://localhost:8080/OakFormGenerator/index.do"));
			URLConnection con = url.openConnection();
			con.setRequestProperty("Cookie", "JSESSIONID="+req.getParameter("sid"));
			System.out.println("reading sessionid: "+req.getParameter("sid"));

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
		
		byte[] buffer = new byte[4096];
		int length;
		while ((length = in.read(buffer)) > 0){
		    out.write(buffer, 0, length);
		}
		in.close();
		out.flush();
		 
//		byte[] outputByte = new byte[8192];
//		//copy binary contect to output stream
//		while(in.read(outputByte, 0, 8192) != -1)
//		{
//			out.write(outputByte, 0, 8192);
//		}
//		in.close();
//		out.flush();
		out.close();
		}


		
	
	
	
	

	public String perform(HttpServletRequest request) {
		process(request, "nameOfInstitution");
		process(request, "nameOfInstitutionA");
		process(request, "nameOfInstitutionA");
		process(request, "nameOfInstitutionA");
		process(request, "nameOfInstitutionA");
		process(request, "nameOfInstitutionA");

		try {
			PrintWriter writer;
			FileWriter fw = new FileWriter("/users/ThomasZhao/Documents/out.JSON");
			fw.write(obj.toJSONString());
			
			System.out.println("jinto");
			fw.close();

			writer = new PrintWriter("save.json", "UTF-8");
			writer.println(obj.toJSONString());
			writer.close();
		} catch (FileNotFoundException | UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        //String prmtr = request.getParameter("nameOfInstitutionA");
		//System.out.println("reading Prmtr: "+prmtr);

		return "readableForm.jsp";	
	}

}
