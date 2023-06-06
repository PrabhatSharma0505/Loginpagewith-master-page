<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="Loginpage.City" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <main aria-labelledby="title">
        
      
      
       <div>
           <table align="center" style="height: 111px; width: 432px">
               <h2 align="center" style="background-color: #FF00FF"> City Form </h2>
               <tr>
                   <td>City Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Entercityname"></asp:RequiredFieldValidator>
                   </td>
                   <td>&nbsp;</td>
               </tr>
                   <tr>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                       </td>
               </tr>
           </table>
          </div>
        
        <h3 style="height: 530px; font-size: medium;" accesskey="Add button">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Cityname" HeaderText="Cityname" SortExpression="Cityname" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FormConnectionString3 %>" ProviderName="<%$ ConnectionStrings:FormConnectionString3.ProviderName %>" SelectCommand="SELECT [Cityname] FROM [city]"></asp:SqlDataSource>
</h3>
           

    </main>
</asp:Content>
