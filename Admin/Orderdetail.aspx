<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Orderdetail.aspx.cs" Inherits="Admin_Orderdetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label4" runat="server" Text="."></asp:Label>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True">
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
    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <RowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
        DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None" 
        Height="110px" Width="125px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <RowStyle BackColor="#EFF3FB" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <Fields>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        SelectMethod="GetProducttoProductID" TypeName="DataaccessForCustomerorder" 
        UpdateMethod="updateOrdrs">
        <UpdateParameters>
            <asp:Parameter Name="OrderID" Type="Int32" />
            <asp:Parameter Name="RequiredDate" Type="DateTime" />
            <asp:Parameter Name="ShippedDate" Type="DateTime" />
            <asp:Parameter Name="Orderstatus" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="OrderID" SessionField="ORDERID" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetOrders1" TypeName="DataaccessForCustomerorder">
    </asp:ObjectDataSource>
    <br />
</asp:Content>

