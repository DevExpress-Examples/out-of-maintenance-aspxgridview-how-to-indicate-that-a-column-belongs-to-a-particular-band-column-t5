Option Infer On

Imports DevExpress.Web
Imports System
Imports System.Collections.Generic
Imports System.Drawing

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Private suitableColors As New List(Of Color) From {Color.SandyBrown, Color.YellowGreen, Color.Beige, Color.DarkSalmon, Color.PowderBlue, Color.Plum, Color.MistyRose, Color.LightGray, Color.MediumAquamarine, Color.LightPink}
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub ASPxGridView1_Init(ByVal sender As Object, ByVal e As EventArgs)
        For Each column In ASPxGridView1.Columns
            If TypeOf column Is GridViewBandColumn Then
                Dim firstLevelColumn As GridViewBandColumn = CType(column, GridViewBandColumn)
                Dim index As Integer = firstLevelColumn.Index
                If index > 9 Then
                    index = index Mod 10
                End If
                firstLevelColumn.HeaderStyle.BackColor = suitableColors(index)
                For Each subcolumn In firstLevelColumn.Columns
                    Dim secondLevelColumn As GridViewDataColumn = CType(subcolumn, GridViewDataColumn)
                    secondLevelColumn.HeaderStyle.BackColor = suitableColors(index)
                    secondLevelColumn.ToolTip = String.Format("This column belongs to {0} column", firstLevelColumn.Caption.ToString())
                Next subcolumn
            End If
        Next column
    End Sub
End Class