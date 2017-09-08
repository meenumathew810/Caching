<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CachingDemo.aspx.cs" Inherits="Caching.CachingDemo" %>
<%@ OutputCache Duration="60" VaryByParam="DropDownList1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" Width="85px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="All" Value="All" Selected="True"></asp:ListItem> 
            <asp:ListItem Text="Developer" Value="Developer"></asp:ListItem> 
            <asp:ListItem Text="Tester" Value="Tester"></asp:ListItem> 
            <asp:ListItem Text="Hr" Value="Hr"></asp:ListItem> 
        </asp:DropDownList>
    
        <asp:GridView ID="GridView1" runat="server">
          
        </asp:GridView>
   
    Server Time: <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        Client Time:<script type="text/javascript"> document.write(Date()); </script>
    </div>
    </form>
</body>
</html>
