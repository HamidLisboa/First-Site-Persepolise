<%@ Page Title="" Language="C#" MasterPageFile="~/Persepolise.master" AutoEventWireup="true" CodeFile="LeagueTable.aspx.cs" Inherits="LeagueTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div dir="rtl">
                <div style="font-family:IRNazanin"><h3>جدول رده بندی لیگ</h3></div>
                <div style="font-family:IRNazanin">
                    <table width="650px" align="center" style="font-family:IRNazanin; background-color:red;">
                        <tr align="center">
                            <td width="20">رتبه</td>
                            <td width="130">تیم</td>
                            <td width="50">بازیها</td>
                            <td width="50">برد</td>
                            <td width="50">تساوی</td>
                            <td width="50">باخت</td>
                            <td width="50">گل زده</td>
                            <td width="90">گل خورده</td>
                            <td width="50">تفاضل</td>
                            <td width="45">امتیاز</td>

                        </tr>
                     </table>
                  <div id="tablerate">  
                    <table width="20" cellspacing="8" align="center" style="background-color:silver">
                        <tr><td>1</td></tr><tr><td>2</td></tr><tr><td>3</td></tr><tr><td>4</td></tr><tr><td>5</td></tr><tr><td>6</td></tr><tr><td>7</td></tr><tr><td>8</td></tr><tr><td>9</td></tr><tr><td>10</td></tr><tr><td>11</td></tr><tr><td>12</td></tr><tr><td>13</td></tr><tr><td>14</td></tr><tr><td>15</td></tr><tr><td>16</td></tr>
                    </table>
                   </div>
                   
                     <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" >
                        <ItemTemplate>
                            <table align="center" style="border: thin double #FF0000; margin-right:10px;">
                                <tr>
                                    <td width="140"><%# Eval("Team") %></td>
                                    <td width="50"><%# Eval("Matches") %></td>
                                    <td width="50"><%# Eval("Win") %></td>
                                    <td width="50"><%# Eval("Draw") %></td>
                                    <td width="50"><%# Eval("Lose") %></td>
                                    <td width="50"><%# Eval("GF") %></td>
                                    <td width="90"><%# Eval("GC") %></td>
                                    <td width="50"><%# Eval("GD") %></td>
                                    <td width="50"><%# Eval("Points") %></td>
                                </tr>
                            </table>
                   
                            
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataLeagueTable" TypeName="LeagueTabelTableAdapters.LeagueTableTableAdapter"></asp:ObjectDataSource>
                 </div>
                 
                
            </div>
</asp:Content>

