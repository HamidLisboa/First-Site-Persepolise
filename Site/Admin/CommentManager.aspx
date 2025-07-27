<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="CommentManager.aspx.cs" Inherits="Admin_CommentManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cId" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="cId" HeaderText="cId" InsertVisible="False" ReadOnly="True" SortExpression="cId" />
            <asp:BoundField DataField="cuser" HeaderText="cuser" SortExpression="cuser" />
            <asp:BoundField DataField="cemail" HeaderText="cemail" SortExpression="cemail" />
            <asp:BoundField DataField="cdate" HeaderText="cdate" SortExpression="cdate" />
            <asp:BoundField DataField="ctext" HeaderText="ctext" SortExpression="ctext" />
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid" />
            <asp:CheckBoxField DataField="approved" HeaderText="approved" SortExpression="approved" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteCommentById" InsertMethod="InsertComment" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataComment" TypeName="CommentTableAdapters.CommentTableAdapter" UpdateMethod="UpdateCommentById">
        <DeleteParameters>
            <asp:Parameter Name="Original_cId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cuser" Type="String" />
            <asp:Parameter Name="cemail" Type="String" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="ctext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="approved" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cuser" Type="String" />
            <asp:Parameter Name="cemail" Type="String" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="ctext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="approved" Type="Boolean" />
            <asp:Parameter Name="Original_cId" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>

