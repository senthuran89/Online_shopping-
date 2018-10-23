<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="OrderStatus.aspx.cs" Inherits="Customer_OrderStatus" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/Customer/Customermaster.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        height: 138px;
    }
    .style12
    {
        height: 138px;
        width: 130px;
    }
    .style13
    {
        width: 130px;
    }
    .style14
    {
        height: 138px;
        width: 285px;
    }
    .style16
    {
        height: 109px;
        width: 14px;
    }
    .style17
    {
        width: 14px;
    }
    .style18
    {
        width: 285px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:124%;" bgcolor="#FFFFCC" frame="box">
    <tr>
        <td colspan="3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                Text="Customer Check OrderStatus"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style12">
        </td>
        <td align="left" class="style14" valign="top">
            <br />
&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Customer Track ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="82px" ValidationGroup="tr"></asp:TextBox>
&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="41px" 
                ImageUrl="~/icon/Search_Icon1.jpg" onclick="ImageButton1_Click" Width="76px" />
            &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="RequiredField" Font-Bold="False" 
                SetFocusOnError="True" ValidationGroup="tr"></asp:RequiredFieldValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Order Status"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="-"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Required Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="-"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Shippeing Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="-"></asp:Label>
        </td>
        <td class="style16">
        </td>
    </tr>
    <tr>
        <td class="style13">
            &nbsp;</td>
        <td class="style18">
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

