<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleDeposit.aspx.cs" Inherits="FASTDRPROJECT.FFIL_Quarterly_Profit_Earner_Scheme.SingleDeposit" %>
<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=4.1.7.1213, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtDepositDate" runat="server">
    </asp:CalendarExtender>
        <asp:CalendarExtender ID="CalendarExtender2" TargetControlID="txtDOB" runat="server">
    </asp:CalendarExtender>
        <asp:CalendarExtender ID="CalendarExtender3" TargetControlID="txtDateIssue" runat="server">
    </asp:CalendarExtender>
        <asp:CalendarExtender ID="CalendarExtender4" TargetControlID="txtDateMaturity" runat="server">
    </asp:CalendarExtender>
        <asp:CalendarExtender ID="CalendarExtender5" TargetControlID="txtChequeDate" runat="server">
    </asp:CalendarExtender>

    <div align="center">
        <strong><asp:Label ID="lblScheme" runat="server" Text="Quarterly Profit Scheme"></asp:Label></strong>
    </div>
    <div align="center">
        <strong><asp:Label ID="lblDeposit" runat="server" Text="Single Deposit"></asp:Label></strong>
    </div>
    <div align="center">
        <strong><asp:Label ID="Label1" runat="server"></asp:Label>
          <br />
          </strong>
    </div>
    
    
    <fieldset>
        <legend align="left">Details of Individual Deposit</legend>
        <table>
            <tr>
                <td>Deposit Date</td>
                <td>:</td>
                <td><asp:TextBox ID="txtDepositDate" runat="server"></asp:TextBox></td>
                <td></td>
                <td>TDR Serial No</td>
                <td>:</td>
                <td><asp:TextBox ID="txtTdrNo" Width="200" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtTdrNo" ForeColor="Red" runat="server" ErrorMessage="***"></asp:RequiredFieldValidator></td>
                <td>Account Number</td>
                <td>:</td>
                <td><asp:TextBox ID="txtAccNo" Width="200" runat="server"></asp:TextBox></td>
            </tr>
        </table>
    </fieldset>
     <fieldset>
        <legend align="left">Details of Depositor</legend>
        <table>
            <tr>
                <td>Client Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtClientName" Width="300" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="txtClientName" runat="server" ErrorMessage="***"></asp:RequiredFieldValidator></td>
                 <td>Father Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtFatherName" Width="300" runat="server"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td>Mother Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtMotherName" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Spouse Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtSpouseName" Width="300" runat="server"></asp:TextBox></td>
            </tr>
            
             <tr>
                <td>Religion</td>
                <td>:</td>
                <td><asp:TextBox ID="txtReligion" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                 <td>Date of Birth</td>
                <td>:</td>
                <td><asp:TextBox ID="txtDOB" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Sex</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="ddlSex"  runat="server" Height="25" Width="300">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                        <asp:ListItem>Trans-Gender</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                <td>Natiolity</td>
                <td>:</td>
                <td><asp:TextBox ID="txtNationality" Width="300" runat="server"></asp:TextBox></td>

            </tr>
             <tr>
                <td>ID</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="ddlID" runat="server" Height="25" Width="300">
                        <asp:ListItem>National ID</asp:ListItem>
                        <asp:ListItem>Passport</asp:ListItem>
                        <asp:ListItem>Driving License</asp:ListItem>
                        <asp:ListItem>TIN</asp:ListItem>
                    </asp:DropDownList>
                 </td>
                 <td></td>
                 <td>ID Number</td>
                <td>:</td>
                <td><asp:TextBox ID="txtIdNo" Width="300" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtIdNo" ForeColor="Red" runat="server" ErrorMessage="***"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Occupation</td>
                <td>:</td>
                <td><asp:TextBox ID="txtOccupation" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Organization</td>
                <td>:</td>
                <td><asp:TextBox ID="txtOrganization" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Designation</td>
                <td>:</td>
                <td><asp:TextBox ID="txtDesignation" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Office Address</td>
                <td>:</td>
                <td><asp:TextBox ID="txtOfficeAddress" TextMode="MultiLine" Width="300px" 
                        runat="server" Height="56px"></asp:TextBox></td>
            </tr>
       </table>
    </fieldset>
     <fieldset>
        <legend align="left">Details of Contact Details</legend>
        <table>
             <tr>
                <td>Present Address</td>
                <td>:</td>
                <td><asp:TextBox ID="txtPresenetAdd" TextMode="MultiLine" Height="56px" Width="300px" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Permanent Address</td>
                <td>:</td>
                <td><asp:TextBox ID="txtPermanentAdd" TextMode="MultiLine" Height="56px" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Phone</td>
                <td>:</td>
                <td><asp:TextBox ID="txtPhone" Width="300px" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Mobile</td>
                <td>:</td>
                <td><asp:TextBox ID="txtMobile" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Email</td>
                <td>:</td>
                <td><asp:TextBox ID="txtEmail" Width="300px" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Fax</td>
                <td>:</td>
                <td><asp:TextBox ID="txtFax" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             </table>
    </fieldset>
        <fieldset>
        <legend align="left">Deposit & Cheque Details</legend>
        <table>
        <tr>
                <td>Deposit Amount</td>
                <td>:</td>
                <td><asp:TextBox ID="txtDepAmount" Width="300px" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtDepAmount" ForeColor="Red" runat="server" ErrorMessage="Enter the Deposit Amount"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td>Tenure</td>
                <td>:</td>
                <td><asp:TextBox ID="txtDepTenure" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Date of Issue</td>
                <td>:</td>
                <td><asp:TextBox ID="txtDateIssue" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Date of Maturity</td>
                <td>:</td>
                <td><asp:TextBox ID="txtDateMaturity" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Cheque/PO No./DD No</td>
                <td>:</td>
                <td><asp:TextBox ID="txtChequeNo" Width="300px" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                        ControlToValidate="txtChequeNo"  runat="server" ErrorMessage="Enter the Cheque Number" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
             <tr>
                <td>Cheque Date</td>
                <td>:</td>
                <td><asp:TextBox ID="txtChequeDate" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Bank</td>
                <td>:</td>
                <td><asp:TextBox ID="txtBank" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Branch</td>
                <td>:</td>
                <td><asp:TextBox ID="txtBranch" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Taka In Words</td>
                <td>:</td>
                <td><asp:TextBox ID="txtTakaInWord" Width="300px" runat="server"></asp:TextBox></td>
            </tr>
        </table>
    </fieldset>
    <fieldset>
        <legend align="left">Source of Fund & Rate Details</legend>
        <table>
        <tr>
                <td>Source of Fund</td>
                <td>:</td>
                <td>
                    <asp:DropDownList ID="ddlFund" runat="server" Height="25" Width="300">
                        <asp:ListItem>Savings From Salary</asp:ListItem>
                        <asp:ListItem>Business Income</asp:ListItem>
                        <asp:ListItem>Inheritance</asp:ListItem>
                        <asp:ListItem>Sale of Property</asp:ListItem>
                        <asp:ListItem>Family Member&#39;s Income</asp:ListItem>
                        <asp:ListItem>Remittance</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
             <tr>
                <td>Interest Rate</td>
                <td>:</td>
                <td><asp:TextBox ID="txtRate" Width="300" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="txtRate" runat="server" ErrorMessage="***"></asp:RequiredFieldValidator></td>
            </tr>
            
             <tr>
                <td>Name of RM</td>
                <td>:</td>
                <td><asp:TextBox ID="txtRM" Width="300" runat="server"></asp:TextBox></td>
            </tr>
        </table>
    </fieldset>
        <fieldset>
        <legend align="left">Nominee Information</legend>
        <table>
         <tr>
                <td>Nominee-1</td>
                <td>:</td>
                <td><asp:TextBox ID="txtNom1" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                 <td>Nominee-2</td>
                <td>:</td>
                <td><asp:TextBox ID="txtNom2" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Father's Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtFat1Name" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Father's Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtFat2Name" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Mother's Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtMot1Name" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Mother's Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtMot2Name" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Spouse's Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtSP1Name" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Spouse's Name</td>
                <td>:</td>
                <td><asp:TextBox ID="txtSP2Name" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Relationship</td>
                <td>:</td>
                <td><asp:TextBox ID="txtRelation1" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Relationship</td>
                <td>:</td>
                <td><asp:TextBox ID="txtRelation2" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Percentage</td>
                <td>:</td>
                <td><asp:TextBox ID="txtPercent1" Width="300" runat="server"></asp:TextBox></td>
                <td></td>
                <td>Percentage</td>
                <td>:</td>
                <td><asp:TextBox ID="txtPercent2" Width="300" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Image</td>
                <td>:</td>
                <td><asp:FileUpload ID="FileUpload1" Width="300" runat="server" /></td>
                <td></td>
                <td>Image</td>
                <td>:</td>
                <td><asp:FileUpload ID="FileUpload2" Width="300" runat="server" /></td>
            </tr>
             <tr>
                <td>signature</td>
                <td>:</td>
                <td><asp:FileUpload ID="FileUpload3" Width="300" runat="server" /></td>
                <td></td>
                <td>Singnature</td>
                <td>:</td>
                <td><asp:FileUpload ID="FileUpload4" Width="300" runat="server" /></td>
            </tr>
        </table>
    </fieldset>
    <div align="center">
        <table>
            
            
        </table>
    </div>

    <div>
        <table>
            <tr>
                <td></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td> <asp:Button ID="btnSave" runat="server" Text="Save" 
                       Width="126px" onclick="btnSave_Click" /></td>
            </tr>
        </table>
       
    </div>
</asp:Content>
