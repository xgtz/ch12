package validate;

import com.opensymphony.xwork2.ActionSupport;

public class RegistRegister1 extends ActionSupport {
	private String userName;
	private String userPassword;
	private int userAge;
	private String userTelephone;
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
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	@Override
	public void validate() {
		if(null==userName || userName.length()<6 || userName.length()>16){
			addFieldError("userName","用户名的长度不符号要求,6~16位!");
		}
		if(userPassword.length()<6 || userPassword.length()>16){
			addFieldError("userPassword","密码长度不符合要求,6~16位!");
		}
		if(userAge<1 || userAge>130){
			addFieldError("userAge","年龄不符合要求,1~130岁！");
		}
		if(userTelephone.length()<8){
			addFieldError("userTelephone","电话号码不符合要求,8位!");
		}
	}
	
	
}
