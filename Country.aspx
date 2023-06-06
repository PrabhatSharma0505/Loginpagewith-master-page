<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="Loginpage.Country" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <main aria-labelledby="title">
        
      
      
       <div>
           <table align="center" style="height: 111px; width: 432px">
               <h3 align="center" style="background-color: #FFFF00"> Country Form </h3>
               <tr>
                   <td>Country Name&nbsp;&nbsp; 
                       <asp:TextBox ID="TextBox2" runat="server" MaxLength="10" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Country Name"></asp:RequiredFieldValidator>
                   </td>
                   <td>&nbsp;</td>
               </tr>
                   <tr>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button2" runat="server" BackColor="pink" Text="Add" Width="73px" OnClick="Button2_Click" />
                       </td>
               </tr>
           </table>
          </div>
        
        <h3 style="height: 530px; background-color: #C0C0C0;" accesskey="Add button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="178px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 22px" Width="134px">
                <Columns>
                    <asp:BoundField DataField="Countryname" HeaderText="Countryname" SortExpression="Countryname" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FormConnectionString4 %>" ProviderName="<%$ ConnectionStrings:FormConnectionString4.ProviderName %>" SelectCommand="SELECT [Countryname] FROM [country]"></asp:SqlDataSource>
</h3>
           

    </main>
</asp:Content>
