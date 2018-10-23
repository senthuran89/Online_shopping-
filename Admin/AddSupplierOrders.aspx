<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddSupplierOrders.aspx.cs" Inherits="Admin_AddSupplierOrders" Title="Untitled Page" %>
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
        .style11
        {
            width: 340px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 107px;" bgcolor="White">
    <tr>
        <td align="left" class="style9" valign="top">
            <br />
            <asp:Label ID="Label5" runat="server" Text="Order ProductName&gt;&gt;"></asp:Label>
&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                      <table style="width:100%;">
                <tr>
                    <td class="style11" align="left" valign="top">
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;<asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                DataSourceID="ObjectDataSource1" ForeColor="#333333" 
                    Height="201px" Width="338px" GridLines="None" 
                onpageindexchanging="DetailsView1_PageIndexChanging" 
                onmodechanging="DetailsView1_ModeChanging" DefaultMode="Insert" 
                FooterText="Enter All Details" HeaderText="Add orders">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <RowStyle BackColor="#EFF3FB" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <Fields>
                    <asp:CommandField ShowInsertButton="True" ButtonType="Button" 
                        InsertText="Save" >
                        <ControlStyle BorderColor="Lime" BorderStyle="Ridge" />
                    </asp:CommandField>
                </Fields>
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:DetailsView>
                    </td>
                    <td align="center" valign="top">
                                                <br />
                                                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                            DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None" 
                            Width="413px">
                            <RowStyle BackColor="#EFF3FB" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                Text="View The Order Number" BorderColor="Lime" BorderStyle="Ridge" />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                SelectMethod="Getsupplier" TypeName="DataAccessforpersons">
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetOrders" TypeName="DataAccessForOrders" 
                InsertMethod="InsertOrdrs">
                <InsertParameters>
                    <asp:Parameter Name="OrderID" Type="Int32" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="SupplierName" Type="String" />
                    <asp:Parameter Name="UnitPrice" Type="Double" />
                    <asp:Parameter Name="Orderstatus" Type="String" />
                    <asp:Parameter Name="OrderDate" Type="DateTime" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                </InsertParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

