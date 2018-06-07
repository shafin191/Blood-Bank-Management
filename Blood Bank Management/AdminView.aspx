<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="Blood_Bank_Management.AdminView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 40px;
        }
        
        .auto-style2 {
            width: 100%;
        }
        
        .auto-style3 {
            width: 121px;
        }
        .auto-style4 {
            width: 121px;
            height: 21px;
        }
        .auto-style5 {
            height: 21px;
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
            <img src="images/bld.jpg" width="942" height="318" border="0" usemap="#Map" />
        </div>
           <br />
         <table class="auto-style1">
             <tr>
                 <td>
                     <asp:Label ID="Label1" runat="server"></asp:Label>
                     <br />
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                     <br />
                     <br />
                     <br />
                     <table class="auto-style2">
                         <tr>
                             <td class="auto-style3">Blood Group</td>
                             <td>
                                 <asp:DropDownList ID="DropDownList1" runat="server">
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
                             <td class="auto-style3">&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style4">Blood Amount</td>
                             <td class="auto-style5">
                                 <asp:DropDownList ID="DropDownList2" runat="server">
                                     <asp:ListItem>1</asp:ListItem>
                                     <asp:ListItem>2</asp:ListItem>
                                     <asp:ListItem>3</asp:ListItem>
                                     <asp:ListItem>4</asp:ListItem>
                                     <asp:ListItem>5</asp:ListItem>
                                     <asp:ListItem>6</asp:ListItem>
                                     <asp:ListItem>7</asp:ListItem>
                                     <asp:ListItem>8</asp:ListItem>
                                     <asp:ListItem>9</asp:ListItem>
                                     <asp:ListItem>10</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="auto-style5"></td>
                         </tr>
                         <tr>
                             <td class="auto-style3">&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">&nbsp;</td>
                             <td>
                                 <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Width="158px" Height="42px" />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="Button3" runat="server" Height="49px" OnClick="Button3_Click" Text="Commit" Width="122px" />
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="auto-style3">&nbsp;</td>
                             <td>
                                 <asp:Label ID="Label2" runat="server"></asp:Label>
                                 <br />
                                 <asp:Label ID="Label3" runat="server"></asp:Label>
                             </td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
                 </td>
             </tr>
         </table>
         <table class="auto-style1">
             <tr>
                 <td style="text-align: center">Pending Request</td>
             </tr>
         </table>
         <br />
         </div>
    
    
      
         <table class="auto-style1">
             <tr>
                 <td>
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BloodReqId" DataSourceID="SqlDataSource1" Width="837px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                         
                         
                         <Columns>
                             <asp:BoundField DataField="BloodReqId" HeaderText="BloodReqId" ReadOnly="True" SortExpression="BloodReqId" />
                             <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                             <asp:BoundField DataField="BloodType" HeaderText="BloodType" SortExpression="BloodType" />
                             <asp:BoundField DataField="HospitalName" HeaderText="HospitalName" SortExpression="HospitalName" />
                             <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                             <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                             <asp:BoundField DataField="Amount" HeaderText="Bag" SortExpression="Amount" />
                            
                             <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                             <asp:ButtonField ButtonType="Button" CommandName="Update" HeaderText="Confirm" ShowHeader="True" Text="Confirm" />
                           
                         </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource1" 
                         runat="server" 
                         ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                         SelectCommand="SELECT BloodRequest.BloodReqId, BloodRequest.CustomerEmail, BloodRequest.BloodType, BloodRequest.HospitalName, BloodRequest.Date, BloodRequest.District, BloodRequest.Amount, RequestCheck.Status FROM BloodRequest INNER JOIN RequestCheck ON BloodRequest.BloodReqId = RequestCheck.Id WHERE (RequestCheck.Status = 'Pending')"
                         UpdateCommand="UPDATE RequestCheck SET Status='Confirm' where ID=@BloodReqId"
                         
                         >

                         <UpdateParameters>
              
                        <asp:Parameter Name="BloodReqId" Type="Int64" />
                    </UpdateParameters>   
                     </asp:SqlDataSource>
                 </td>
             </tr>
         </table>
         <table class="auto-style1">
             <tr>
                 <td>&nbsp;</td>
             </tr>
         </table>
         <table class="auto-style2">
             <tr>
                 <td style="text-align: center">Confirmed Request<br />
                 </td>
             </tr>
         </table>
         <table class="auto-style2">
             <tr>
                 <td>
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BloodReqId" DataSourceID="SqlDataSource2" Width="842px">
                         <Columns>
                             <asp:BoundField DataField="BloodReqId" HeaderText="BloodReqId" ReadOnly="True" SortExpression="BloodReqId" />
                             <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                             <asp:BoundField DataField="BloodType" HeaderText="BloodType" SortExpression="BloodType" />
                             <asp:BoundField DataField="HospitalName" HeaderText="HospitalName" SortExpression="HospitalName" />
                             <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                             <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                             <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                         </Columns>
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT BloodRequest.BloodReqId, BloodRequest.CustomerEmail, BloodRequest.BloodType, BloodRequest.HospitalName, BloodRequest.Date, BloodRequest.District, RequestCheck.Status FROM BloodRequest INNER JOIN RequestCheck ON BloodRequest.BloodReqId = RequestCheck.Id WHERE (RequestCheck.Status = 'Confirm')"></asp:SqlDataSource>
                 </td>
             </tr>
         </table>
     </form>
    
    
      
</body>
</html>
