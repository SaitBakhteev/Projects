VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Save_files"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Sub Save_files()
show_dialog_window_for_save
If mode_number = 0 Then save_metrology_file
If tab_item = 2 Then save_file_of_Analytical_lines
End Sub 'открытый рабочий блок сохранения файлов
Private Sub show_dialog_window_for_save():
Form1.CommonDialog1.CancelError = False
If mode_number = 0 Then Form1.CommonDialog1.Filter = "Файлы регрессии|*.rgs":
If tab_item = 2 Then Form1.CommonDialog1.Filter = "Расчетные аналитические линии|*.cal":
Form1.CommonDialog1.ShowSave
End Sub 'появление диалогового окна для сохранения файла регрессии
Private Sub save_metrology_file()
On Error GoTo err
Open Form1.CommonDialog1.FileName For Output As #1  'открытие файла для сохранения
Print #1, "Х" & Chr(9) & "Y" & Chr(9) & "Норм"
With Form1.MSFlexGrid1(0)
For i = 1 To .Rows - 1
 slovo1 = .TextMatrix(i, 1): slovo1 = Replace(slovo1, ",", ".")
 slovo2 = .TextMatrix(i, 2): slovo2 = Replace(slovo2, ",", ".")
 slovo3 = .TextMatrix(i, 3): slovo3 = Replace(slovo3, ",", ".")
 Print #1, slovo1 & Chr(9) & slovo2 & Chr(9) & slovo3
Next i
End With
Print #1, "<Описание графика>"
Print #1, Form1.Text3(2).Text
Print #1, "</Описание графика>"
Close #1
err: Close #1: Exit Sub
End Sub 'сохранить файл регрессии
Private Sub save_file_of_Analytical_lines()
On Error GoTo err
Open Form1.CommonDialog1.FileName For Output As #1  'открытие файла для сохранения
With Form1.MSFlexGrid1(2)
For i = 0 To .Rows - 1
 slovo1 = .TextMatrix(i, 1): slovo1 = Replace(slovo1, ",", ".")
 slovo2 = .TextMatrix(i, 2): slovo2 = Replace(slovo2, ",", ".")
 slovo3 = .TextMatrix(i, 3): slovo3 = Replace(slovo3, ",", ".")
 slovo4 = .TextMatrix(i, 4): slovo4 = Replace(slovo4, ",", ".")
 slovo = slovo1 & "," & Chr(9) & slovo2 & "," & Chr(9) & slovo3 & "," & Chr(9) & slovo4
 Print #1, slovo
Next i
End With
Close #1
err: If err.Number = 75 Then Exit Sub
End Sub 'сохранить файл расчетных аналитических линий


