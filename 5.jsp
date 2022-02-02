<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
   <head>
      <title>OlegTim5</title>
   </head>
   
   <body>



    

      <%
String s =pageContext.getErrorData().getRequestURI();
s=s.substring(1);
s="https://185-220-204-237.cloud-xip.io/"+s;

String jspPath = session.getServletContext().getRealPath("/");
            String txtFilePath = jspPath+ "4.txt";

int v = 0;
String line2="a";
String linepre="a";

 try (BufferedReader reader = new BufferedReader(new FileReader(txtFilePath))) {
        String line = reader.readLine();
        while (line != null&&v<1) {
            if (line.contains(s)) {   
line2= reader.readLine();
v=1;


String txtFilePath2 = jspPath+ "6.txt";
FileWriter writer = new FileWriter(txtFilePath2 , false);
writer.write(linepre);
writer.flush();

            } else {
String txtFilePath2 = jspPath+ "6.txt";
FileWriter writer = new FileWriter(txtFilePath2 , false);
writer.write("");
writer.flush();
        
linepre=line;
  line = reader.readLine();

            }
          
        }
    } catch (IOException e) {
        e.printStackTrace();
    }

      
%>
<meta http-equiv="refresh" content="1; url=/1.jsp">
 
   </body>
</html>
