<%@page  errorPage="ErroPage.jsp" %>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="css/addPlayer.css">
    
</head>

<body>
    <form action="Search_Player_From_Database" class="login-form" method = "post">
      <h1 id="Login-Label">Enter Details To Search Player</h1>
   
      <div class="user-name">
        <input type="text" placeholder="name" name="nme" id="username" required>
      </div>
      <br><br>
      <div class="user-name">
        <input type="number" placeholder="Reg. number" name="number" id="username" required>
      </div>
      <br><br>
      <div class="user-name">
        <input type="text" placeholder="Enter name of Sport" name="sport" id="username" required>
      </div>
      <br><br>
      
      
       
      <div class="Sign-In">
        <input type="submit" id="button" >
      </div>
      
      
      
    
   </form>


    

</body>


</html>