<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="Blood_Bank_Management.UserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Info</title>
    <link rel="stylesheet" type="text/css" href="HomePageStyle.css" />
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 185px;
            color: #333333;
            font-size: large;
        }
        .auto-style11 {
            width: 746px;
            text-align: justify;
        }
        .auto-style12 {
            width: 210px;
            text-align: right;
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
    
        <table class="auto-style10">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style12">Name : </td>
                            <td>
                                <asp:Label ID="LabelName" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Email : </td>
                            <td>
                                <asp:Label ID="LabelMail" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">District : </td>
                            <td>
                                <asp:Label ID="LabelDist" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Address :&nbsp; </td>
                            <td>
                                <asp:Label ID="Labeladd" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Phone : </td>
                            <td>
                                <asp:Label ID="Labelphn" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">Date of Birth : </td>
                            <td>
                                <asp:Label ID="Labeldob" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">Donation Information</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="743px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
