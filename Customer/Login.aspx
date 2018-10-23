<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Customer_Login" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/Customer/Customermaster.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 53px;
    }
    .style11
    {
        width: 417px;
    }
    .style12
    {
        width: 53px;
        height: 23px;
    }
    .style13
    {
        width: 417px;
        height: 23px;
    }
    .style15
    {
        height: 58px;
    }
    .style16
    {
        height: 58px;
        width: 173px;
    }
        .style19
    {
        width: 18px;
        height: 347px;
    }
    .style20
    {
        width: 759px;
        height: 11px;
    }
    .style21
    {
        width: 759px;
        height: 347px;
    }
    .style23
    {
        width: 4px;
        height: 347px;
    }
    .style24
    {
        height: 60px;
        width: 173px;
    }
    .style25
    {
        height: 60px;
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
    .style30
    {
        width: 4px;
        height: 11px;
    }
    .style31
    {
        width: 18px;
        height: 11px;
    }
    .style32
    {
        width: 4px;
        height: 19px;
    }
    .style33
    {
        width: 759px;
        height: 19px;
    }
    .style34
    {
        width: 18px;
        height: 19px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 932%; height: 285px;">
    <tr>
        <td class="style30">
        </td>
        <td class="style20">
        </td>
        <td class="style31">
        </td>
    </tr>
    <tr>
        <td class="style23">
            </td>
        <td class="style21" valign="top">
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
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
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
                            ImageUrl="~/icon/signInButton.png" onclick="Button11_Click1" Width="87px" />
                    </td>
                    <td class="style29">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" 
                            ImageUrl="~/icon/delete-icon.png" onclick="ImageButton1_Click" Width="92px" />
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;</td>
                    <td class="style15" colspan="2">
                        <asp:ImageButton ID="Button14" runat="server" Height="29px" 
                            ImageUrl="~/icon/signup_sm.gif" onclick="Button14_Click1" Width="142px" />
                    </td>
                </tr>
            </table>
            <br />
        </td>
        <td class="style19">
            </td>
    </tr>
    <tr>
        <td class="style32">
            </td>
        <td class="style33">
            </td>
        <td class="style34">
            </td>
    </tr>
</table>
</asp:Content>

