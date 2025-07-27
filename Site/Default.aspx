<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
 <div id="right-side">               
    <asp:datalist runat="server" DataKeyField="nId" DataSourceID="ObjectDataSource1" style="direction: ltr" HorizontalAlign="Right" RepeatColumns="2" RepeatDirection="Horizontal" CellSpacing="10">
        <ItemTemplate>
    
            <div class="middle-left">                
               <a href="<%# Eval("nId","shownews.aspx?nid={0}")%>" title="<%# Eval("title") %>" target="_blank" >
                <img src="<%# Eval("image","Admin/img/{0}") %>" alt="<%# Eval("title") %>" width="200px" height="200px" />
               </a>
                <br />
                <a href="<%# Eval("nId","shownews.aspx?nid={0}")%>" title="<%# Eval("title") %>" target="_blank" style="font-family: IRNazanin; font-size: medium; text-decoration: none"><%# Eval("title") %></a>
            </div>
        </ItemTemplate>
    </asp:datalist>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="NewsTableAdapters.NewsTableAdapter"></asp:ObjectDataSource>
</div>
            
<div id="left-side" dir="rtl">
                <div class="Left-side-top"><h3>جدول رده بندی لیگ</h3></div>
                <div class="Left-side-middle" dir="rtl">
                    <table >
                        <tr>
                            <td width="20">رتبه</td>
                            <td width="130">تیم</td>
                            <td width="50">بازیها</td>
                            <td width="45">امتیاز</td>

                        </tr>
                     </table>
                  <div id="tablerate">  
                    <table width="10" cellspacing="3">
                        <tr><td>1</td></tr><tr><td>2</td></tr><tr><td>3</td></tr><tr><td>4</td></tr><tr><td>5</td></tr><tr><td>6</td></tr><tr><td>7</td></tr><tr><td>8</td></tr><tr><td>9</td></tr><tr><td>10</td></tr><tr><td>11</td></tr><tr><td>12</td></tr><tr><td>13</td></tr><tr><td>14</td></tr><tr><td>15</td></tr><tr><td>16</td></tr>
                    </table>
                   </div>
                   
                     <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="ObjectDataSource3">
                        <ItemTemplate>
                            <table style="border-top-style: double; border-top-width: thin; border-top-color: #FF0000">
                                <tr dir="rtl">
                                    <td width="130"><%# Eval("Team") %></td>
                                    <td width="50"><%# Eval("Matches") %></td>
                                    <td width="45"><%# Eval("Points") %></td>
                                </tr>
                            </table>
                            
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataLittleTable" TypeName="LeagueTblLitlTableAdapters.LeagueTableTableAdapter"></asp:ObjectDataSource>
                
                    <a href="LeagueTable.aspx" style="text-decoration:none">مشاهده جدول کامل لیگ</a> 
                </div>
                <div class="Left-side-top"><h3>تقویم</h3></div>
                <div class="Left-side-middle" dir="ltr">
                    <center>
                    <table style="align-content:center">
                        <tr><td>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            </td></tr>
                        <tr><td align="center">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Label ID="lbldate" runat="server"></asp:Label>
                                    <br />
                                    <asp:Label ID="lbltime" runat="server"></asp:Label>
                                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                                    </asp:Timer>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            </td></tr>
                    </table>
                        </center>
                </div> 
            </div>
        
</asp:Content>

