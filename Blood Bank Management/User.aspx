<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Blood_Bank_Management.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 134px;
        }
        .auto-style2 {
            width: 829px;
            height: 21px;
            text-align: center;
        }
        .auto-style3 {
            width: 829px;
            height: 37px;
            text-align: right;
        }
        .auto-style4 {
            height: 37px;
            text-align: right;
        }
        .auto-style5 {
            width: 829px;
            height: 12px;
            text-align: center;
        }
        .auto-style6 {
            height: 12px;
            text-align: right;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            width: 829px;
            text-align: center;
        }
        .auto-style9 {
            text-align: right;
            height: 21px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html"/>
    <link rel="stylesheet" type="text/css" href="HomePageStyle.css" />
</head>
<body>

     <div id="wrapper">
        <div id="header">
            <a href="index.html" class="logo"><img src="images/logo.jpg" width="109" height="109" /></a>
            <div id="menu">
                <ul>
                    <li><a href="HomePage.html">Home page</a></li>
                    <li><a href="UserRegistration.aspx">Registration</a></li>
                    <li><a href=".html">About Us</a></li>
                    <li><a href="index2.html">Our project</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                </ul>
            </div>
            <img src="images/bld.jpg" width="942" height="318" border="0" usemap="#Map" />
        </div>
           <br />
         </div>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome </td>
                <td class="auto-style4">
    
                    <asp:Label ID="LabeluserMail" runat="server"></asp:Label>
    
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="ButtonBloodReq" runat="server" OnClick="ButtonBloodReq_Click" Text="Request Blood" Height="70px" Width="150px" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="ButtonLogout" runat="server" OnClick="ButtonLogout_Click" Text="Logout" Height="61px" Width="125px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="ButtonBloodDonation" runat="server" Height="70px" OnClick="ButtonBloodDonation_Click" Text="Donate" Width="150px" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" />
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Height="70px" OnClick="Button1_Click" Text="Request Result" Width="150px" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" />
                </td>
                <td class="auto-style9">
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" Height="70px" OnClick="Button2_Click" Text="User Info" Width="150px" />
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
     <p>
         &nbsp;</p>
</body>
</html>
