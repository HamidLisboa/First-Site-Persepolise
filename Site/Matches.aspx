<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="Matches.aspx.cs" Inherits="Matches" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    &nbsp;&nbsp;&nbsp;
    
    <asp:GridView ID="GridView1" CellSpacing="20" runat="server"  AutoGenerateColumns="False" DataKeyNames="mId" DataSourceID="ObjectDataSource1" GridLines="None" style="margin-left:100px;">
        <Columns>
            <asp:BoundField DataField="stadium" HeaderText="محل برگزاری" SortExpression="stadium" />
            <asp:BoundField DataField="date" HeaderText="زمان برگزاری" SortExpression="date" />
            <asp:BoundField DataField="guest" HeaderText="میهمان" SortExpression="guest" />
            <asp:BoundField DataField="res2" SortExpression="res2" />
            <asp:BoundField DataField="res1" SortExpression="res1" />
            <asp:BoundField DataField="host" HeaderText="میزبان" SortExpression="host" />
        </Columns>
    </asp:GridView>
        
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllMatch" TypeName="MatchTableAdapters.MatchTableAdapter"></asp:ObjectDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

