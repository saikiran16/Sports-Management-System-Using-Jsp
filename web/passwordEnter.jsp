<%@page  errorPage="ErroPage.jsp" %>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="css/Csspractice3.css">
</head>
<%
    try{
       String name , email , gender , address , city , district , sport,branch;
        long id , year , contact , pincode ; 
        name = request.getParameter("studentname");
        email = request.getParameter("email");
        gender =request.getParameter("gender");
        address = request.getParameter("address");
        city = request.getParameter("city");
        district = request.getParameter("district");
        branch = request.getParameter("branch");
        sport = request.getParameter("sportname");
        id = Long.parseLong(request.getParameter("idnumber"));
        year = Long.parseLong(request.getParameter("year"));
        contact = Long.parseLong(request.getParameter("contactnumber"));
        pincode = Long.parseLong(request.getParameter("pincode"));
        
           session.setAttribute("Playername" , name);
           session.setAttribute("Playerid" , id);
           session.setAttribute("Playeremail" , email);
           session.setAttribute("Playergender" , gender);
           session.setAttribute("Playeryear" , year);
           session.setAttribute("Playercontact" , contact);
           session.setAttribute("Playeraddress" , address);
           session.setAttribute("Playercity" , city);
           session.setAttribute("Playerdistrict" ,district);
           session.setAttribute("Playersport" , sport);
           session.setAttribute("Playerpincode" , pincode);
           session.setAttribute("Playerbranch" , branch);
    }catch(Exception e){}
       



%>

<body style="background-image: url(images/bc5.jpg); background-repeat: no-repeat ; background-size: 1550px 1350px;">
    <form action="saveAccountDetailsToDatabase" class="login-form" style="background-color: white">
       <div >
           
            
    </div>
      <h1 id="Login-Label">Enter Password</h1>
   
      <div class="user-name">
          <input type="text" placeholder=" <%=request.getParameter("idnumber") %>" name="username" id="username" required readonly style="color:green;background-color: #ccccff">
      </div>
      <div class="pass-word">
        <input type="password"  placeholder="new Password" name="newpassword" id="password" required>
        <br><br><br><br>
        <input type="password"  placeholder="Confirm Password" name="confirmpassword" id="password" required>
        
      </div>
      <div class="Sign-In">
        <input type="submit" id="button" >
      </div>

          
       
   </form>
    <%try{
                session.removeAttribute("message");
        }
        catch(Exception e)
        {}
        %>
</body>
</html>