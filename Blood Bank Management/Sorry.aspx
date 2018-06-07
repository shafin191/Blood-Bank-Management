<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sorry.aspx.cs" Inherits="Blood_Bank_Management.Sorry" %>

<!DOCTYPE html>

<html>
<head>
    <title>Blood Bank System</title>
    <meta http-equiv="Content-Type" content="text/html">
    <link rel="stylesheet" type="text/css" href="HomePageStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: justify;
        }
        .auto-style3 {
            text-align: center;
            width: 799px;
        }
        .auto-style4 {
            text-align: center;
            width: 799px;
            font-size: xx-large;
            color: #0033CC;
        }
    </style>
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
                    <li><a href="Request_Board.aspx">Request Board</a></li>
                    <li><a href="Login.aspx">Login</a></li>
                </ul>
            </div>
            <img src="images/bld.jpg" width="942" height="318" border="0" usemap="#Map" />
        
      
        </div>
</div>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Dear Donor You are AWESOME. BUT YOU NEED REST TOO. It hasn&#39;t been 120 days since your last donation.</strong></td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><img src="images/tp.jpg" width="560" height="397" border="0" />&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
