<%@page  errorPage="ErroPage.jsp" %>

<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/addPlayer.css">
    
</head>

<body style="background-image: url(images/bc5.jpg); background-repeat: no-repeat ; background-size: 1550px 1350px;"  >
    <form action="passwordEnter.jsp" class="login-form" method="post">
        <h1 id="Login-Label" style="font-family: serif ; font-size: 50px">Fill   Details</h1>
   
      <div class="user-name">
        <input type="text" placeholder="name" name="studentname" id="username" required>
      </div>
      <div class="user-name">
        <input type="number" placeholder="Reg. number" name="idnumber" id="username" required>
      </div>
      <div class="user-name">
        <input type="email"  placeholder="email" name="email" id="username" required>
      </div>
      <br><br>
      <div style="text-align: left ; padding-left: 50px;"> 
          <input type="radio"  style="height: 20px ; width:20px ;" value="m" name="gender">&nbsp;&nbsp;&nbsp;male 
         &nbsp;&nbsp;&nbsp &nbsp;&nbsp;&nbsp<input type="radio" style="height: 20px ; width:20px ;" value="f" name="gender">&nbsp;&nbsp;&nbsp;female
      </div>
      <div class="user-name">
        <input type="text" placeholder="branch" name="branch" id="username" required>
      </div>
      <div class="user-name">
        <input type="number" placeholder="year" name="year" id="username" required>
      </div>
      <div class="user-name">
        <input type="number" placeholder="contact number" name="contactnumber" id="username" required>
      </div>
       <div class="user-name">
        <input type="text" placeholder="Enter name of Sport" name="sportname" id="username" required>
      </div>
      <div style="padding : 40px 10px 0px 55px ; ">
          <textarea class="user-name" maxlength="150" name="address" style="color: green;background-color:#ccccff ; font-size: 20px" >Address</textarea>
      </div>
      <div class="user-name">
        <input type="text" placeholder="City" name="city" id="username" required>
      </div>
      <div class="user-name">
        <input type="text" placeholder="District" name="district" id="username" required>
      </div>
      <div class="user-name">
        <input type="number" placeholder="Pin Code" name="pincode" id="username" required>
      </div>
      <div class="Sign-In">
        <input type="submit" id="button" >
      </div>    
   </form>
</body>


</html>