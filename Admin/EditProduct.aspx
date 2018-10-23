<%@ Page Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="EditProduct.aspx.cs" Inherits="AddProduct" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/Admin/Admin.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            height: 38px;
            }
        .style7
        {
            height: 38px;
        }
        .style9
        {
            height: 171px;
        }
        .style11
        {
            width: 86px;
            height: 23px;
        }
        .style12
        {
            height: 23px;
            width: 71px;
        }
        .style15
        {
            width: 94px;
            height: 23px;
        }
        .style16
        {
            width: 104px;
        }
        .style17
        {
            width: 74px;
        }
        .style18
        {
            width: 111px;
        }
        .style19
        {
            width: 101px;
        }
        .style20
        {
            width: 234px;
        }
        .style21
        {
            width: 348px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 107px;" bgcolor="White">
        <tr>
            <td align="left" class="style9" valign="top">
                <table style="width: 100%;">
                    <tr>
                        <td align="right" class="style15">
                            <asp:Label ID="Label3" runat="server" Text="Product ID" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:TextBox ID="TextBox1" runat="server" Width="72px">0</asp:TextBox>
                        </td>
                        <td align="center" class="style12">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Load" 
                                BorderColor="Lime" BorderStyle="Ridge" Width="50px" />
                        </td>
                        <td align="right" class="style16">
                            <asp:Label ID="Label4" runat="server" Text="Product Name" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="style19">
                            <asp:DropDownList ID="DropDownList2" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td align="center" class="style17">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Load" 
                                BorderColor="Lime" BorderStyle="Ridge" Width="50px" />
                        </td>
                        <td align="center">
                            <asp:Label ID="Label5" runat="server" Text="Category Name" Font-Bold="True"></asp:Label>
                        </td>
                        <td align="left" class="style18">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Load" 
                                BorderColor="Lime" BorderStyle="Ridge" />
                        </td>
                    </tr>
                </table>
&nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" >
                            <ControlStyle BorderColor="Lime" BorderStyle="Ridge" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetProducttoProductID" TypeName="DataAccess" 
                    UpdateMethod="UpdateProduct">
                    <UpdateParameters>
                        <asp:Parameter Name="ProductID" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="CategoryID" Type="Int32" />
                        <asp:Parameter Name="SupplierID" Type="String" />
                        <asp:Parameter Name="UnitPrice" Type="Double" />
                        <asp:Parameter Name="UnitInstock" Type="Int32" />
                        <asp:Parameter Name="UnitOnstock" Type="Int32" />
                        <asp:Parameter Name="ReorderLevel" Type="Int32" />
                        <asp:Parameter Name="SellingPrice" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                    </UpdateParameters>
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="ProductID" SessionField="id" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <table style="width:100%;">
                    <tr>
                        <td align="left" class="style20" valign="top">
                <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
                    DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" 
                    Height="50px" Width="213px" DefaultMode="Edit" 
                    HeaderText="Edit Product Details" 
                    onpageindexchanging="DetailsView1_PageIndexChanging">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <RowStyle BackColor="#EFF3FB" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <Fields>
                        <asp:CommandField ShowEditButton="True" ButtonType="Button" EditText="Update" >
                            <ControlStyle BorderColor="Lime" BorderStyle="Ridge" />
                        </asp:CommandField>
                    </Fields>
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:DetailsView>
                        </td>
                        <td align="left" class="style21" valign="top">
                            <asp:GridView ID="GridView2" runat="server" CellPadding="4" 
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
                                SelectMethod="GetCategory1" TypeName="DataAccess"></asp:ObjectDataSource>
                        </td>
                        <td align="left" valign="top">
                            <asp:GridView ID="GridView3" runat="server" CellPadding="4" 
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
                                SelectMethod="Getsupplier" TypeName="DataAccessforpersons">
                            </asp:ObjectDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
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

