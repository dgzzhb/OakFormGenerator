package controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
  
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import formbean.Form;
  
@WebServlet("/UploadServlet")
@MultipartConfig(fileSizeThreshold=1024*1024*10,    // 10 MB 
                 maxFileSize=1024*1024*50,          // 50 MB
                 maxRequestSize=1024*1024*100)      // 100 MB
public class UploadServlet extends HttpServlet {
  
    private static final long serialVersionUID = 205242440643911308L;
     
    /**
     * Directory where uploaded files will be saved, its relative to
     * the web application directory.
     */
    private static final String UPLOAD_DIR = "uploads";
    
    private void process(JSONObject obj,HttpSession session, String name){
    	if (obj.get(name)!=null){
    		String prmtr = obj.get(name).toString();
    	
		System.out.println(name+" is: "+prmtr);
		session.setAttribute(name, prmtr);
    	}
    	
    }
    private void processArray(JSONObject obj,HttpSession session, String name){
    	if (obj.get(name)!=null){
    		JSONArray array = (JSONArray) obj.get(name);
    	
		Iterator<String> iterator = array.iterator();
		Set set = new HashSet<String>() ;
		while (iterator.hasNext()) {
		set.add(iterator.next());
		}
		session.setAttribute(name+"H", set);
    	}
    }
      
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets absolute path of the web application
        String applicationPath = request.getServletContext().getRealPath("");
        // constructs path of the directory to save uploaded file
        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;
          
        // creates the save directory if it does not exists
        File fileSaveDir = new File(uploadFilePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        System.out.println("Upload File Directory="+fileSaveDir.getAbsolutePath());
         
        String fileName = null;
        //Get all the parts from request and write it to the file on server
        for (Part part : request.getParts()) {
            fileName = getFileName(part);
            part.getInputStream();
            InputStream fileContent = part.getInputStream();
		    BufferedReader br = new BufferedReader(new InputStreamReader(fileContent));
			//br = new BufferedReader(new FileReader("/users/ThomasZhao/Documents/out.json"));
			String line  = br.readLine();
			
			br.close();
			JSONParser parse = new JSONParser();
			
				JSONObject obj;
				try {
					obj = (JSONObject) parse.parse(line);
				
			
			
			HttpSession session = request.getSession();
			//modify here===================================
			process(obj, session, "nameOfInstitution");
			processArray(obj, session, "what");
			
			process(obj, session, "nameOfInstitution");
			processArray(obj, session, "what");
			
			process(obj, session, "forBusiness");
			process(obj, session, "forMarketing");
			process(obj, session, "limitMarketing");
			process(obj, session, "forJointMarket");
			process(obj, session, "limitJointMarket");
			process(obj, session, "forAffiliateTransaction");
			process(obj, session, "limitAffiliateTransaction");
			process(obj, session, "forAffiliateCredit");
			process(obj, session, "showSixthRow");
			process(obj, session, "forAffiliateMarket");
			process(obj, session, "limitAffiliateMarket");
			process(obj, session, "forNonaffiliate");
			
			process(obj, session, "questionPhone");
			process(obj, session, "phoneNum");
			
			process(obj, session, "questionUrl");
			process(obj, session, "url");
			
			process(obj, session, "address1");
			process(obj, session, "address2");
			process(obj, session, "city");
			process(obj, session, "state");
			process(obj, session, "zip");
			
			
			process(obj, session, "haveAffiliates");
			process(obj, session, "shareWithAffiliates");
			process(obj, session, "whoIsProviding");
			process(obj, session, "affiliates1");
			process(obj, session, "affiliates2");
			process(obj, session, "affiliates3");
			process(obj, session, "affiliates4");
			process(obj, session, "account");
			process(obj, session, "jointMarketing");
			process(obj, session, "NonaffiliatesList");
			process(obj, session, "jointMarketList");
			process(obj, session, "otherImportantInformation");
			process(obj, session, "Providing");
			processArray(obj, session, "howCollect");
			process(obj, session, "collectFromAffiliates");
			process(obj, session, "collectFromOtherCompany");
			
			process(obj, session, "time");
			process(obj, session, "phone");
			process(obj, session, "noOpt");

//			String nameOfInstitution = obj.get("nameOfInstitution").toString();
//			
//
//			System.out.println("nameOfInstitution: "+nameOfInstitution);
//			session.setAttribute("nameOfInstitution", nameOfInstitution);
//			session.setAttribute("nameOfInstitution", nameOfInstitution);

			
			//===============================================
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			Form form = new Form();
            part.write(uploadFilePath + File.separator + fileName);
        }
        
        request.setAttribute("message", fileName + " File uploaded successfully!");
        getServletContext().getRequestDispatcher("/form.do").forward(
                request, response);
    }
  
    /**
     * Utility method to get file name from HTTP header content-disposition
     */
    private String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        System.out.println("content-disposition header= "+contentDisp);
        String[] tokens = contentDisp.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length()-1);
            }
        }
        return "";
    }
}