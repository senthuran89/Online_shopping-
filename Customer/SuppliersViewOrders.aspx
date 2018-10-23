<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="SuppliersViewOrders.aspx.cs" Inherits="Customer_SuppliersViewOrders" Title="Untitled Page" %>

<%@ MasterType VirtualPath="~/Customer/Customermaster.master" %>
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
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Dear Supplier "></asp:Label>
&nbsp;<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" >
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
                    SelectMethod="Getordersview" TypeName="DataAccessForOrders">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="1" Name="SupplierID" SessionField="id" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Change status "></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="122px">
                    <asp:ListItem>Recived</asp:ListItem>
                    <asp:ListItem>Not Recived</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Sending Qty"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="Save Changes" BorderColor="Lime" BorderStyle="Ridge" />
                <br />
                &nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="."></asp:Label>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

