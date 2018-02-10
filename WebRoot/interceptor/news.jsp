<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>评论</title>
    
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
	请发表你的评论!
	<hr/>
	<s:form action="public" method="post">
		<s:textfield name="title" label="评论标题" maxlength="36"></s:textfield>
		<s:textarea name="content" cols="36" rows="6" label="评论内容"></s:textarea>
		<s:submit value="提交"></s:submit>
	</s:form>
  </body>
</html>
