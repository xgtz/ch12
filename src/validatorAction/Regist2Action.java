package validatorAction;

import com.opensymphony.xwork2.ActionSupport;

public class Regist2Action extends ActionSupport {
	private String userName;
	private String userPassword;
	private String ruserPassword;
	private int userAge;
	private String userTelephone;
	private String userEmail;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getRuserPassword() {
		return ruserPassword;
	}
	public void setRuserPassword(String ruserPassword) {
		this.ruserPassword = ruserPassword;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public String getUserTelephone() {
		return userTelephone;
	}
	public void setUserTelephone(String userTelephone) {
		this.userTelephone = userTelephone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	
	
}
