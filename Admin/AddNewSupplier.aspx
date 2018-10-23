<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddNewSupplier.aspx.cs" Inherits="Admin_AddNewSupplier" Title="Untitled Page" %>
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
                &nbsp;&nbsp;
                <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" DataSourceID="ObjectDataSource1" 
                    Height="260px" Width="406px" DefaultMode="Insert" 
                    FooterText="Enter All Details" ForeColor="#333333" GridLines="None" 
                    HeaderText="Add New  Supplier" 
                    onpageindexchanging="DetailsView1_PageIndexChanging" 
                    onmodechanging="DetailsView1_ModeChanging">
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <CommandRowStyle BackColor="#D1DDF1" BorderColor="White" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <EmptyDataRowStyle BackColor="#3399FF" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <EmptyDataTemplate>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </EmptyDataTemplate>
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" ButtonType="Button" 
                            InsertText="Save" >
                            <ControlStyle BorderColor="Lime" BorderStyle="Ridge" />
                        </asp:CommandField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <InsertRowStyle BackColor="#0033CC" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    InsertMethod="AddSupplier" SelectMethod="GetCategory" 
                    TypeName="DataAccessforpersons">
                    <InsertParameters>
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
                    </InsertParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

