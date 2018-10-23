<%@ Page Language="C#" MasterPageFile="~/Customer/Customermaster.master" AutoEventWireup="true" CodeFile="CustomerRegister.aspx.cs" Inherits="Customer_CustomerRegister" Title="Untitled Page" %>

<%@ Register assembly="FlashControl" namespace="Bewise.Web.UI.WebControls" tagprefix="Bewise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
    }
    .style5
    {
        width: 160px;
    }
    .style6
    {
        width: 128px;
    }
    .style7
    {
        height: 23px;
    }
 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	}
a:link
	{color:blue;
	text-decoration:underline;
	text-underline:single;
    }
    .style8
    {
    }
    .style15
    {
        height: 49px;
    }
    .style16
    {
        height: 56px;
    }
    .style18
    {
        width: 268435456px;
    }
        .style20
        {
        height: 23px;
        width: 183px;
    }
        .style21
        {
        width: 183px;
    }
        .style23
        {
            width: 304px;
        }
    .style24
    {
        width: 12px;
        height: 61px;
    }
    .style25
    {
        width: 280px;
    }
    .style26
    {
        width: 12px;
    }
        .style27
        {
            width: 266px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table frame="box" style="width:100%; margin-right: 90px;" bgcolor="#FFFFCC">
    <tr>
        <td align="left" class="style21">
            </td>
        <td colspan="5">
            </td>
    </tr>
    <tr>
        <td align="left" class="style24" colspan="6">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                Text="Tell us about yourself- "></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="All fields are required"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21" width="300">
            <asp:Label ID="Label4" runat="server" Text="Customer First Name   " 
                Width="174px"></asp:Label>
        </td>
        <td class="style25">
            <asp:TextBox ID="fname" runat="server" Width="280px" style="margin-left: 0px" 
                ValidationGroup="f"></asp:TextBox>
        </td>
        <td class="style23">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
            &nbsp;</td>
        <td align="left" class="style26" colspan="2" valign="top">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" 
                Text="Customer Last Name" Width="143px" Height="25px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style18">
            <asp:TextBox ID="lname" runat="server" Width="213px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="lname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label5" runat="server" Text="Customer Street Address"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="address" runat="server" Height="34px" TextMode="MultiLine" 
                Width="336px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="city" runat="server" Height="22px" Width="139px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
        </td>
        <td colspan="3">
            <asp:DropDownList ID="state" runat="server" Height="25px" Width="139px">
                <asp:ListItem>
                </asp:ListItem>
                <asp:ListItem>North</asp:ListItem>
                <asp:ListItem>West</asp:ListItem>
                <asp:ListItem>East</asp:ListItem>
                <asp:ListItem>south</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
        <td class="style27">
            <asp:Label ID="Label9" runat="server" Text="Zip/Postal Code"></asp:Label>
        </td>
        <td class="style18">
            <asp:TextBox ID="zip" runat="server" Width="150px"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ControlToValidate="zip" ErrorMessage="Allow Zip Number" SetFocusOnError="True" 
                ValidationGroup="f"></asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Country" runat="server" Text="Country"></asp:Label>
        </td>
        <td colspan="5">
            <asp:DropDownList ID="count" runat="server" Height="25px" Width="139px">
                <asp:ListItem>
                </asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>Usa</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>malaysiya</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label10" runat="server" Text="TelePhone  Number"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="phone" runat="server" Width="139px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label11" runat="server" Text="Email Address"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="email" runat="server" Width="261px" 
                AutoCompleteType="Disabled"></asp:TextBox>
            <asp:ImageButton ID="ImageButton3" runat="server" Height="22px" 
                ImageUrl="~/icon/ghgjghj.jpeg" onclick="ImageButton3_Click" Width="54px" />
            <asp:Label ID="Label22" runat="server" ForeColor="#33CC33" Text="."></asp:Label>
            <asp:Label ID="Label19" runat="server" ForeColor="#33CC33" Text="."></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label12" runat="server" Text="ReEnter Email Address"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="TextBox8" runat="server" Width="260px"></asp:TextBox>
            <asp:Label ID="Label23" runat="server" ForeColor="#33CC33" Text="."></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" class="style8" colspan="6">
            <asp:Label ID="Label13" runat="server" Font-Bold="True" 
                Text="Choose your user ID and password" Width="328px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label14" runat="server" Text="Create your Eshop user ID"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="user" runat="server" Width="252px" EnableViewState="False"></asp:TextBox>
            <asp:ImageButton ID="ImageButton4" runat="server" Height="22px" 
                ImageUrl="~/icon/ghgjghj.jpeg" onclick="ImageButton4_Click" Width="54px" />
            <asp:Label ID="Label18" runat="server" ForeColor="#33CC33" Text="."></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label15" runat="server" Text="Create your password"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="password" runat="server" Width="251px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label20" runat="server" ForeColor="#33CC33" Text="."></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                ControlToValidate="fname" ErrorMessage="RequiredField" SetFocusOnError="True" 
                ValidationGroup="f"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            <asp:Label ID="Label16" runat="server" Text="   Re-enter your password"></asp:Label>
        </td>
        <td colspan="5">
            <asp:TextBox ID="TextBox11" runat="server" Width="251px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label21" runat="server" ForeColor="#33CC33" Text="."></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" class="style20">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBox1" runat="server" Text="  I agree that:" />
        </td>
        <td colspan="5" class="style7">
            <asp:Label ID="Label17" runat="server" Text="."></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" class="style20">
            &nbsp;</td>
        <td colspan="5" class="style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" class="style16" colspan="6">
            <p class="MsoNormal">
                <![if !supportLists]>
                <span style="font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol"><span style="mso-list:Ignore">·<span 
                    style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span></span></span><![endif]>
                <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">I accept the User Agreement<b> - opens in a 
                new window or tab</b> and Privacy Policy<b> - opens in a new window or tab</b>.</span><![if !supportLists]><span style="font-size:10.0pt;
mso-bidi-font-size:12.0pt;font-family:Symbol;mso-fareast-font-family:Symbol;
mso-bidi-font-family:Symbol"><span style="mso-list:Ignore"><span 
                    style="font:7.0pt &quot;Times New Roman&quot;">&nbsp; </span></span></span><![endif]>
                <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;">I may receive communications from Eshop
                <span style="mso-spacerun:yes">&nbsp;</span>and can change my notification 
                preferences in My Eshop.<o:p></o:p></span></p>
        </td>
    </tr>
    <tr>
        <td align="left" class="style15" colspan="6">
            </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            &nbsp;</td>
        <td colspan="3" align="center">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                ImageUrl="~/icon/images_icon_submit.gif" onclick="ImageButton1_Click" 
                ValidationGroup="f" />
        </td>
        <td colspan="2" align="left">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="26px" 
                ImageUrl="~/icon/delete-icon.png" onclick="ImageButton2_Click" Width="114px" />
        </td>
    </tr>
    <tr>
        <td align="left" class="style21">
            &nbsp;</td>
        <td colspan="3" align="center">
            &nbsp;</td>
        <td colspan="2" align="left">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

