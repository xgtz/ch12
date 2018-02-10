<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户注册表单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script>
		function trim(str){
			return str.replace(/^\s*/,"").replace(/\s*$/,"");
		}
		function check(form){
			var errorStr="";
			var userName=trim(form.userName.value);
			var userPassword=trim(form.userPassword.value);
			var userAge=trim(form.userAge.value);
			var userTelephone=trim(form.userTelephone.value);
			var pattern=/^\d{8}$/;
			
			if(userName==null || userName==""){
				errorStr="用户名不能为空!";
			}
			else if(userPassword.length>16 || userPassword.length<6){
				errorStr="密码长度必须在6~16之间";
			}
			else if(userAge>130 || userAge<0){
				errorStr="年龄必须在0~130之间";
			}
			else if(!pattern.test(userTelephone)){
				errorStr="电话号码为8位数字组成!";
			}
			if(""==errorStr)
			{
				return true;
			}
			else{
				alert(errorStr);
				return false;
			}
		}
	</script>
  </head>
  
  <body>
	<center>
		请输入注册信息...
		<hr>
		<s:form action="register.action" method="post" onSubmit="return check(this);">
			<table border="1">
				<tr>
					<td>
						<s:textfield name="userName" label="姓名" size="16"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:password name="userPassword" label="密码" size="18"></s:password>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="userAge" label="年龄" size="16"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="userTelephone" label="电话" size="16"></s:textfield>
					</td>
				</tr>
				<tr>
					<td>
						<s:submit value="提交"></s:submit>
					</td>
				</tr>
			</table>
		</s:form>
	</center>
  </body>
</html>
