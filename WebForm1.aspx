<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Loginpage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div><table align="center">
               <h2 align="center"> Login Form</h2>
               <tr>
                   <td>Enter User Name </td>
                 <td>  <asp:TextBox ID="TxtName" runat="server" ></asp:TextBox>  </td>
               </tr>
               <tr>
                   <td>EnterPassword </td>
                   <td><asp:TextBox ID="TxtPwd" runat="server" TextMode="Password"></asp:TextBox> </td>
               </tr>
               <tr>
                   <td align="right"><asp:Button ID="Btnlogin" runat="server" Text ="Login" PostBackUrl="~/validate.aspx" /> </td>
                   <td><asp:Button ID="btnReset" runat="server" Text ="Reset" OnClick="btnReset_Click" /></td>
               </tr>
           </table>
        </div>
    </form>
</body>
</html>
