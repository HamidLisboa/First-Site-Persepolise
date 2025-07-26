<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <div class="auto-style2">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="nId" DataSourceID="SqlDataSource1">
        <ItemTemplate>
       <a href="<%# Eval("nId","shownews.aspx?nid={0}")%>" title="<%# Eval("title") %>" target="_blank" style="font-family: IRNazanin;margin-right:20px; font-size: medium; text-decoration: none">...<%# Eval("title") %>*</a>
        <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PersepolisConnectionString %>" SelectCommand="SELECT * FROM [News] WHERE ([news] LIKE '%' + @news + '%') ORDER BY [nId] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="news" QueryStringField="search" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

