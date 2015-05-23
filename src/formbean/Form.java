package formbean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mybeans.form.FormBean;

public class Form extends FormBean {
    // First Page
	private Date date;
    private String nameOfInstitution;
    // Select 5 among the list, indicated by index
    private List<Integer> what;
    
    // Yes or No form
    private boolean showSixthRow; // The sixth row is optional
    private boolean forBusiness;
    private boolean forMarketing;
    private boolean forJointMarket;
    private boolean forAffiliateTransaction;
    private boolean forAffiliateCredit;
    private boolean forAffiliateMarket; // optional
    private boolean forNonaffiliate;
    // If any of them is yes, provide opt-out
    private boolean limitBusiness;
    private boolean limitMarketing;
    private boolean limitJointMarket;
    private boolean limitAffiliateTransaction;
    private boolean limitAffiliateCredit;
    private boolean limitAffiliateMarket; // optional
    private boolean limitNonaffiliate;
    
    private String phone;
    private String url;
    private int beginShareDays;
    
    // Second Page
    private String whoIsProviding;
    private String howDoes;
    // Select 5 among the list, indicated by index
    private List<Integer> howCollect;
    private boolean howDoesOther;
    private String seeBelow;
    private boolean whatHappens;
    
    private String affiliates;
    private String nonaffiliates;
    private String jointMarket;
    private String others;
    
    // Opt-out, indicated by index 1 = no, 2 = web, 3 = mail
    private int optOut;

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getNameOfInstitution() {
		return nameOfInstitution;
	}

	public void setNameOfInstitution(String nameOfInstitution) {
		this.nameOfInstitution = nameOfInstitution;
	}

	public List<Integer> getWhat() {
		return what;
	}

	public void setWhat(List<Integer> what) {
		this.what = what;
	}

	public boolean isShowSixthRow() {
		return showSixthRow;
	}

	public void setShowSixthRow(boolean showSixthRow) {
		this.showSixthRow = showSixthRow;
	}

	public boolean isForBusiness() {
		return forBusiness;
	}

	public void setForBusiness(boolean forBusiness) {
		this.forBusiness = forBusiness;
	}

	public boolean isForMarketing() {
		return forMarketing;
	}

	public void setForMarketing(boolean forMarketing) {
		this.forMarketing = forMarketing;
	}

	public boolean isForJointMarket() {
		return forJointMarket;
	}

	public void setForJointMarket(boolean forJointMarket) {
		this.forJointMarket = forJointMarket;
	}

	public boolean isForAffiliateTransaction() {
		return forAffiliateTransaction;
	}

	public void setForAffiliateTransaction(boolean forAffiliateTransaction) {
		this.forAffiliateTransaction = forAffiliateTransaction;
	}

	public boolean isForAffiliateCredit() {
		return forAffiliateCredit;
	}

	public void setForAffiliateCredit(boolean forAffiliateCredit) {
		this.forAffiliateCredit = forAffiliateCredit;
	}

	public boolean isForAffiliateMarket() {
		return forAffiliateMarket;
	}

	public void setForAffiliateMarket(boolean forAffiliateMarket) {
		this.forAffiliateMarket = forAffiliateMarket;
	}

	public boolean isForNonaffiliate() {
		return forNonaffiliate;
	}

	public void setForNonaffiliate(boolean forNonaffiliate) {
		this.forNonaffiliate = forNonaffiliate;
	}

	public boolean isLimitBusiness() {
		return limitBusiness;
	}

	public void setLimitBusiness(boolean limitBusiness) {
		this.limitBusiness = limitBusiness;
	}

	public boolean isLimitMarketing() {
		return limitMarketing;
	}

	public void setLimitMarketing(boolean limitMarketing) {
		this.limitMarketing = limitMarketing;
	}

	public boolean isLimitJointMarket() {
		return limitJointMarket;
	}

	public void setLimitJointMarket(boolean limitJointMarket) {
		this.limitJointMarket = limitJointMarket;
	}

	public boolean isLimitAffiliateTransaction() {
		return limitAffiliateTransaction;
	}

	public void setLimitAffiliateTransaction(boolean limitAffiliateTransaction) {
		this.limitAffiliateTransaction = limitAffiliateTransaction;
	}

