package controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import formbean.Form;

public class LoadAction extends Action{

	@Override
	public String getName() {
		return "load.do";
	}
	
	

	@Override
	public String perform(HttpServletRequest request) {
		BufferedReader br;
		String line;
		try {
			br = new BufferedReader(new FileReader("/users/ThomasZhao/Documents/out.json"));
			line  = br.readLine();
			
			br.close();
			JSONParser parse = new JSONParser();
			JSONObject obj = (JSONObject) parse.parse(line);
			String nameOfInstitutionA = obj.get("nameOfInstitutionA").toString();
			System.out.println("Success");

			System.out.println("nameOfInstitutionA: "+nameOfInstitutionA);
			Form form = new Form();

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		


		return "form.jsp";	
	}
}
