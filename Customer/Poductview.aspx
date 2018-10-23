<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="Poductview.aspx.cs" Inherits="Customer_Poductview" Title="Untitled Page" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            height: 234px;
            width: 180px;
        }
        .style4
        {
            height: 234px;
        }
        .style9
    {
        width: 334px;
    }
        .style10
        {
            height: 234px;
            width: 149px;
        }
        .style17
        {
            height: 451px;
            width: 356px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table style="width:115%; height: 37px;" bgcolor="#FFFFCC" frame="box" 
            align="left">
        <tr>
            <td class="style17" align="left" valign="top">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" 
                    GridLines="None" Width="301px" ForeColor="#333333" 
                                onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <RowStyle ForeColor="#333333" VerticalAlign="Top" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="pic">
                        </asp:ImageField>
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                            SortExpression="ProductName" />
                        <asp:BoundField DataField="ProductDetails" HeaderText="ProductDetails" 
                            SortExpression="ProductDetails" />
                        <asp:BoundField DataField="Dimension" HeaderText="Dimension" 
                            SortExpression="Dimension" />
                        <asp:BoundField DataField="color" HeaderText="color" 
                            SortExpression="color" >
                        </asp:BoundField>
                        <asp:BoundField DataField="ProduceDate" HeaderText="ProduceDate" 
                            SortExpression="ProduceDate" />
                        <asp:BoundField DataField="SellingPrice" HeaderText="SellingPrice" 
                            SortExpression="SellingPrice" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
                        <asp:CommandField ButtonType="Image" 
                            SelectImageUrl="~/icon/add-to-cart-icon.gif" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                    <PagerStyle ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#FF9933" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#FFFFCC" />
                </asp:GridView>
               
                <table style="width:115%; height: 306px;">
                    <tr>
                        <td align="left" class="style9" valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="23px" 
                    Width="253px" BackColor="White" Font-Bold="True" Font-Italic="True" 
                    ForeColor="#FF9900">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" 
                    BackColor="#FF9900" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" 
                    Font-Italic="True" Text="Search" onclick="Button1_Click" />
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetProducttoproID" TypeName="Customer">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="ProductID" SessionField="pid" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                            <asp:SqlDataSource 
                    ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EshopConnectionString %>" 
                    
                    
                    
                    
                                SelectCommand="SELECT [ProductName], [ProductDetails], [Dimension], [color], [ProduceDate], [SellingPrice], [Description], [pic] FROM [productview] WHERE ([ProductID] = @ProductID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label3" DefaultValue="0" Name="ProductID" 
                            PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
               
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td align="center" valign="top">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Qty"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Width="53px" Height="22px" 
                                    ValidationGroup="gr1"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="quantity Requied" 
                                    SetFocusOnError="True" ValidationGroup="gr1"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label5" runat="server" 
    Text="Amount "></asp:Label>
                                &nbsp;
                                <asp:Label ID="Label6" runat="server" Text="0"></asp:Label>
                                <br />
&nbsp;
                            <asp:Label ID="Label8" runat="server" Text="." ForeColor="Red"></asp:Label>
                            <br />
                           
                            <asp:Panel ID="Panel2" runat="server" Height="118px" Width="137px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="Button3" runat="server" AlternateText="Shoping Cart" 
                                    Height="57px" ImageAlign="TextTop" 
                                    ImageUrl="~/icon/shopping-cart-insert-icon.png" onclick="Button3_Click1" 
                                    ToolTip="Shopping Cart" Width="105px" />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" Text="Check Out" Width="101px" 
                                    onclick="Button4_Click" BorderStyle="None" Height="46px" 
                                    ToolTip="Check Out" />
                            </asp:Panel>
                            <br />
                           
                            <br />
                            <br />
                           
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
        <br />
  
</asp:Content>

