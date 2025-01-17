<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminsucc.aspx.cs" Inherits="FaReNEW.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Adminsucc.css" />
</head>
<body>
    <form id="form1" runat="server">
          <div class="nav">
            <asp:Label ID="lb1" runat="server"  Text="FACE CAPPERS"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server"  >Report An Error</asp:LinkButton>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >About Us</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" >Discover</asp:LinkButton>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Home" />
        </div>
        <div class="view">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True"  DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Mob" HeaderText="Mob" SortExpression="Mob" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Registration]" UpdateCommand="update [Registration] set [User_Name]=@User_Name, [Password]=@Password, [Email]=@Email, [Mob]=@Mob, [DOB]=@DOB where [Mob]=@Mob "></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Registered Accounts"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" AutoGenerateEditButton="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                <Columns>
                    <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                    <asp:BoundField DataField="Personal_Credentials" HeaderText="Personal_Credentials" SortExpression="Personal_Credentials" />
                    <asp:BoundField DataField="Credit_Score" HeaderText="Credit_Score" SortExpression="Credit_Score" />
                    <asp:BoundField DataField="Criminal_Records" HeaderText="Criminal_Records" SortExpression="Criminal_Records" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [People]" UpdateCommand="update [People] set [User_Name]=@User_Name, [Personal_Credentials]=@Personal_Credentials, [Credit_Score]=@Credit_Score, [Criminal_Records]=@Criminal_Records where [Personal_Credentials]=@Personal_Credentials" DeleteCommand="delete from [People] where [Personal_Credentials]=@Personal_Credentials"></asp:SqlDataSource>
            <asp:Label ID="Label2" runat="server" Text="Registered People"></asp:Label>

        </div>
    </form>
</body>
</html>
