package formbean;

import java.util.ArrayList;
import java.util.List;

import org.mybeans.form.FormBean;

public class Form extends FormBean {
    // First Page
	//private String String;
	private String date;
    private String nameOfInstitution;
    // Select 5 among the list, indicated by index
    private List<String> what;
    
//    // Yes or No form
//    private String showSixthRow; // The sixth row is optional
//    private String forBusiness;
//    private String forMarketing;
//    private String forJointMarket;
//    private String forAffiliateTransaction;
//    private String forAffiliateCredit;
//    private String forAffiliateMarket; // optional
//    private String forNonaffiliate;
//    // If any of them is yes, provide opt-out
//    private String limitBusiness;
//    private String limitMarketing;
//    private String limitJointMarket;
//    private String limitAffiliateTransaction;
//    private String limitAffiliateCredit;
//    private String limitAffiliateMarket; // optional
//    private String limitNonaffiliate;
    
    // Yes or No form
    private String showSixthRow; // The sixth row is optional
    private String forBusiness;
    private String forMarketing;
    private String forJointMarket;
    private String forAffiliateTransaction;
    private String forAffiliateCredit;
    private String forAffiliateMarket; // optional
    private String forNonaffiliate;
    // If any of them is yes, provide opt-out
    private String limitBusiness;
    private String limitMarketing;
    private String limitJointMarket;
    private String limitAffiliateTransaction;
    private String limitAffiliateCredit;
    private String limitAffiliateMarket; // optional
    private String limitNonaffiliate;
    
    
    
    private String phone;
    private String url;
    private int beginShareDays;
    
    // Second Page
    private String whoIsProviding;
    private String howDoes;
    // Select 5 among the list, indicated by index
    private List<Integer> howCollect;
    private String howDoesOther;
    private String seeBelow;
    private String whatHappens;
    
    private String affiliates;
    private String nonaffiliates;
    private String jointMarket;
    private String others;
    
    // Opt-out, indicated by index 1 = no, 2 = web, 3 = mail
    private int optOut;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getNameOfInstitution() {
		return nameOfInstitution;
	}

	public void setNameOfInstitution(String nameOfInstitution) {
		this.nameOfInstitution = nameOfInstitution;
	}

	public List<String> getWhat() {
		return what;
	}

	public void setWhat(List<String> what) {
		this.what = what;
	}

	public String isShowSixthRow() {
		return showSixthRow;
	}

	public void setShowSixthRow(String showSixthRow) {
		this.showSixthRow = showSixthRow;
	}

	public String isForBusiness() {
		return forBusiness;
	}

	public void setForBusiness(String forBusiness) {
		this.forBusiness = forBusiness;
	}

	public String isForMarketing() {
		return forMarketing;
	}

	public void setForMarketing(String forMarketing) {
		this.forMarketing = forMarketing;
	}

	public String isForJointMarket() {
		return forJointMarket;
	}

	public void setForJointMarket(String forJointMarket) {
		this.forJointMarket = forJointMarket;
	}

	public String isForAffiliateTransaction() {
		return forAffiliateTransaction;
	}

	public void setForAffiliateTransaction(String forAffiliateTransaction) {
		this.forAffiliateTransaction = forAffiliateTransaction;
	}

	public String isForAffiliateCredit() {
		return forAffiliateCredit;
	}

	public void setForAffiliateCredit(String forAffiliateCredit) {
		this.forAffiliateCredit = forAffiliateCredit;
	}

	public String isForAffiliateMarket() {
		return forAffiliateMarket;
	}

	public void setForAffiliateMarket(String forAffiliateMarket) {
		this.forAffiliateMarket = forAffiliateMarket;
	}

	public String isForNonaffiliate() {
		return forNonaffiliate;
	}

	public void setForNonaffiliate(String forNonaffiliate) {
		this.forNonaffiliate = forNonaffiliate;
	}

	public String isLimitBusiness() {
		return limitBusiness;
	}

	public void setLimitBusiness(String limitBusiness) {
		this.limitBusiness = limitBusiness;
	}

	public String isLimitMarketing() {
		return limitMarketing;
	}

	public void setLimitMarketing(String limitMarketing) {
		this.limitMarketing = limitMarketing;
	}

	public String isLimitJointMarket() {
		return limitJointMarket;
	}

	public void setLimitJointMarket(String limitJointMarket) {
		this.limitJointMarket = limitJointMarket;
	}

	public String isLimitAffiliateTransaction() {
		return limitAffiliateTransaction;
	}

	public void setLimitAffiliateTransaction(String limitAffiliateTransaction) {
		this.limitAffiliateTransaction = limitAffiliateTransaction;
	}

	public String isLimitAffiliateCredit() {
		return limitAffiliateCredit;
	}

	public void setLimitAffiliateCredit(String limitAffiliateCredit) {
		this.limitAffiliateCredit = limitAffiliateCredit;
	}

	public String isLimitAffiliateMarket() {
		return limitAffiliateMarket;
	}

	public void setLimitAffiliateMarket(String limitAffiliateMarket) {
		this.limitAffiliateMarket = limitAffiliateMarket;
	}

	public String isLimitNonaffiliate() {
		return limitNonaffiliate;
	}

	public void setLimitNonaffiliate(String limitNonaffiliate) {
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

	public String isHowDoesOther() {
		return howDoesOther;
	}

	public void setHowDoesOther(String howDoesOther) {
		this.howDoesOther = howDoesOther;
	}

	public String getSeeBelow() {
		return seeBelow;
	}

	public void setSeeBelow(String seeBelow) {
		this.seeBelow = seeBelow;
	}

	public String isWhatHappens() {
		return whatHappens;
	}

	public void setWhatHappens(String whatHappens) {
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
        if (optOut == 1 && (limitBusiness.equals("true") || limitMarketing.equals("true") || limitJointMarket.equals("true") 
        		|| limitAffiliateTransaction.equals("true") || limitAffiliateCredit.equals("true") 
        		|| limitAffiliateMarket.equals("true") || limitNonaffiliate.equals("true")) == true)
        	errors.add("You have to provide opt-out due to your limitation selection.");
        
        if (optOut != 1 && (limitBusiness.equals("true") || limitMarketing.equals("true") || limitJointMarket.equals("true") 
        		|| limitAffiliateTransaction.equals("true") || limitAffiliateCredit.equals("true") 
        		|| limitAffiliateMarket.equals("true") || limitNonaffiliate.equals("true")) == false)
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