VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "comctl32.ocx"
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form2"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4560
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   1920
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   661
      _Version        =   327682
      Appearance      =   1
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
 With Me
  .Width = 5500: .Height = 1000
  .Left = 2500: .Top = 2500
  .Caption = ""
 End With

 With ProgressBar1
 .Left = 30: .Top = 20
 .Height = 420: .Width = 5200
 End With
End Sub
Sub progress_bar_settings(min_ As Single, max_ As Single)
On Error GoTo err
Form2.ProgressBar1.Min = min_: Form2.ProgressBar1.Max = max_
err: Exit Sub
End Sub 'присвоние граничных значений прогресс бар
Sub progress_bar(value As Single)
If value <= Form2.ProgressBar1.Max Then Form2.ProgressBar1.value = value
End Sub 'процесс движения шкалы прогресс бар

