<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Registration_Form.WebForm1" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Registration</title>
    <style>
        body { font-family: Arial; background:#f2f2f2; }
        .container { width:400px; margin:auto; background:white; padding:25px; margin-top:50px; border-radius:10px; box-shadow:0px 0px 10px gray; }
        h2 { text-align:center; }
        input { width:100%; padding:8px; margin-top:5px; margin-bottom:10px; }
        button { background:#007bff; color:white; padding:10px; border:none; width:100%; }
    </style>
</head>

<body>
<form id="form1" runat="server">
    <div class="container">
        <h2>Student Registration</h2>

        Name
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="Red" />
        <br />

        Class
        <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="txtClass" ErrorMessage="Class Required" ForeColor="Red" />
        <br />

        Mobile
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txtMobile" ErrorMessage="Mobile Required" ForeColor="Red" />
        <br />

        Email
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
            ControlToValidate="txtEmail" ErrorMessage="Email Required" ForeColor="Red" />
        <br />

        Address
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
            ControlToValidate="txtAddress" ErrorMessage="Address Required" ForeColor="Red" />
        <br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
    </div>
</form>
</body>
</html>
