<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Customer_Payment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {            height: 527px;
        }
        .style12
        {
            width: 766px;
            height: 284px;
        }
        .style14
        {
            height: 39px;
        }
        .style15
        {
            height: 284px;
            width: 29px;
        }
        .style17
        {
        }
    .style18
    {
        height: 284px;
        }
    .style19
    {
        width: 142px;
        height: 49px;
    }
    .style20
    {
        height: 49px;
    }
        .style21
        {
            height: 23px;
            width: 716px;
        }
    .style22
    {
        width: 142px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:133%; height: 369px; margin-right: 0px;" frame="box" 
    bgcolor="#FFFFCC">
        <tr>
            <td colspan="2" class="style21" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Text="Pay with debit or credit card"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style12" align="left" valign="top">
                <table style="width:133%; margin-right: 84px;">
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label2" runat="server" Text="Credit CardType"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="170px" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>Maser Card</asp:ListItem>
                                <asp:ListItem>Visa Card</asp:ListItem>
                                <asp:ListItem>Amex Card</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label3" runat="server" Text="Credit CardNumber"></asp:Label>
                        </td>
                        <td style="margin-left: 80px">
                            <asp:TextBox ID="TextBox2" runat="server" Width="226px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RequiredField" 
                                ValidationGroup="c"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label4" runat="server" Text="Expiration date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                BorderColor="#FFCC66" BorderStyle="None" BorderWidth="1px" 
                                DayNameFormat="Shortest" FirstDayOfWeek="Saturday" Font-Names="Verdana" 
                                Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" 
                                Width="207px" onselectionchanged="Calendar1_SelectionChanged">
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                    ForeColor="#FFFFCC" />
                            </asp:Calendar>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style19">
                            <asp:Label ID="Label5" runat="server" Text="CSC"></asp:Label>
                        </td>
                        <td class="style20">
                            <asp:TextBox ID="TextBox3" runat="server" Width="92px"></asp:TextBox>
                            &nbsp;<asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                                Text="Wt is CSC?" BorderColor="#FFFFCC" BorderStyle="None" 
                                Font-Overline="False" Font-Underline="True" ForeColor="#0033CC" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="RequiredField" ValidationGroup="c"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="Label13" runat="server" 
                                
                                Text="For MasterCard or Visa, it's the last three digits in the signature area on the back of your card. For American Express, it's the four digits on the front of the card." 
                                Visible="False"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label8" runat="server" Text="Customer Name"></asp:Label>
                            <br />
                        </td>
                        <td valign="top">
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label10" runat="server" Text="Email Address"></asp:Label>
                            <br />
                        </td>
                        <td valign="top">
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <asp:Label ID="Label14" runat="server" Text="Country"></asp:Label>
                            <br />
                        </td>
                        <td valign="top">
                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button11" runat="server" Font-Bold="True" 
                                Text="Precess To Payment" Width="156px" onclick="Button11_Click" 
                                ValidationGroup="c" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style17" colspan="2">
                            &nbsp;Here Customers Get&nbsp; the Order&nbsp; Track ID After Check the Order 
                            Status.<br />
                            (Please note this track number).<br />
                            &nbsp;Track ID:<asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                            <br />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style17" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style11" colspan="2">
                <asp:Image ID="Image2" runat="server" Height="75px" 
                    ImageUrl="~/Customer/Image/alg_mastercard_logo.jpg" Width="146px" />
                <asp:Image ID="Image3" runat="server" Height="75px" 
                    ImageUrl="~/Customer/Image/old-discover_card.jpg" style="margin-top: 222px" 
                    Width="167px" />
                <asp:Image ID="Image4" runat="server" Height="75px" 
                    ImageUrl="~/Customer/Image/discovercard-large.gif" style="margin-top: 543px" 
                    Width="172px" />
            </td>
        </tr>
    </table>
</asp:Content>

