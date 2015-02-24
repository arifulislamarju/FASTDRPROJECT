<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInPage.aspx.cs" Inherits="FASTDRPROJECT.LogInPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body  bgcolor="#996633">
    <form  id="form2" runat="server">
    <div align="center">
        <asp:Image ID="Image1" runat="server" Height="119px" ImageUrl="~/Image/FAS.png" 
            Width="1091px" />
    </div>
    <div align="right" style="width: 1348px">
        <table align="center">
            <tr>
                <td>
                    User Name</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtuserName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtuserName" ErrorMessage="Enter User Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password</td>
                <td>
                    :</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Enter The Password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td >
                    <asp:Button ID="btnSign" runat="server" CausesValidation="False" 
                        onclick="btnSign_Click1" Text="Sign In" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                    New User?Sign Up
                    <asp:LinkButton ID="btnLink" runat="server" CausesValidation="False">here</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><asp:Label ID="Label2" runat="server"></asp:Label></td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <div align="center" style="width: 1347px">
        <strong>Copyright © 2013 to FAS Finance &amp; Investment Limited. All rights 
        reserved.<br />
        This site is Design &amp; Developed by Ariful Islam. </strong>
    </div>
    </form>
    </body>
</html>
