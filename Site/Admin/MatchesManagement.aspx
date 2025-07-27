<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="MatchesManagement.aspx.cs" Inherits="Admin_MatchesManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" style="align-self:center;" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="mId" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="stadium" HeaderText="استادیوم برگزاری مسابقه" SortExpression="stadium" />
            <asp:BoundField DataField="date" HeaderText="تاریخ" SortExpression="date" />
            <asp:BoundField DataField="guest" HeaderText="میهمان" SortExpression="guest" />
            <asp:BoundField DataField="res2" SortExpression="res2" />
            <asp:BoundField DataField="res1" SortExpression="res1" />
            <asp:BoundField DataField="host" HeaderText="میزبان" SortExpression="host" />
            <asp:BoundField DataField="mId" HeaderText="هفته" InsertVisible="False" ReadOnly="True" SortExpression="mId" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllMatch" TypeName="MatchTableAdapters.MatchTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_mId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="host" Type="String" />
                <asp:Parameter Name="res1" Type="Int32" />
                <asp:Parameter Name="res2" Type="Int32" />
                <asp:Parameter Name="stadium" Type="String" />
                <asp:Parameter Name="guest" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="host" Type="String" />
                <asp:Parameter Name="res1" Type="Int32" />
                <asp:Parameter Name="res2" Type="Int32" />
                <asp:Parameter Name="stadium" Type="String" />
                <asp:Parameter Name="guest" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="Original_mId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
    <br />
    <table style="direction:rtl;font-family:IRNazanin" align="right">
        <tr>
            <td>میزبان</td>
            <td>
                <asp:TextBox ID="txthost" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">تعداد گل میزبان</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtres1" runat="server" Width="25px" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>تعداد گل میهمان</td>
            <td>
                <asp:TextBox ID="txtres2" runat="server" Width="25px" TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>میهمان</td>
            <td>
                <asp:TextBox ID="txtguest" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>استادیوم محل برگزاری</td>
            <td>
                <asp:TextBox ID="txtstadium" runat="server" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>تاریخ برگزاری</td>
        
        <td>
            <asp:TextBox ID="txtdatetime" runat="server" TextMode="DateTime" Width="159px"></asp:TextBox>
        </td>
        </tr>
            <tr>
            <td>
                <asp:Button ID="btnsend" runat="server" Text="ثبت" OnClick="btnsend_Click" /></td>
            <td>
                <asp:Label ID="lblalert" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
</asp:Content>

