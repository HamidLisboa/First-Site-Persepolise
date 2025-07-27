<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
            width: 570px;
        }
        .auto-style3 {
            width: 570px;
        }
        .auto-style4 {
            width: 188px;
        }
        .auto-style5 {
            text-align: right;
            margin-right: 200px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <h4 style="font-family:IRNazanin;direction:rtl; color: #FF0000;" class="auto-style5">پر کردن تمامی فیلدها اجباری است!!!</h4>
<table style="margin-left:10px;direction:rtl;font-family:IRNazanin;">
    
    <tr>
        <td align="left" class="auto-style4">نام:</td>
        <td align="right" class="auto-style2">
            <asp:TextBox ID="txtname" runat="server" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="فیلد اجباری" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
 </tr>
    <tr>
    <td align="left" class="auto-style4">نام خانوادگی:</td><td align="right" class="auto-style3">
            <asp:TextBox ID="txtfam" runat="server" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfam" ErrorMessage="فیلد اجباری" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
    <tr>
        <td align="left" class="auto-style4">ایمیل:</td><td align="right" class="auto-style3">
            <asp:TextBox ID="txtemail" runat="server" Width="240px" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="فیلد اجباری" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ErrorMessage="ایمیل نامعتبر" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        </tr>
    <tr>
        <td align="left" class="auto-style4">آدرس پستی:</td><td align="right" class="auto-style3">
            <asp:TextBox ID="txtadd" runat="server" Width="240px" TextMode="MultiLine" Height="59px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtadd" ErrorMessage="فیلد اجباری" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
            </tr>
    
    <tr>
        <td align="left" class="auto-style4"> کد ملی:</td><td align="right" class="auto-style3">
            <asp:TextBox ID="txtnum" runat="server" Width="240px" TextMode="Number" ToolTip="لطفا مقدار عددی وارد شود" ValidateRequestMode="Enabled"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtnum" ErrorMessage="فیلد اجباری/مقدار عددی" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtnum" ErrorMessage="کد ملی نامعتبر" ForeColor="Red" MaximumValue="9876543210" MinimumValue="1234567890" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
        </td>
        </tr>
    <tr>
        <td align="left" class="auto-style4">رمز عبور:</td><td align="right" class="auto-style3">
            <asp:TextBox ID="txtpass" runat="server" Width="240px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpass" ErrorMessage="فیلد اجباری" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        </tr>
    <tr>
        <td align="left" class="auto-style4">تکرار رمز عبور:</td><td align="right" class="auto-style3">
            <asp:TextBox ID="txtconfpass" runat="server" Width="240px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtconfpass" ErrorMessage="فیلد اجباری" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtconfpass" ErrorMessage="رمز عبور و تکرار آن یکسان نیست" ForeColor="Red" ControlToCompare="txtpass"></asp:CompareValidator>
        </td>
      </tr>
    <tr>
        <td align="left" class="auto-style4">
        <asp:Button ID="submit" runat="server" Text="ثبت نام" Font-Names="IRNazanin" Font-Bold="True" Font-Size="12pt" OnClick="submit_Click" /></td>
        <td class="auto-style3">
            <asp:Label ID="lblalert" runat="server" ForeColor="Green"></asp:Label></td>
    </tr>
</table>
</div>
</asp:Content>

