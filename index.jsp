<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page contentType="text/html" pageEncoding="Cp1251"%>
<!DOCTYPE html>

<html>
   <head>
      <title>OlegTim</title>
   </head>
   
   <body>

<p> OlegTim</p>
<p> Enter URL to shorten </p>
<p> Введите URL, чтобы сократить её</p>

 <form action = "2.jsp" method = "GET">
         URL: <input type = "text" name = "link">
     
         <input type = "submit" value = "Submit" />
      </form>

   </body>
</html>
