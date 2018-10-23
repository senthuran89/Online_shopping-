<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="SupplierLogin.aspx.cs" Inherits="Customer_SupplierLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style24
    {
        height: 60px;
        width: 173px;
    }
    .style25
    {
        height: 60px;
    }
    .style16
    {
        height: 58px;
        width: 173px;
    }
        .style15
    {
        height: 58px;
    }
    .style26
    {
        height: 13px;
        width: 173px;
    }
    .style27
    {
        height: 13px;
    }
    .style28
    {
        height: 24px;
        width: 173px;
    }
    .style29
    {
        height: 24px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 7%; height: 201px;" bgcolor="#FFFFCC" frame="box">
        <tr>
            <td align="left" class="style24">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" 
                            Text="UserName"></asp:Label>
            </td>
            <td class="style25" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" class="style16">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="PassWord"></asp:Label>
                        &nbsp;</td>
            <td class="style15" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Width="198px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style26">
            </td>
            <td class="style27" colspan="2">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style28">
            </td>
            <td class="style29">
                        &nbsp;&nbsp;<asp:ImageButton ID="Button11" runat="server" 
                            ImageUrl="~/icon/signInButton.png" onclick="Button11_Click" 
                    Width="87px" />
            </td>
            <td class="style29">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
                            ImageUrl="~/icon/delete-icon.png" Width="92px" />
            </td>
        </tr>
    </table>
</asp:Content>

