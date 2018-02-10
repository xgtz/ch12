<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<center>
		请输入注册信息...
		<hr>
		<s:form action="register1.action" method="post">
			<table border=1>
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
