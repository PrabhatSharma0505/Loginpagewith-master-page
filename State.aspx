<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="State.aspx.cs" Inherits="Loginpage.State" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <main aria-labelledby="title">
        
      
      
       <div>
           <table align="center" style="height: 111px; width: 432px">
               <h2 align="center" style="background-color: #00FF00"> State Form </h2>
               <tr>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State Name 
                       <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter StateName"></asp:RequiredFieldValidator>
                       <br />
&nbsp;
                       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button1" runat="server" BackColor="#FF6600" Text="Add" Width="54px" OnClick="Button1_Click" />
                       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                           <Columns>
                               <asp:BoundField DataField="Statename" HeaderText="Statename" SortExpression="Statename" />
                           </Columns>
                       </asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FormConnectionString2 %>" ProviderName="<%$ ConnectionStrings:FormConnectionString2.ProviderName %>" SelectCommand="SELECT [Statename] FROM [State]"></asp:SqlDataSource>

</asp:Content>
