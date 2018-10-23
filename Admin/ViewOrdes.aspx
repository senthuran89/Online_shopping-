<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewOrdes.aspx.cs" Inherits="Admin_ViewOrdes" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/Admin/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style8
        {
            height: 38px;
            width: 109px;
        }
        .style9
        {
            height: 171px;
        }
        .style10
        {
            width: 245px;
        }
        .style11
        {
            width: 245px;
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 107px;" bgcolor="White">
        <tr>
            <td align="left" class="style9" valign="top" bgcolor="White">
                <br />
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                            <ControlStyle BorderColor="Lime" BorderStyle="Ridge" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#0099FF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetOrders1" TypeName="DataAccessForOrders">
                </asp:ObjectDataSource>
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Active Conform Panal" Width="145px" BorderColor="Lime" 
                    BorderStyle="Ridge" Font-Bold="True" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Change Order Status"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="122px">
                    <asp:ListItem>Recived</asp:ListItem>
                    <asp:ListItem>Not Recived</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                            <ControlStyle BorderColor="Lime" BorderStyle="Ridge" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Black"></asp:Label>
                <br />
                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                    Text="Selling Price calculater" BorderColor="Lime" BorderStyle="Ridge" />
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="228px" Width="405px" 
                    BackColor="#FFFFFF" BorderColor="#66FFFF" Font-Bold="False" 
                    ForeColor="Black" BorderStyle="None">
                    <table align="right" style="width: 101%; height: 224px;">
                        <tr>
                            <td align="justify" valign="top" class="style11">
                                <asp:Label ID="Label3" runat="server" Text="quantity  Recived"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label7" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style11">
                                <asp:Label ID="Label16" runat="server" Text="Unit Price"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label8" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style11">
                                <asp:Label ID="Label17" runat="server" Text="Total Buying Amount"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label9" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style11">
                                <asp:Label ID="Label6" runat="server" Text="Percentage "></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
                                &nbsp;&nbsp;
                                <br />
                                <asp:Button ID="Button8" runat="server" BorderColor="#66FFFF" 
                                    BorderStyle="Double" Height="26px" onclick="Button8_Click" Text="Calculate" 
                                    Width="65px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" valign="top">
                                <asp:Label ID="Label10" runat="server" Text="Percentage  Price"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label11" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" valign="top">
                                <asp:Label ID="Label12" runat="server" Text="Total Selling Amount"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label13" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11" valign="top">
                                <asp:Label ID="Label14" runat="server" Text="Selling Unit Price"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label15" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Saved TranSation" Width="144px" BorderColor="Lime" 
                    BorderStyle="Ridge" />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

