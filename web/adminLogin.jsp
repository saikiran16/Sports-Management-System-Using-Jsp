<%@page  errorPage="ErroPage.jsp" %>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="css/Csspractice3.css">
</head>

<body>
    <form action="check" method = "post" class="login-form">'
       <div class="conformation-message">
           
            <%
                try{
                    if(session.getAttribute("message")!= null)
                    out.println(session.getAttribute("message"));
                }
                catch(Exception e)
                {
                    
                } 
            
             %>
    </div>
      <h1 id="Login-Label">Admin Login</h1>
   
      <div class="user-name">
        <input type="text" placeholder="name" name="username" id="username" required>
      </div>
      <div class="pass-word">
        <input type="password"  placeholder="Password" name="password" id="password" required>
        
      </div>
      <div class="Sign-In">
        <input type="submit" id="button" >
      </div>
      <div class="forgot"><br>
          
          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;<a href="forgotpassword.jsp">Forgot Password ?   Then contact Admin</a>
      </div>
      <div class="Sign-Up">
          Don't have an account  <a href="http://localhost:8080/WebApplication2/index.html">Sign Up</a>
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