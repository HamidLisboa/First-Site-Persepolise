<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="margin-left:10px;direction:rtl;font-family:IRNazanin;">
        <tr>
            <td class="auto-style2"><h3 style="color:red; font-family:IRNazanin">Preenchimento Obrigatório</h3></td>
        </tr>
        <tr>
            <td class="auto-style2" align="left">Nome de Usário:</td>
            <td style="width:350px;" align="right">
                <asp:TextBox ID="txtuname" runat="server" Width="240px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Obrigatório" ForeColor="Red" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" align="left">ایمیل:</td>
            <td align="right">
                <asp:TextBox ID="txtemail" runat="server" Width="240px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="فیلد اجباری" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ایمیل نامعتبر" ForeColor="Red" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" align="left">موضوع:</td>
            <td align="right">
                <asp:TextBox ID="txttitle" runat="server" Width="240px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="فیلد اجباری" ForeColor="Red" ControlToValidate="txttitle"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" align="left">متن:</td>
            <td align="right">
                <asp:TextBox ID="txttext" runat="server" Width="240px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="فیلد اجباری" ForeColor="Red" ControlToValidate="txttext"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="submit" runat="server" Text="ارسال" Font-Names="IRNazanin" Font-Bold="True" Font-Size="12pt" OnClick="submit_Click" Height="32px" />
            </td>
            <td align="right">
                <asp:Label ID="lblalert" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>

