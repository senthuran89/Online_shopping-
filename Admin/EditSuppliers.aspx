<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditSuppliers.aspx.cs" Inherits="Admin_EditSuppliers" Title="Untitled Page" %>
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 107px;" bgcolor="White">
        <tr>
            <td align="left" class="style9" valign="top">
                <br />
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="Update" >
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetCategory" TypeName="DataAccessforpersons" 
                    UpdateMethod="EditSupplier">
                    <UpdateParameters>
                        <asp:Parameter Name="SupplierID" Type="Int32" />
                        <asp:Parameter Name="SupplierName" Type="String" />
                        <asp:Parameter Name="SupplierAddress" Type="String" />
                        <asp:Parameter Name="SupplierCity" Type="String" />
                        <asp:Parameter Name="SupplierCountry" Type="String" />
                        <asp:Parameter Name="SupplierPostalCode" Type="String" />
                        <asp:Parameter Name="SupplierEmail" Type="String" />
                        <asp:Parameter Name="SupplierPhone" Type="String" />
                        <asp:Parameter Name="DateofBirth" Type="String" />
                        <asp:Parameter Name="PassWords" Type="String" />
                        <asp:Parameter Name="UserName" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

