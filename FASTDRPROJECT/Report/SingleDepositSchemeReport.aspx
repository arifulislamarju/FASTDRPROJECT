<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleDepositSchemeReport.aspx.cs" Inherits="FASTDRPROJECT.Report.SingleDepositSchemeReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div align="center">
        <fieldset>
            <legend>
                <strong> Single Deposit Scheme Report</strong>
            </legend>
            <table>
                <tr>
                    <td>TDR Number</td>
                    <td>:</td>
                    <td><asp:DropDownList ID="ddlTDR" Height="25px" Width="300px" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                
                 <tr>
                    <td>TDR Number</td>
                    <td>:</td>
                    <td><asp:TextBox ID="txtSearch" Height="25px" Width="300px" runat="server"></asp:TextBox></td>
                </tr>
            <tr>
                <td></td>
                <td></td>
                <td><asp:Button ID="btnPreview" Width="100" runat="server" Text="Preview" onclick="btnPreview_Click" /></td>
            </tr>
            
                </table>
        </fieldset>
    </div>

<div align="center">
    <asp:Label ID="Label1" runat="server" Text="" style="font-weight: 700"></asp:Label>
</div>
    
    
    <div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="True" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False"
            Height="50px" style="text-align: center" GroupTreeImagesFolderUrl="" ToolbarImagesFolderUrl="" 
            ToolPanelWidth="200px" Width="350px" />
    </div>
</asp:Content>
