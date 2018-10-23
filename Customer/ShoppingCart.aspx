<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Customer_ShoppingCart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 100px;
    }
    .style5
    {
        width: 631px;
    }
        .style10
        {
            width: 20px;
            height: 361px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" bgcolor="#FFFFCC">
    <tr>
        <td class="style10">
            &nbsp;</td>
        <td align="left" class="style5" valign="top">
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="Getcartdetails" TypeName="Customer" UpdateMethod="Edittemcart">
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Qty" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Double" />
                    <asp:Parameter Name="Amount" Type="Double" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" 
                DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="None" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Height="251px" 
                Width="443px">
                <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                <Columns>
                    <asp:CommandField ButtonType="Image" ShowSelectButton="True" 
                        SelectImageUrl="~/icon/icon_cart.png" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#3399FF" ForeColor="GhostWhite" 
                    BorderStyle="Outset" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" Height="20px" 
                    HorizontalAlign="Left" Width="40px" Wrap="False" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            </asp:GridView>
            <asp:Panel ID="Panel1" runat="server" Height="211px" Width="212px">
                <asp:Label ID="Label2" runat="server" Text="Qty"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                Amount<br />
                &nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" 
    Text="Total Amount"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Update Cart" Width="109px" />
                &nbsp;<br />
                <br />
                <asp:Button ID="Button4" runat="server" Height="38px" onclick="Button4_Click" 
                    Text="Check Out" Width="204px" />
            </asp:Panel>
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

