<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddNewUser.aspx.cs" Inherits="Admin_AddNewUser" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 58px;
        }
        .style12
        {
            width: 327px;
        }
        .style13
        {
            width: 58px;
            height: 132px;
        }
        .style14
        {
            width: 327px;
            height: 132px;
        }
        .style15
        {
            height: 132px;
        }
        .style16
        {
            width: 77px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td class="style14">
                <table bgcolor="#0066FF" style="width:100%;">
                    <tr>
                        <td class="style16">
                            <asp:Label ID="Label10" runat="server" Text="User Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Width="148px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Label ID="Label11" runat="server" Text="PassWord"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Label ID="Label12" runat="server" Text="ReEnterPassWord"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Label ID="Label14" runat="server" Text="UserType"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:Label ID="Label13" runat="server" Text="Description"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="70px" TextMode="MultiLine" 
                                Width="151px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style16">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button14" runat="server" onclick="Button14_Click" 
                                Text="Sumit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button15" runat="server" Text="cancel" />
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style15">
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

