<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FlightList.aspx.cs" Inherits="Airline_Reservation_System.FlightList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <link href="Components/Plugins/bootstrap-4.2.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Components/Plugins/jquery-ui-1.12.1/jquery-ui.css" rel="stylesheet" />
    <link href="Components/css/Genral.css" rel="stylesheet" />

    <style>
        .panel-box{
                margin-top: 70px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <div class="navbar">
            <div class="nav-tabs ">
            <a href="Home.aspx">Home</a>
            </div>
            <div class="nav-tabs activetab">
                <a>Flight List</a>
                </div>
            <div class="nav-tabs">
<a>Book Your Flight</a>
                </div>
            <div class="nav-tabs admintabs" >
            <a>Customize Flight</a>
                </div>
            <%--<div class="nav-tabs">
            <a>Booking Status</a>
                </div>
            <div class="nav-tabs">
            <a>About</a>
                </div>--%>
            <div class="nav-tabs">
            <a onclick="Logout()">Logout</a>
                </div>
        </div>
    <div class="panel-box">
        <div class="panel-header">
                    Flight List
                   
                </div>
        </div>
    </div>
    </form>
    <script src="Components/js/General.js"></script>
</body>
</html>
