<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="homesetting.aspx.cs" Inherits="Admin_homesetting" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            height: 229px;
        }
        .style12
        {
            height: 229px;
            width: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" style="width:100%;">
        <tr>
            <td class="style12" valign="top">
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" 
                                DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataKeyNames="ProductID" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" 
                                        SortExpression="ProductID" />
                                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                                        SortExpression="ProductName" />
                                    <asp:BoundField DataField="UnitOnstock" HeaderText="UnitOnstock" 
                                        SortExpression="UnitOnstock" />
                                    <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" 
                                        SortExpression="SellingPrice" />
                                    <asp:BoundField DataField="ExpDate" HeaderText="ExpDate" 
                                        SortExpression="ExpDate" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" 
                                        SortExpression="Description" />
                                    <asp:ImageField DataImageUrlField="pic">
                                    </asp:ImageField>
                                    <asp:CommandField SelectText="Send To&gt;&gt;" ShowSelectButton="True" 
                                        ButtonType="Button" />
                                </Columns>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EshopConnectionString %>" 
                    SelectCommand="SELECT [ProductID], [ProductName], [UnitOnstock], [SellingPrice], [ExpDate], [Description], [pic] FROM [sethomeproductview]">
                </asp:SqlDataSource>
            </td>
            <td class="style11" valign="top">
                            <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView3_SelectedIndexChanged">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:CommandField ButtonType="Button" SelectText="Remove" 
                                        ShowSelectButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                                SelectMethod="gethomitem" TypeName="DataAccess"></asp:ObjectDataSource>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EshopConnectionString %>" 
                    SelectCommand="SELECT * FROM [homeset]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

