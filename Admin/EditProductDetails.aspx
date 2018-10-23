<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditProductDetails.aspx.cs" Inherits="Admin_EditProductDetails" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/Admin/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style8
        {
            height: 38px;
            width: 145px;
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
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource2" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="Update" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetProductdetails" TypeName="DataAccess" 
                    UpdateMethod="EditProductdetails">
                    <UpdateParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductDetails" Type="String" />
                        <asp:Parameter Name="Dimension" Type="String" />
                        <asp:Parameter Name="color" Type="String" />
                        <asp:Parameter Name="ProduceDate" Type="DateTime" />
                        <asp:Parameter Name="ExpDate" Type="DateTime" />
                        <asp:Parameter Name="pic" Type="String" />
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

