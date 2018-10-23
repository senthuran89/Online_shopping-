<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Admin_UpdateProduct" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/Admin/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style8
        {
            height: 38px;
            width: 145px;
        }
        .style7
        {
            height: 38px;
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
            width: 345px;
        }
        .style12
        {
            width: 273px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 107px;" bgcolor="White">
        <tr>
            <td align="left" class="style9" valign="top">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetProduct" 
                    TypeName="DataAccess" 
                    InsertMethod="InsertProduct">
                    <InsertParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="SupplierName" Type="String" />
                        <asp:Parameter Name="QtyRecived" Type="Int32" />
                        <asp:Parameter Name="UnitPrice" Type="Double" />
                        <asp:Parameter Name="ReorderLevel" Type="Int32" />
                        <asp:Parameter Name="SellingPrice" Type="Double" />
                        <asp:Parameter Name="DealDate" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
                &nbsp;&nbsp;
                <table style="width:100%;">
                    <tr>
                        <td align="left" class="style11" valign="top">
                <asp:DetailsView ID="DetailsView1" runat="server" 
                    DataSourceID="ObjectDataSource1" Height="196px" Width="347px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onpageindexchanging="DetailsView1_PageIndexChanging" DefaultMode="Insert" 
                    FooterText="Enter All Details" HeaderText="Add New Product Details  " 
                                onmodechanging="DetailsView1_ModeChanging">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" BorderColor="White" BorderStyle="None" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" 
                        BorderColor="White" BorderStyle="Groove" VerticalAlign="Middle" />
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                        </td>
                        <td align="left" class="style12" valign="top">
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" 
                                DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None">
                                <RowStyle BackColor="#EFF3FB" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                SelectMethod="GetCategory1" TypeName="DataAccess"></asp:ObjectDataSource>
                        </td>
                        <td align="left" valign="top">
                            <asp:GridView ID="GridView3" runat="server" CellPadding="4" 
                                DataSourceID="ObjectDataSource3" ForeColor="#333333" GridLines="None">
                                <RowStyle BackColor="#EFF3FB" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                                SelectMethod="Getsupplier" TypeName="DataAccessforpersons">
                            </asp:ObjectDataSource>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Show And Edit  Product Details" Width="237px" BorderColor="#66FFFF" 
                    BorderStyle="Double" Font-Bold="True" />
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                    Text="Hide the Table" Width="236px" BorderColor="#66FFFF" 
                    BorderStyle="Double" Font-Bold="True" />
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" 
                    CellPadding="4" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    ForeColor="#333333">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" >
                            <ControlStyle BorderColor="Lime" BorderStyle="Ridge" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#0066FF" Font-Bold="False" ForeColor="#333333" 
                        BorderStyle="Outset" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" BorderColor="White" />
                </asp:GridView>
                <br />
                <asp:Button ID="Button7" runat="server" BorderColor="#66FFFF" 
                    BorderStyle="Double" onclick="Button7_Click" Text="Selling Price Calculater" 
                    Width="187px" Font-Bold="True" />
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="331px" Width="405px" 
                    BackColor="White" Font-Bold="True" Font-Names="Arial" 
                    GroupingText="Selling Price calculater">
                    <table align="right" style="width: 101%; height: 315px;">
                        <tr>
                            <td align="justify" valign="top" class="style10">
                                <asp:Label ID="Label3" runat="server" Text="quantity  Recived"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style10">
                                <asp:Label ID="Label4" runat="server" Text="Unit Price"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style10">
                                <asp:Label ID="Label5" runat="server" Text="Total Buying Amount"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" class="style10">
                                <asp:Label ID="Label6" runat="server" Text="Percentage %"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:TextBox ID="TextBox1" runat="server" Height="25px" 
                                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                                &nbsp;&nbsp;
                                <br />
                                <asp:Button ID="Button8" runat="server" BorderColor="#66FFFF" 
                                    BorderStyle="Double" Height="26px" onclick="Button8_Click" Text="Calculate" 
                                    Width="59px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" valign="top">
                                <asp:Label ID="Label10" runat="server" Text="Percentage  Price"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label11" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" valign="top">
                                <asp:Label ID="Label12" runat="server" Text="Total Selling Amount"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label13" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" valign="top">
                                <asp:Label ID="Label14" runat="server" Text="Selling Unit Price"></asp:Label>
                            </td>
                            <td valign="top">
                                <asp:Label ID="Label15" runat="server" Text="0"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10" valign="top">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Save" 
                                    Width="48px" BorderColor="Lime" BorderStyle="Ridge" />
                            </td>
                            <td valign="top">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Cancel" 
                                    BorderColor="Lime" BorderStyle="Ridge" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

