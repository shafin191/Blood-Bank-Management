<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestResult.aspx.cs" Inherits="Blood_Bank_Management.RequestResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 565px;
        }
        .auto-style12 {
            width: 394px;
            text-align: center;
        }
        .auto-style13 {
            color: #6666FF;
            font-size: large;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            width: 394px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html"/>
    <link rel="stylesheet" type="text/css" href="HomePageStyle.css" />
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
           <br />
         </div>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style12">
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="49px" OnClick="Button1_Click" Text="User Page" Width="145px" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>
                        <asp:Label ID="LabelUserMail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14"><strong>&nbsp;Confirmed Request</strong></span></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:GridView ID="GridView1" runat="server" Width="609px">
                        </asp:GridView>
                        
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style13"><strong style="text-align: center">Pending Request</strong></span></td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:GridView ID="GridView2" runat="server" Width="608px">
                        </asp:GridView>
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
&nbsp;</div>
           <br />
         </div>
    <div>
    
    </div>
    </form>
</body>
</html>
