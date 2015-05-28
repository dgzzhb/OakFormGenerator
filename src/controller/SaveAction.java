package controller;

import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;

public class SaveAction extends Action{
	private static JSONObject obj=new JSONObject();
	private void process(HttpServletRequest request, String name ){
		String prmtr = request.getParameter(name);
		System.out.println("reading Prmtr in prcs: "+prmtr);
		
		obj.put(name, prmtr);
	}
	@Override
	public String getName() {
		return "save.do";
	}
	
	

	@Override
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
