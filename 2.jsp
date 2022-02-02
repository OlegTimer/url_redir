<%@page import="java.nio.file.Path"%>
<%@page import="java.nio.file.Paths"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.net.*"%>
<%@page contentType="text/html" pageEncoding="Cp1251"%>
<!DOCTYPE html>

<html>
   <head>
      <title>OlegTim2</title>
   </head>
   
   <body>
  <p>  <a href="/">main</a></p>
     
     
            <%
String s= request.getParameter("link");


String jspPath = session.getServletContext().getRealPath("/");
            String txtFilePath = jspPath+ "4.txt";
            
int v = 0;
String line2="a";

 try (BufferedReader reader = new BufferedReader(new FileReader(txtFilePath))) {
        String line = reader.readLine();
        while (line != null&&v<1) {
            if (line.contains(s)) {   
line2= reader.readLine();
v=1;
            } else {
          
  line = reader.readLine();
  line = reader.readLine();
            }
          
        }
    } catch (IOException e) {
        e.printStackTrace();
    }

if (v<1){//gen start
 String txtFilePath7 = jspPath+ "7.txt";
String txtFilePath4 = jspPath+ "4.txt";

 try (BufferedReader reader7 = new BufferedReader(new FileReader(txtFilePath7))) {
String line7 = reader7.readLine();
int number = Integer.parseInt(line7);
number ++;
String s7=Integer.toString(number);

String sp7="https://185-220-204-237.cloud-xip.io/1"+s7;
out.println(sp7);

FileWriter writer7 = new FileWriter(txtFilePath7, false);    
writer7.write(s7);
writer7.flush();

FileWriter writer4 = new FileWriter(txtFilePath4 , true);

writer4.write( System.getProperty("line.separator")+s+ System.getProperty("line.separator"));
writer4.write(sp7);
writer4.flush();

} catch (IOException e) {
        e.printStackTrace();
    }
}//gen end
else{

out.println(line2);
}
  
   %>

 <p>  
<%
if (v<1){out.println("new URL");}
else{out.println("already done");}

v = 0;  
line2="a"; 
%>
</p>
   </body>
</html>
