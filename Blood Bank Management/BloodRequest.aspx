<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BloodRequest.aspx.cs" Inherits="Blood_Bank_Management.BloodRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 193px;
        }
        .auto-style3 {
            width: 524px;
        }
        .auto-style4 {
            width: 193px;
            height: 21px;
        }
        .auto-style5 {
            width: 524px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
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
    <form id="form1" runat="server">
        <p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Blood Type</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="135px">
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Hospital Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="191px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Date</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="191px" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">District</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" Width="191px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Blood Amount (Bag)</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" Width="189px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Request" Width="208px" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </p>
    </form>
         </div>
</body>
</html>
