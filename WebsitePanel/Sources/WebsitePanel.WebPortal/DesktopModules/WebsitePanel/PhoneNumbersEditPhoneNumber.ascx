<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PhoneNumbersEditPhoneNumber.ascx.cs" Inherits="WebsitePanel.Portal.PhoneNumbersEditPhoneNumber" %>
<%@ Register Src="UserControls/SimpleMessageBox.ascx" TagName="SimpleMessageBox" TagPrefix="wsp" %>

<div class="FormBody">

    <wsp:SimpleMessageBox id="messageBox" runat="server" />

    <asp:ValidationSummary ID="validatorsSummary" runat="server" 
            ValidationGroup="EditAddress" ShowMessageBox="True" ShowSummary="False" />

    <table cellspacing="0" cellpadding="3">
	    <tr>
		    <td><asp:Localize ID="locServer" runat="server" meta:resourcekey="locServer" Text="Server:"></asp:Localize></td>
		    <td>
		        <asp:dropdownlist id="ddlServer" CssClass="NormalTextBox" runat="server" DataTextField="ServerName" DataValueField="ServerID"></asp:dropdownlist>
		    </td>
	    </tr>
	    <tr id="PhoneNumbersRow" runat="server">
		    <td><asp:Localize ID="Localize1" runat="server" meta:resourcekey="lblPhoneNumbers" Text="Phone Numbers:"></asp:Localize></td>
		    <td>
		    
		        <asp:TextBox id="Phone" runat="server" Width="260px" MaxLength="45" CssClass="NormalTextBox"/>
                <asp:RequiredFieldValidator ID="requireStartPhoneValidator" runat="server" meta:resourcekey="requireStartPhoneValidator"
                    ControlToValidate="Phone" SetFocusOnError="true" Text="*" Enabled="false" ValidationGroup="EditAddress" ErrorMessage="Enter Phone Number" />					            

		    </td>
	    </tr>
	    <tr>
		    <td><asp:Localize ID="lblComments" runat="server" meta:resourcekey="lblComments" Text="Comments:"></asp:Localize></td>
		    <td><asp:textbox id="txtComments" Width="300px" CssClass="NormalTextBox" runat="server" Rows="3" TextMode="MultiLine"></asp:textbox></td>
	    </tr>
    </table>

</div>
<div class="FormFooter">
    <asp:Button ID="btnUpdate" runat="server" meta:resourcekey="btnUpdate" CssClass="Button1" Text="Update" OnClick="btnUpdate_Click" ValidationGroup="EditAddress" />
    <asp:Button ID="btnCancel" runat="server" meta:resourcekey="btnCancel" CssClass="Button1" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
</div>