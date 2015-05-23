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
    private boolean forBusiness;
    private boolean forMarketing;
    private boolean forJointMarket;
    private boolean forAffiliateTransaction;
    private boolean forAffiliateCredit;
    private boolean forAffiliateMarket;
    private boolean forNonaffiliate;
    
    private int phone;
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
    
    // Opt-out, indicated by index 1, 2, 3
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

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
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

        if (url == null || url.length() == 0) 
        	errors.add("URL is required!");

        if (errors.size() > 0) 
        	return errors;

        if (url.trim().equals("")) 
        	errors.add("Empty URL!");
		
        return errors;
    }
}