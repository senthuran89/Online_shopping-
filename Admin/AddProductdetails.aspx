<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddProductdetails.aspx.cs" Inherits="AddProductdetails" Title="Untitled Page" %>
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetProductdetails" TypeName="DataAccess" InsertMethod="AddProductdetails" 
                    onselecting="ObjectDataSource1_Selecting">
                    <InsertParameters>
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductDetails" Type="String" />
                        <asp:Parameter Name="Dimension" Type="String" />
                        <asp:Parameter Name="color" Type="String" />
                        <asp:Parameter Name="ProduceDate" Type="DateTime" />
                        <asp:Parameter Name="ExpDate" Type="DateTime" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            <asp:Label ID="Label5" runat="server" Text=" ProductName&gt;&gt;"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="."></asp:Label>
                <br />
                <asp:DetailsView ID="DetailsView1" runat="server" 
                    DataSourceID="ObjectDataSource3" Height="167px" Width="356px" 
                    CellPadding="4" FooterText="Enter The All Details" ForeColor="#333333" 
                    GridLines="None" HeaderText="Further Product  Details" 
                    onpageindexchanging="DetailsView1_PageIndexChanging" DefaultMode="Insert" 
                    style="margin-right: 0px" onmodechanging="DetailsView1_ModeChanging">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" Font-Names="Arial" 
                        ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" BorderStyle="None" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                    InsertMethod="AddProductdetails" SelectMethod="GetProductdetails" 
                    TypeName="DataAccess">
                    <InsertParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductDetails" Type="String" />
                        <asp:Parameter Name="Dimension" Type="String" />
                        <asp:Parameter Name="color" Type="String" />
                        <asp:Parameter Name="ProduceDate" Type="DateTime" />
                        <asp:Parameter Name="ExpDate" Type="DateTime" />
                        <asp:Parameter Name="pic" Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    InsertMethod="AddProductdetails" SelectMethod="GetProductdetails" 
                    TypeName="DataAccess">
                    <InsertParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="ProductDetails" Type="String" />
                        <asp:Parameter Name="Dimension" Type="String" />
                        <asp:Parameter Name="color" Type="String" />
                        <asp:Parameter Name="ProduceDate" Type="DateTime" />
                        <asp:Parameter Name="ExpDate" Type="DateTime" />
                        <asp:Parameter Name="pic" Type="String" />
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

