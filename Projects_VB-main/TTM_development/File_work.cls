VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "File_work"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public uslovie_vypolneniya_procedury As Boolean 'переменная контроля условия выполнения процедуры
Sub otkrytie():
On Error GoTo err
Form1.CommonDialog1.CancelError = True
clear_buffer
Form1.Picture1.Cls
'If mode_number = 0 Then Form1.CommonDialog1.Filter = "Файлы регрессии|*.rgs":
'If tab_item = 2 Then
If Form1.SSTab1.Tab = 2 Then Form1.CommonDialog1.Filter = "Файлы спектров ЛИЭС|*.dat" Else _
Form1.CommonDialog1.Filter = "Файлы результатов измерений|*.msr"
Form1.CommonDialog1.ShowOpen
uslovie_vypolneniya_procedury = True
err: If err.Number = 32755 Then Exit Sub
schetchik_otkrytykh_failov
Opened_file(Count_of_opened_files) = Form1.CommonDialog1.FileName
Read_files.Read_files (Count_of_opened_files): insert_file_name_to_listbox
'If uslovie_vypolneniya_procedury = True Then
'poisk_granic_shkaly_grafika
' Graphic.Experimental_curve
If uslovie_vypolneniya_procedury = False And Count_of_opened_files > 1 Then _
Count_of_opened_files = Count_of_opened_files - 1
End Sub 'первичное открытие файлов
Private Sub schetchik_otkrytykh_failov()
Count_of_opened_files = Count_of_opened_files + 1
If Count_of_opened_files > 5 Then Erase Opened_file(): Form1.List1.Clear: Count_of_opened_files = 1
End Sub 'счетчик открытых файлов
Private Sub insert_file_name_to_listbox()
Dim slovo() As String
index = Count_of_opened_files - 1
ReDim slovo(Len(Opened_file(index + 1)))
slovo_ = "": dd = Len(Opened_file(index + 1))
Do
slovo(dd) = Mid(Opened_file(index + 1), dd, 1): dd = dd - 1
Loop While Mid(Opened_file(index + 1), dd, 1) <> "\"
For I = dd To Len(Opened_file(index + 1))
slovo_ = slovo_ & slovo(I)
Next I
slovo_ = Left(slovo_, Len(slovo_) - 4)
Form1.List1.AddItem slovo_, index
End Sub 'вставка имени файла в окно списка
Sub poisk_granic_shkaly_grafika()
If Cleen_picture = True Then poisk_granic_shkaly_grafika1
End Sub 'открытый блок реализации автомасштабирования
Private Sub poisk_granic_shkaly_grafika1()
On Error GoTo err
 Load Form2
 With Form2
  .Show 0, Form1: .Caption = "Автомасштабирование графика...": .progress_bar_settings 1, n
 End With
k1 = X1(1): k2 = X1(n): K3 = X2(1): K4 = X2(n)
For I = 1 To n
If X1(I) < k1 Then k1 = X1(I)
If X1(I) > k2 Then k2 = X1(I)
If X2(I) < K3 Then K3 = X2(I)
If X2(I) > K4 Then K4 = X2(I)
Form2.progress_bar (I)
Next I
 Unload Form2
Graphic.k1 = k1
Graphic.k2 = k2
Graphic.K3 = K3
Graphic.K4 = K4

err: If err.Number = 9 Then MsgBox "Исходные данные отсутствуют или являются некорректными", vbOKOnly, "Ошибка": Exit Sub

End Sub 'нахождение границ для построения графика при автомасштабировании
Sub repeat_read_file(index As Integer)
If Opened_file(index) <> "" Then Read_files.Read_files (index): poisk_granic_shkaly_grafika: Graphic.Experimental_curve
Unload Form2
End Sub 'общий блок повторного чтения файлов






















'****************** ЗАПАСНЫЕ БЛОКИ ****************************
'Sub zapas()
'name_of_file(count_of_files) = Form1.CommonDialog1.FileName
'index_of_load_spectrum = count_of_files
'For i = 1 To 5
'Form1.'Label2(i).BackColor = &H8000000B
'Next i
'Form1.'Label2(index_of_load_spectrum).BackColor = -2147483638



'On Error GoTo err
'If Form1.CommonDialog1.FileName <> "" And count_of_files < 6 Then chtenie_failov Else Exit Sub
'err: If err.Number = 1004 Then MsgBox ("Файл с таким именем не найден!"), , "Ошибка открытия файла": Exit Sub

'Sub sokhranenie_kalibrovannogo_spektra()
'********* ОТОБРАЖЕНИЕ ДИАЛОГОВОГО ОКНА СОХРАНЕНИЯ ***********
'Form1.CommonDialog1.CancelError = False
'Form1.CommonDialog1.Filter = "Текстовые файлы спектров|*.txt": Form1.CommonDialog1.ShowSave

'******** СОХРАНЕНИЕ КАЛИБРОВАННОГО СПЕКТРА *********
'Open Form1.CommonDialog1.FileName For Output As #1
'For i = 1 To count_of_loaded_data(index_of_load_spectrum)
'Write #1, energy(i, index_of_load_spectrum), cnts(i, index_of_load_spectrum)
'Next i
'Close #1
'End Sub 'сохранить калиброванный спектр

'******** ИЗ БЛОКА ЧТЕНИЯ ФАЙЛОВ **************************
  '******** БЛОК ПРИСВОЕНИЯ ЗНАЧЕНИЙ Х1 И Х2 *****************
'For i = 1 To n
'For I1 = 1 To Len(slovo(i))
'If Mid(slovo(i + 1), I1, 1) = ";" Then slovo2(i) = Left(slovo(i + 1), I1 - 1): _
slovo3(i) = Right(slovo(i + 1), Len(slovo(i + 1)) - I1)
'Next I1

'X1(i) = CSng(slovo2(i)): X2(i) = CSng(slovo3(i)):
'If X1(i) > K2 Then K2 = X1(i)
'If X1(i) > X1(i - 1) Then K1 = X1(i)
'Next i

'End Sub 'потенциально применимый запасной блок

