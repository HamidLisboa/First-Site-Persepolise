<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="GalleryManager.aspx.cs" Inherits="Admin_GalleryManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>مدیریت گالری تصاویر</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteGallery" InsertMethod="InsertGallery" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataGallery" TypeName="GalleryTableAdapters.GalleryTableAdapter" UpdateMethod="UpdateGallery">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="subject" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="image" Type="String" />
            <asp:Parameter Name="subject" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br /><br />
    <table style="direction:rtl;font-family:IRNazanin" align="right">
        <tr>
            <td>عتوان گالری:</td>
            <td><asp:TextBox ID="txttitle" runat="server" Font-Names="IRNazanin" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>تصویر گالری:</td>
            <td width="100"><asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" /></td>
         </tr>
        <tr>
            <td>
                <asp:Button ID="BtnSend" runat="server" Text="ارسال تصویر" Font-Bold="True" Font-Names="IRNazanin" OnClick="BtnSend_Click" /></td>
            <td>
                <asp:label runat="server" ID="lblalert"></asp:label>
            </td>
        </tr>
    </table>    
</asp:Content>

