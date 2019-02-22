<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>First JSP</title>
</head>
   
<body>
   <% 
        String LastName = request.getParameter("LastName");
        String classe = request.getParameter("classe");
        String Test = request.getParameter("Test");
        if (LastName == "" || classe == ""){

    %>
        <h4> Make sure to insert all the information requested </h4> 
     <% 
        } else {
    
    %>
        <p> Welcome <%= LastName %> </p> <p> of the course <%= classe %> </p>
        
    <% 
    } 
        if(Test.equals("Yes")){
            %>
            <p> Here the tests: </p>
     <%   } else { %>
         <p> You decided to not see the tests </p>
    <% }
     String[] professori = {"Giraldi", "Titze", "Bellocco", "Apicella", "Capozzi", "Spadoni"};
    int contProf = 0;
    for(int i=0; i<6; i++){
        String prof = request.getParameter(professori[i]);
        if(prof != null) {
            out.println();
            out.println(professori[i]); %> <br> <%
        } else {
            contProf++;
        }
    }
    
    if(contProf == 6) {
            out.println("Non si è scelto alcun professore, selezionarne almeno 1");
        }
    %>
   
   
</body>
</html>