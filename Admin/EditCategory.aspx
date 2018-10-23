<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditCategory.aspx.cs" Inherits="Admin_EditCategory" Title="Untitled Page" %>
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 107px;" bgcolor="White">
        <tr>
            <td align="left" class="style9" valign="top">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetCategory" TypeName="DataAccess" UpdateMethod="Updatecatogery">
                    <UpdateParameters>
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Descriptions" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" BackColor="White" 
                    BorderColor="Silver" BorderStyle="None" CellPadding="4" Font-Bold="True" 
                    Font-Names="Arial" ForeColor="#333333" PageSize="12" Width="442px">
                    <RowStyle BackColor="#EFF3FB" />
                    <EmptyDataRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="Update" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#0066CC" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#0099FF" BorderStyle="Outset" Font-Bold="True" 
                        ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Top" />
                    <HeaderStyle BackColor="#0066CC" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" BorderColor="#CCCCCC" BorderStyle="Solid" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

