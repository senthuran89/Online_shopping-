<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/Admin/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            height: 38px;
        }
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
                <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                    DataSourceID="ObjectDataSource1" ForeColor="#333333" 
                    Height="196px" onmodechanging="DetailsView1_ModeChanging" Width="309px" 
                    onpageindexchanging="DetailsView1_PageIndexChanging" DefaultMode="Insert" 
                    Font-Bold="True" Font-Italic="False" FooterText="Enter All  Category Details " 
                    GridLines="None" HeaderText="Add Category Form ">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" ButtonType="Button" 
                            InsertText="Save" >
                            <ControlStyle BackColor="White" BorderColor="Lime" BorderStyle="Groove" 
                                Font-Bold="True" />
                        </asp:CommandField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    InsertMethod="InsertCategory" SelectMethod="GetCategory" TypeName="DataAccess">
                    <InsertParameters>
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                        <asp:Parameter Name="CategoryName" Type="String" />
                        <asp:Parameter Name="Descriptions" Type="String" />
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

