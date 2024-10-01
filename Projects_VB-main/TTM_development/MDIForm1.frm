VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   8745
   ClientLeft      =   120
   ClientTop       =   540
   ClientWidth     =   16335
   LinkTopic       =   "MDIForm1"
   Begin VB.Menu mnuMode 
      Caption         =   "Режим"
      Index           =   0
      Begin VB.Menu mnu_Mode_type 
         Caption         =   "Метрология"
         Checked         =   -1  'True
         Index           =   0
      End
      Begin VB.Menu mnu_Mode_type 
         Caption         =   "ЛИЭС"
         Index           =   1
      End
   End
   Begin VB.Menu mnuGraphic 
      Caption         =   "Графика"
      Begin VB.Menu mnuClear 
         Caption         =   "Очистить"
         Index           =   0
      End
   End
   Begin VB.Menu mnuPopup_meny_for_grid 
      Caption         =   "Данные"
      Begin VB.Menu mnuDelete 
         Caption         =   "Удалить"
         Index           =   0
         Shortcut        =   {DEL}
      End
      Begin VB.Menu mnu_Insert_row 
         Caption         =   "Добавить строку"
         Index           =   0
      End
      Begin VB.Menu mnucopy 
         Caption         =   "Копировать"
         Index           =   0
      End
      Begin VB.Menu mnuPaste 
         Caption         =   "Вставить"
         Index           =   0
      End
      Begin VB.Menu mnuIterations 
         Caption         =   "Выбор итерации"
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "2"
            Index           =   0
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "3"
            Index           =   1
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "4"
            Index           =   2
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "5"
            Index           =   3
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "6"
            Index           =   4
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "8"
            Index           =   5
         End
      End
   End
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub mnu_Choose_iterations_Click(index As Integer)
For i = 0 To 5: mnu_Choose_iterations(i).Checked = False: Next i
mnu_Choose_iterations(index).Checked = True
End Sub 'выбор итерации для точности расчета пика

Private Sub mnu_Insert_row_Click(index As Integer)
Form1.MSFlexGrid1.Rows = Form1.MSFlexGrid1.Rows + 1
If mode_number = 1 Then Peak_calc.automatic_initialization_of_values
End Sub

Private Sub mnu_Mode_type_Click(index As Integer)
mode_number = index
For i = 0 To 1: mnu_Mode_type(i).Checked = False: Next i
mnu_Mode_type(index).Checked = True
definition_of_mode
File_data.definition_of_FlexGride_construction
Erase Opened_file()
Erase X1()
Erase X2()
Form1.Picture1.Cls
End Sub 'выбор режима
Private Sub mnuClear_Click(index As Integer)
Form1.Picture1.Cls
End Sub

Private Sub mnucopy_Click(index As Integer)
For i = 1 To Form1.MSFlexGrid1.Rows - 1
 slovo1 = Form1.MSFlexGrid1.TextMatrix(i, 1) & Chr(9)
 slovo2 = Form1.MSFlexGrid1.TextMatrix(i, 2) & Chr(9)
 slovo3 = Form1.MSFlexGrid1.TextMatrix(i, 3) & Chr(9)
 slovo = slovo & slovo1 & slovo2 & slovo3 & Chr(13) + Chr(10)
 Clipboard.SetText slovo
Next i
End Sub 'копирование всех данных из таблицы
Sub definition_of_mode()
If mode_number = 0 Then enabled_buttons_for_metrology
If mode_number = 1 Then enabled_buttons_for_LIES
End Sub 'условия установки режима
Private Sub enabled_buttons_for_metrology()
For i = 3 To 8: Form1.Command3(i).Enabled = True: Next i
For i = 9 To 13: Form1.Command3(i).Enabled = False: Next i
Form1.Combo1.Enabled = True
Form1.Text1(0).Enabled = True
Form1.Text3(0).Enabled = True
Form1.Text3(1).Enabled = True
mnuIterations.Enabled = False
End Sub 'доступные кнопки для режима метрологии
Private Sub enabled_buttons_for_LIES()
For i = 3 To 8: Form1.Command3(i).Enabled = False: Next i
For i = 9 To 13: Form1.Command3(i).Enabled = True: Next i
Form1.Combo1.Enabled = False
Form1.Text3(0).Enabled = False
Form1.Text3(1).Enabled = False
mnuIterations.Enabled = True
mnu_Choose_iterations(1).Checked = True
End Sub 'доступные кнопки для режима ЛИЭС

Private Sub mnuDelete_Click(index As Integer)
'Form1.MSFlexGrid1.Clear
End Sub

Private Sub mnuPaste_Click(index As Integer)
Form1.Picture1.Print "DFDFD"
End Sub 'вставка данных в таблицу


