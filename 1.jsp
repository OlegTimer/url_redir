<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
   <head>
      <title>OlegTim1</title>
   </head>
   
   <body>
  <p>  <a href="/">main page</a></p>
       <p>   </p>
      
   <%

String jspPath = session.getServletContext().getRealPath("/");
            String txtFilePath = jspPath+ "6.txt";


 try (BufferedReader reader = new BufferedReader(new FileReader(txtFilePath))) {
        String line = reader.readLine();
 
FileWriter writer = new FileWriter(txtFilePath , false);

      if (line!=null){
writer.write("");
writer.flush();
response.sendRedirect(line);}
else{
writer.write("");
writer.flush();
out.println("not found");
}
            
    } catch (IOException e) {
        e.printStackTrace();
    }


      %>

   
   </body>
</html>
