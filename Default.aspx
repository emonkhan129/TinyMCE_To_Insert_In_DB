<%@ Page ValidateRequest="false" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
  <script>tinymce.init({ selector: 'textarea' });</script>
</head>
<body>
     <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="label1" Text="Description"></asp:Label>
        <textarea ID="descriptionTextbox" runat="server">Easy! You should check out MoxieManager!</textarea>
       <%--<asp:TextBox runat="server" TextMode="MultiLine" ID="dexcriptionTextbox"></asp:TextBox><br/>--%>
        <asp:Button runat="server" ID="saveButton" Text="Save" OnClick="saveButton_Click"/>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
