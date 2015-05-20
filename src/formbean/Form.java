package formbean;

import java.util.ArrayList;

import java.util.List;

import org.mybeans.form.FormBean;

public class Form extends FormBean {
    private String url;
    private String comment;
    private String button;
    
    public String getUrl()  {
    	return url; 
    }
    
    public void setUrl(String address)  {
    	url = address; 
    }
    
    public String getComment()  { 
    	return comment;
    }
    
    public void setComment(String comm)  { 
    	comment = comm;
    }
    
    public String getButton()    {
    	return button;
    }
    
    public void setButton(String action)    {
    	button = action;
    }
    
    public boolean isPresent()   {
    	return button != null;
    }

    public List<String> getValidationErrors() {
        List<String> errors = new ArrayList<String>();

        if (url == null || url.length() == 0) 
        	errors.add("URL is required!");
        if (comment == null || comment.length() == 0) 
        	errors.add("Comment is required!");
        if (button == null) 
        	errors.add("Button is required!");

        if (errors.size() > 0) 
        	return errors;

        if (!button.equals("Add Favorite")) 
        	errors.add("Invalid button!");
        if (url.trim().equals("")) 
        	errors.add("Empty URL!");
		
        return errors;
    }

}