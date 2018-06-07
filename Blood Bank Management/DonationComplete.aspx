<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonationComplete.aspx.cs" Inherits="Blood_Bank_Management.DonationComplete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donation</title>
    <link rel="stylesheet" type="text/css" href="HomePageStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 146px;
        }
        .auto-style2 {
            font-size: x-large;
            text-decoration: blink;
        }
        .auto-style3 {
            color: #FFFFFF;
            background-color: #66CCFF;
        }
        .auto-style5 {
            font-size: xx-large;
            text-decoration: blink;
        }
        .auto-style6 {
            font-size: xx-large;
            text-decoration: blink;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            background-color: #FFFFFF;
        }
        .auto-style8 {
            background-color: #66CCFF;
        }
        .auto-style9 {
            color: #000000;
            background-color: #66CCFF;
        }
        .auto-style10 {
            width: 100%;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

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
           <table class="auto-style10">
               <tr>
                   <td>
                       <asp:Label ID="Labeluser" runat="server" style="text-align: right"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="User Page" />
                   </td>
               </tr>
         </table>
           <br /><br /><br />
         </div>
     <table class="auto-style1">
         <tr>
             <td style="text-align: center"><span class="auto-style5"><span class="auto-style9"><strong><span class="auto-style7">Donation Complete</span></strong></span></span><strong><br />
                 <br class="auto-style6" />
                 <span class="auto-style8"><span class="auto-style6"><img src="images/dp.jpg" /></span></span><span class="auto-style3"><span class="auto-style2"> </span></span></strong></td>
         </tr>
     </table>
    <div>
    
    </div>
    </form>
</body>
</html>
