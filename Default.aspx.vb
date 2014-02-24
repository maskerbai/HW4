
Partial Class _Default


    Inherits System.Web.UI.Page


   
    

    Protected Sub clear_Click(sender As Object, e As EventArgs) Handles bt_clear.Click

        tb_wageperhour.Text = String.Empty
        tb_hourworked.Text = String.Empty
        tb_pretaxDeduction.Text = String.Empty
        tb_aftertaxDeduction.Text = String.Empty

    End Sub

    Protected Sub calculate_Click(sender As Object, e As EventArgs) Handles bt_calculate.Click

        Dim wageperhour As Decimal = tb_wageperhour.Text
        Dim hour As Integer = tb_hourworked.Text
        Dim ptaxdeduction As Decimal = tb_pretaxDeduction.Text
        Dim ataxdeduction As Decimal = tb_aftertaxDeduction.Text


        Dim grosspay As Decimal = wageperhour * hour
        Dim taxablepay As Decimal = grosspay - ptaxdeduction
        Dim wagepay As Decimal

        If grosspay < 500 Then
            wagepay = taxablepay * (1 - 0.18)
        Else
            wagepay = taxablepay * (1 - 0.22)
        End If

        lb_netpay.Text = wagepay - ptaxdeduction

    End Sub

End Class
