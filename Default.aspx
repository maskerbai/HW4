<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wage Calculator</title>
    <link rel="stylesheet" href="formatting.css" />
</head>

<body>
    <form id="form1" runat="server">
    <div style="height: 236px; margin-left: 40px">
    
        <br />
        <h3>Wage Calculator</h3><br />
        Wages per hour:<asp:TextBox ID="tb_wageperhour" runat="server" Height="16px" style="margin-left: 0px; margin-top: 1px;"></asp:TextBox>
        <br />
        Work hours this week:<asp:TextBox ID="tb_hourworked" runat="server"></asp:TextBox>
        <br />
        Pre-tax deduction:<asp:TextBox ID="tb_pretaxDeduction" runat="server"></asp:TextBox>
        <br />
        After-tax deduction:<asp:TextBox ID="tb_aftertaxDeduction" runat="server"></asp:TextBox>
        <br />
        <br />
        Your Net Pay is:
        <asp:Label ID="lb_netpay" runat="server"></asp:Label>
        <br />
        <p style="margin-left: 80px; height: 35px; width: 230px;">
            <asp:Button ID="bt_calculate" runat="server" Text="Calculate" Width="78px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="bt_clear" runat="server" Text="Clear" Width="72px" />
        </p>
        <p style="margin-left: 120px">
            &nbsp;</p>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
