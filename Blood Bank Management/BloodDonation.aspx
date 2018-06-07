<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodDonation.aspx.cs" Inherits="Blood_Bank_Management.BloodDonation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blood Donation</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: justify;
        }
        .auto-style3 {
            text-align: justify;
            width: 212px;
        }
        .auto-style4 {
            text-align: justify;
            width: 395px;
        }
        .auto-style5 {
            text-align: justify;
            width: 212px;
            height: 48px;
        }
        .auto-style6 {
            text-align: justify;
            width: 395px;
            height: 48px;
        }
        .auto-style7 {
            text-align: justify;
            height: 48px;
        }
        .auto-style8 {
            text-align: justify;
            width: 212px;
            height: 42px;
        }
        .auto-style9 {
            text-align: justify;
            width: 395px;
            height: 42px;
        }
        .auto-style10 {
            text-align: justify;
            height: 42px;
        }
    </style>
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
        </div>
    <form id="form1" runat="server">
     
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Blood Group</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="120px">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">District</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Width="191px"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Donation Date</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="187px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Donate" Width="152px" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
     
    </form>
</body>
</html>