	public boolean isLimitAffiliateCredit() {
		return limitAffiliateCredit;
	}

	public void setLimitAffiliateCredit(boolean limitAffiliateCredit) {
		this.limitAffiliateCredit = limitAffiliateCredit;
	}

	public boolean isLimitAffiliateMarket() {
		return limitAffiliateMarket;
	}

	public void setLimitAffiliateMarket(boolean limitAffiliateMarket) {
		this.limitAffiliateMarket = limitAffiliateMarket;
	}

	public boolean isLimitNonaffiliate() {
		return limitNonaffiliate;
	}

	public void setLimitNonaffiliate(boolean limitNonaffiliate) {
		this.limitNonaffiliate = limitNonaffiliate;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getBeginShareDays() {
		return beginShareDays;
	}

	public void setBeginShareDays(int beginShareDays) {
		this.beginShareDays = beginShareDays;
	}

	public String getWhoIsProviding() {
		return whoIsProviding;
	}

	public void setWhoIsProviding(String whoIsProviding) {
		this.whoIsProviding = whoIsProviding;
	}

	public String getHowDoes() {
		return howDoes;
	}

	public void setHowDoes(String howDoes) {
		this.howDoes = howDoes;
	}

	public List<Integer> getHowCollect() {
		return howCollect;
	}

	public void setHowCollect(List<Integer> howCollect) {
		this.howCollect = howCollect;
	}

	public boolean isHowDoesOther() {
		return howDoesOther;
	}

	public void setHowDoesOther(boolean howDoesOther) {
		this.howDoesOther = howDoesOther;
	}

	public String getSeeBelow() {
		return seeBelow;
	}

	public void setSeeBelow(String seeBelow) {
		this.seeBelow = seeBelow;
	}

	public boolean isWhatHappens() {
		return whatHappens;
	}

	public void setWhatHappens(boolean whatHappens) {
		this.whatHappens = whatHappens;
	}

	public String getAffiliates() {
		return affiliates;
	}

	public void setAffiliates(String affiliates) {
		this.affiliates = affiliates;
	}

	public String getNonaffiliates() {
		return nonaffiliates;
	}

	public void setNonaffiliates(String nonaffiliates) {
		this.nonaffiliates = nonaffiliates;
	}

	public String getJointMarket() {
		return jointMarket;
	}

	public void setJointMarket(String jointMarket) {
		this.jointMarket = jointMarket;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public int getOptOut() {
		return optOut;
	}

	public void setOptOut(int optOut) {
		this.optOut = optOut;
	}
	
    public List<String> getValidationErrors() {
        List<String> errors = new ArrayList<String>();

        // What in fact bullet points must be 5 among list
        if (what.size() != 5) 
        	errors.add("Must choose 5 what in fact from list!");
        
        // Disclosure consistency
        if (optOut == 1 && (limitBusiness || limitMarketing || limitJointMarket 
        		|| limitAffiliateTransaction || limitAffiliateCredit 
        		|| limitAffiliateMarket || limitNonaffiliate) == true)
        	errors.add("You have to provide opt-out due to your limitation selection.");
        
        if (optOut != 1 && (limitBusiness || limitMarketing || limitJointMarket 
        		|| limitAffiliateTransaction || limitAffiliateCredit 
        		|| limitAffiliateMarket || limitNonaffiliate) == false)
        	errors.add("There is no need to provide opt-out due to your limitation selection.");
        
        if (phone.matches("^[0-9]{9}$")) 
        	errors.add("Please input the right phone number!");
        
//	Use javascript to check whether form is complete since need to save partial form       
//        if (url == null || url.length() == 0) 
//        	errors.add("URL is required!");
//        if (url.trim().equals("")) 
//        	errors.add("Empty URL!");

        // How to collect must be collect from list
        if (howCollect.size() != 5) 
        	errors.add("Must choose 5 how to collect from list!");
        
        if (optOut < 1 || optOut > 3)
        	errors.add("Please choose the right opt-out option!");
        
        if (errors.size() > 0) 
        	return errors;
		
        return errors;
    }
}