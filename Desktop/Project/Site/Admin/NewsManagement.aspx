<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="NewsManagement.aspx.cs" Inherits="Admin_NewsManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="nId" DataSourceID="ObjectDataSource1" GridLines="Vertical" style="direction: ltr" Font-Names="IRNazanin" Font-Size="12pt" Width="1000" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="nId" HeaderText="ردیف" InsertVisible="False" ReadOnly="True" SortExpression="nId" />
            <asp:BoundField DataField="title" HeaderText="تیتر خیر" SortExpression="title" />
            <asp:BoundField DataField="news" HeaderText="متن" SortExpression="news" />
            <asp:BoundField DataField="views" HeaderText="تعداد بازدید" SortExpression="views" />
            <asp:BoundField DataField="date" HeaderText="تاریخ خبر" SortExpression="date" />
            <asp:BoundField DataField="image" HeaderText="تصویر" SortExpression="image" />
        </Columns>
        <FooterStyle BackColor="Red" ForeColor="Black" />
        <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Right" VerticalAlign="Top" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteNewsById" InsertMethod="InsertNews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="NewsTableAdapters.NewsTableAdapter" UpdateMethod="UpdateNewsById">
        <DeleteParameters>
            <asp:Parameter Name="Original_nId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="news" Type="String" />
            <asp:Parameter Name="views" Type="Int32" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="news" Type="String" />
            <asp:Parameter Name="views" Type="Int32" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="Original_nId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br /><br />
    <table style="direction:rtl;font-family:IRNazanin" align="right">
        <tr>
            <td>عتوان خبر:</td>
            <td><asp:TextBox ID="txttitle" runat="server" Font-Names="IRNazanin" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>متن خبر:</td>
            <td><asp:TextBox ID="txtdesc" runat="server" Font-Names="IRNazanin" TextMode="MultiLine" Height="200px" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>تصویر خبر:</td>
            <td width="100"><asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" /></td>
         </tr>
        <tr>
            <td>
                <asp:Button ID="BtnSend" runat="server" Text="ارسال خبر" Font-Bold="True" Font-Names="IRNazanin" OnClick="BtnSend_Click" /></td>
            <td>
                <asp:label runat="server" ID="lblalert"></asp:label>
            </td>
        </tr>
    </table>
</asp:Content>

