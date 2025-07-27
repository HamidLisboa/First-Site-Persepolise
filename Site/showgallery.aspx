<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="showgallery.aspx.cs" Inherits="showgallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div align="center" style="width:790px">
        <asp:Label ID="lblsub" runat="server" Font-Names="IRNazanin" Font-Size="X-Large" ForeColor="White" BackColor="Red"></asp:Label>
        <asp:DataList ID="DataList4" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" DataKeyField="Id" DataSourceID="ObjectDataSource1">
            <ItemTemplate>
                <img src="Gallery/<%# Eval("image") %>" alt="<%#Eval("subject") %>" height="210" width="300" />
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBySub" TypeName="Gallery2TableAdapters.GalleryTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="subject" QueryStringField="subject" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>   
       </div>
     </asp:Content>

