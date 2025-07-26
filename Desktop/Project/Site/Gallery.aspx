<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="ObjectDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" HorizontalAlign="Center">
       <ItemStyle BorderColor="Red" BorderStyle="Double" BorderWidth="1px" HorizontalAlign="Right"/>
                        <ItemTemplate>
                            <a href="<%# Eval("subject","showgallery.aspx?subject={0}")%>" target="_blank" style="text-decoration:none;">
                          <center><h5><%#Eval("subject") %></h5></center>
                            
                                <img src="Gallery/<%# Eval("image") %>" title="<%# Eval("subject") %>" alt="<%# Eval("subject") %>" width="300" height="300" /></a>
                            </ItemTemplate>

    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBySubject" TypeName="Gallery2TableAdapters.GalleryTableAdapter"></asp:ObjectDataSource>
</asp:Content>

