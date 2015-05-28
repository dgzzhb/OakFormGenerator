package controller;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
@WebServlet("/DownJson")
public class DownJson extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static JSONObject obj=new JSONObject();
	private void process(HttpServletRequest request, String name ){
		HttpSession session = request.getSession();
		String prmtr = (String) session.getAttribute(name);
		System.out.println("reading Prmtr in prcs: "+prmtr);
		
		obj.put(name, prmtr);
	}
	
	
	@Override

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		

		System.out.println("download action called");
		try {
//			PrintWriter writer;
//			FileWriter fw = new FileWriter("/users/ThomasZhao/Documents/out.JSON");
//			fw.write(obj.toJSONString());
			
//			System.out.println("jinto");
//			fw.close();
//
//			writer = new PrintWriter("save.json", "UTF-8");
//			writer.println(obj.toJSONString());
//			writer.close();
		

//			String prmtr = req.getParameter("nameOfInstitution");
//			System.out.println("reading Prmtr in prcs: "+prmtr);
//			req.setAttribute("nameOfInstitution", prmtr);
//			
//			URL url = new URL(new String("http://localhost:8080/OakFormGenerator/index.do"));
//			URLConnection con = url.openConnection();
//			con.setRequestProperty("Cookie", "JSESSIONID=D73B323172A859679A29208CB03BA0AB");
//			
//			BufferedReader bf = new BufferedReader(new InputStreamReader(con.getInputStream()));
//
//			String inputLine;
//			String html = "";
//
//			while ((inputLine = bf.readLine()) != null){ 
//			   html += inputLine + "\n";}
//			bf.close();
//			System.out.println("reading html: "+html);
//
//			
//			//String[] prmtr = req.getParameterValues("limitBusiness");
//	        
//			//System.out.println("reading Attr: "+attr);
//			//System.out.println("reading Prmtr: "+prmtr[0]);
//		        
//				//System.out.println("reading Attr: "+attr);
//				//System.out.println("reading Prmtr: "+prmtr[1]);
//			
//			System.out.print("haha");
			//===========================
			process(req, "nameOfInstitution");
			
			//modify here=====================
			String prmtr = req.getParameter("nameOfInstitution");
//			System.out.println("reading Prmtr in prcs: "+prmtr);
			System.out.println("reading Prmtr in prcs: "+prmtr);
			PrintWriter writer;
			FileWriter fw = new FileWriter("out.json");
			fw.write(obj.toJSONString());
			
			System.out.println("jinto");
			fw.close();
		resp.setContentType("fileType");
		resp.setHeader("Content-Disposition",
		"attachment;filename=youname.json");
		String test = new String ( "test");
//		StringBuffer sb = new StringBuffer(test);
//		InputStream in = new ByteArrayInputStream(sb.toString().getBytes("UTF-8"));
//		ServletOutputStream out = resp.getOutputStream();
//		 
//		byte[] outputByte = new byte[4096];
//		//copy binary contect to output stream
//		while(in.read(outputByte, 0, 4096) != -1)
//		{
//			out.write(outputByte, 0, 4096);
//		}
//		in.close();
//		out.flush();
//		out.close();
		OutputStream out = resp.getOutputStream();
		FileInputStream in = new FileInputStream(new File("out.json"));
		byte[] buffer = new byte[4096];
		int length;
		while ((length = in.read(buffer)) > 0){
		    out.write(buffer, 0, length);
		}
		in.close();
		out.flush();
		

	} catch (FileNotFoundException | UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
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
