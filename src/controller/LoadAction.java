package controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

<<<<<<< HEAD
import org.apache.commons.fileupload.servlet.ServletFileUpload;
=======
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.io.FilenameUtils;
>>>>>>> origin/master
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
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
		System.out.println("Load called");

		BufferedReader br;
		String line;
		ServletFileUpload ser = new ServletFileUpload();
		FileItemFactory f = new DiskFileItemFactory();
		try {
<<<<<<< HEAD
			
=======
			List<FileItem> items = new ServletFileUpload(f).parseRequest(request);
	        for (FileItem item : items) {
	            if (item.isFormField()) {
	                // Process regular form field (input type="text|radio|checkbox|etc", select, etc).
	                String fieldName = item.getFieldName();
	                String fieldValue = item.getString();
	                // ... (do your job here)
	            } else {
	                // Process form file field (input type="file").
	                String fieldName = item.getFieldName();
	                String fileName = FilenameUtils.getName(item.getName());
	                InputStream fileContent = item.getInputStream();
	                // ... (do your job here)
	            }
	        }
>>>>>>> origin/master
	        
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
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		


		return "form.jsp";	
	}
}
