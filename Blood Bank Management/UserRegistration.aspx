<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Blood_Bank_Management.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 252px;
            text-align: right;
        }
        .auto-style3 {
            width: 248px;
        }
        .auto-style4 {
            width: 248px;
            text-align: justify;
        }
        .auto-style5 {
            width: 252px;
            text-align: right;
            height: 22px;
        }
        .auto-style6 {
            width: 248px;
            height: 22px;
        }
        .auto-style7 {
            height: 22px;
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
           <br /><br /><br />
         </div>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="text-align: justify">
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPassword" runat="server" CausesValidation="True" TextMode="Password" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxCPassword" runat="server" CausesValidation="True" TextMode="Password" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxCPassword" ErrorMessage="**Password Must be Same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Date of Birth</td>
                <td class="auto-style6">
                    <asp:TextBox ID="DOB" runat="server" Height="28px" TextMode="Date" Width="197px"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style2">District</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="30px">
                        <asp:ListItem>Dhaka</asp:ListItem>
                        <asp:ListItem>Chittagong</asp:ListItem>
                        <asp:ListItem>Sylhet</asp:ListItem>
                        <asp:ListItem>Rajshahi</asp:ListItem>
                        <asp:ListItem>Khulna</asp:ListItem>
                        <asp:ListItem>Barishal</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Phone No</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPhone" runat="server" TextMode="Phone" Width="200px" Height="30px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="ButtonRegister" runat="server"  Text="Register" Width="111px" OnClick="ButtonRegister_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br /><br /><br />
    
    </div>
    </form>
</body>
</html>
