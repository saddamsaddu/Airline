<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Airline_Reservation_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Components/Plugins/bootstrap-4.2.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Components/Plugins/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" />
    <link href="Components/css/Genral.css" rel="stylesheet" />
    <link href="Components/css/Login.css" rel="stylesheet" />
    
  
</head>
<body>
    <form id="form1" runat="server">
        <header>
            Airline Reservation System
        </header>
    <div>
        <div class="col-sm-12" style="margin-top: 80px;    margin-left: 20px;">
    <div class="col-sm-8"></div>
            <div class="panel-box col-sm-offset-8 col-sm-4">
                <div class="panel-header">
                    User Login
                   
                </div>
            
                <div class="form-group">
                    <label for="lbluserid" runat="server" class="control-label">Username</label>
                    <asp:TextBox runat="server" class="form-control"  ID="txtuserid" ></asp:TextBox>
                    
                </div>
                    <div class="form-group">
                    <label for="lblpwd" runat="server" class="control-label">Password</label>
                    <asp:TextBox runat="server" class="form-control" TextMode="Password"  ID="txtpassword" ></asp:TextBox>
                    
                </div>
                  <div class="form-group">
                    <label for="lblerror" runat="server" class="control-label" style="color:red"></label>
                    
                    
                </div>
                <div class="form-group btns">

                   <asp:Button ID="btnSignup" runat="server" class="btn btn-primary" Text="Sign Up" OnClick="btnSignup_Click1" />
                    <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary submitbtn" Text="Log In" OnClick="btnSubmit_Click" />
                </div>
                   
            </div>
            </div>
    </div>
    </form>
<script type="text/javascript">
    function RedirectToHome(loginid,usertype,title,name,gender,mail)
    {
        sessionStorage.setItem("LoginId", loginid);
        sessionStorage.setItem("UserType", usertype);
        sessionStorage.setItem("Title", title);
        sessionStorage.setItem("Name", name);
        sessionStorage.setItem("Gender", gender);
        sessionStorage.setItem("Mail", mail);

        //window.location.href = "Login.aspx";
    }
</script>
</body>

    <script src="Components/Plugins/jquery-ui-1.12.1/jquery-ui.js"></script>
<script src="Components/Plugins/bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>
</html>
