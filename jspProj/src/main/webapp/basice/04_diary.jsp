<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   Calendar today = Calendar.getInstance();

   today.set(Calendar.DATE, 1);
   int first = today.get(Calendar.DAY_OF_WEEK);
   int year = today.get(Calendar.YEAR);
   int month = today.get(Calendar.MONTH)+1;
   int last = today.getActualMaximum(Calendar.DATE);
   System.out.println(first +", "+last);

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div>div{
   width:210px;
   /* overflow:hidden; 이걸로 float:left풀어줘도 되구 */
}
div>div:after{
  content:'';
  display:block;
  clear:both;
}

div>div>div{
   text-align:center;
   line-height:30px;
   width : 30px;
   height: 30px;
   border: 1px solid #000;
   float:left;
   box-sizing : border-box;
}

</style>
</head>
<body>
<h1>04_diary.jsp</h1>

<div>
   <div><img src="../fff/1.png" alt=""/></div>
   <div><%=year+"年 " + month+"月" %></div>
   <div>
      <%for(char dd : "일월화수목금토".toCharArray()){ %>
         <div><%= dd %></div>
      
      <% } for(int i = 1; i<first; i++){%>
         <div></div>
         
      <% }for(int i = 1; i<=last; i++){%>
         <div><%= i %></div>
      <% } %>
   </div>
</div>

</body>
</html>