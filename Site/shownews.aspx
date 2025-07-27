<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="shownews.aspx.cs" Inherits="shownews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title><%# Eval("title") %></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="direction:ltr; float:right; width:780px; margin-right:5px;" dir="rtl" >
        
    <asp:DataList ID="DataList4" runat="server" DataKeyField="nId" DataSourceID="ObjectDataSource1" HorizontalAlign="Right" >
        
        <ItemStyle HorizontalAlign="Right" />
        
        <ItemTemplate>
            <table dir="rtl">
            <tr>
                <td style="direction:rtl;align-content:center;font-family:IRNazanin;font-weight:700; width:620px;"><%# Eval("title") %></td>
                <td style="align-content:center; width:160px;"><img src="<%# Eval("image","Admin/img/{0}") %>" alt="" title="" width="150px" height="150px" /></td>
            </tr>
            
        </table>        
            <asp:Label ID="newsLabel" runat="server" Text='<%# Eval("news") %>' Font-Names="IRNazanin"/>
            <br />
            <br />
            <br />
    <div style="font-family:IRNazanin; font-size:14px; background-color:silver;" align="center">
             تعداد بازدید:
            <asp:Label ID="viewsLabel" runat="server" Text='<%# Eval("views") %>' />
        &nbsp&nbsp&nbsp    
        تاریخ:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
           </div>
            
            
            
         </ItemTemplate>
    </asp:DataList>
        </div>
    
       <div style="height:300px">    
       <table style="direction:rtl;font-family:IRNazanin" align="right">
        <tr>
            <td>نام:</td>
            <td><asp:TextBox ID="txtname" runat="server" Font-Names="IRNazanin" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>ایمیل:</td>
            <td><asp:TextBox ID="txtemail" runat="server" Font-Names="IRNazanin" Width="500px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>نظر:</td>
            <td><asp:TextBox ID="txtdesc" runat="server" Font-Names="IRNazanin" TextMode="MultiLine" Height="200px" Width="500px"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td>
            </td>
            <td align="right">
              <asp:Button ID="BtnSend" runat="server" Text="ارسال نظر" Font-Bold="True" Font-Names="IRNazanin" OnClick="BtnSend_Click"/>
                  <asp:label runat="server" ID="lblalert"></asp:label>
            </td>
        </tr>
    </table>
        </div>
           
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByID" TypeName="NewsTableAdapters.NewsTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter Name="nId" QueryStringField="nId" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" InsertMethod="InsertComment" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataComment" TypeName="CommentTableAdapters.CommentTableAdapter">
        <InsertParameters>
            <asp:Parameter Name="cuser" Type="String" />
            <asp:Parameter Name="cemail" Type="String" />
            <asp:Parameter Name="cdate" Type="DateTime" />
            <asp:Parameter Name="ctext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="approved" Type="Boolean" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <div style="float:right; width:500px;">
    <asp:DataList ID="DataList5" runat="server" DataKeyField="cId" DataSourceID="ObjectDataSource2">
        <ItemTemplate>
            <table align="right" width="500px" dir="rtl" style="border: thin double #FF0000; font-family: IRNazanin; font-size: 16px; ">
                <tr>
                    <td align="right"><%# Eval("cuser") %>:</td>
                    <td align="left"><%# Eval("cdate") %></td>
                </tr>
                <tr>
                    <td><%# Eval("ctext") %></td>
                </tr>
            </table>
            
        </ItemTemplate>
    </asp:DataList>
        </div>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataApproved" TypeName="CommentTableAdapters.CommentTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter Name="newsid" QueryStringField="nid" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

