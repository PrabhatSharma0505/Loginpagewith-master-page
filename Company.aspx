<%@ Page Title=" company" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="Loginpage.Company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        
      
      
       <div>
           <table align="center" style="height: 111px; width: 432px">
               <h2 align="center"> Company Form </h2>
               <tr>
                   <td>Company Name 
                       <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="EnterCountryName"></asp:RequiredFieldValidator>
                   </td>
                   <td>&nbsp;</td>
               </tr>
                   <tr>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button1" runat="server" BackColor="Yellow" Text="Add" Width="73px" OnClick="Button1_Click" />
                       </td>
               </tr>
           </table>
          </div>
        
        <h3 style="height: 530px" accesskey="Add button">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 45px">
                <Columns>
                    <asp:BoundField DataField="Companyname" HeaderText="Companyname" SortExpression="Companyname" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FormConnectionString5 %>" ProviderName="<%$ ConnectionStrings:FormConnectionString5.ProviderName %>" SelectCommand="SELECT [Companyname] FROM [company]"></asp:SqlDataSource>
    </h3>
           

    </main>
</asp:Content>

    
