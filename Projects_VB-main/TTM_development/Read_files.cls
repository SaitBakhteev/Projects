VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Read_files"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private Sub read_metrology_files(index As Integer)
On Error GoTo err
Dim slovo As String
With Form1.MSFlexGrid1(0)
.Rows = 1
dd = 0: Curve_information = ""
Open Opened_file(index) For Input As #1  '�������� �����
Input #1, slovo
'******** ������ ����������������� ������ �������������� ������ ************
Do
 dd = dd + 1
 Input #1, slovo
  dd1 = 0
  slovo1 = "": slovo2 = "": slovo3 = ""
   For I = 1 To Len(slovo)
    If Mid(slovo, I, 1) = Chr(9) Then dd1 = dd1 + 1
    If dd1 = 0 Then slovo1 = slovo1 & Mid(slovo, I, 1)
    If dd1 = 1 Then slovo2 = slovo2 & Mid(slovo, I, 1)
    If dd1 = 2 Then slovo3 = slovo3 & Mid(slovo, I, 1)
   Next I
 If Mid(Form1.Label3.Caption, 15, 1) = "," Then _
 slovo1 = Replace(slovo1, ".", ","): _
 slovo2 = Replace(slovo2, ".", ","): _
 slovo3 = Replace(slovo3, ".", ",")
 slovo1 = Replace(slovo1, Chr(32), ""): slovo1 = Replace(slovo1, Chr(9), "")
 slovo2 = Replace(slovo2, Chr(32), ""): slovo2 = Replace(slovo2, Chr(9), "")
 slovo3 = Replace(slovo3, Chr(32), ""): slovo3 = Replace(slovo3, Chr(9), "")
 
 If slovo <> "<�������� �������>" Then .Rows = .Rows + 1: .TextMatrix(dd, 0) = dd: .TextMatrix(dd, 1) = slovo1: .TextMatrix(dd, 2) = slovo2
 If slovo <> "<�������� �������>" And slovo3 <> "" Then .TextMatrix(dd, 3) = slovo3
Loop Until slovo = "<�������� �������>"
n = dd - 1
ReDim X1(n): ReDim X2(n): ReDim X3(n)
For I = 1 To n: X1(I) = CSng(.TextMatrix(I, 1)): X2(I) = CSng(.TextMatrix(I, 2))
  If .TextMatrix(I, 3) <> "" Then X3(I) = CSng(.TextMatrix(I, 3))
Next I
End With

'******** ����������� ������ ����� ��� ���������� �������� �������� �� �������������� ������ ***********
Do
Line Input #1, slovo
If slovo <> "</�������� �������>" Then Curve_information = Curve_information & slovo & Chr(13) + Chr(10)
Loop Until slovo = "</�������� �������>"
Close #1
Form1.Text3(2).Text = Curve_information
err: If err.Number = 53 Then MsgBox "���� � ����� ������ �� ������", vbOKOnly, "������ � �������� �����": _
File_work.uslovie_vypolneniya_procedury = False: Exit Sub
End Sub '���������� ���������� �������� ����� ��������� � ��� ��������

Private Sub read_LIES_files(index As Integer)
Unload Form3
On Error GoTo err
ReDim X1(88000): ReDim X2(88000)
Dim slovo  As String
Dim dd     As Single
dd = 0
Open Opened_file(index) For Input As #1  '�������� �����
Load Form2: Form2.Show 0, Form1: Form2.Caption = "������ ����� �������..."
Form2.progress_bar_settings 0, 88000

'******** ������ ����������������� ������ ������� ************
 Do
  dd = dd + 1
  Form2.progress_bar (dd)
  Input #1, slovo
  dd1 = 0
  slovo2 = "": slovo3 = ""
  For I = 1 To Len(slovo)
    If Mid(slovo, I, 1) = Chr(9) Then dd1 = dd1 + 1
    If dd1 = 1 Then slovo2 = slovo2 & Mid(slovo, I, 1)
    If dd1 = 2 Then slovo3 = slovo3 & Mid(slovo, I, 1)
  Next I
 If Mid(Form1.Label3.Caption, 15, 1) = "," Then slovo2 = Replace(slovo2, ".", ","): _
 slovo3 = Replace(slovo3, ".", ","):
 slovo2 = Replace(slovo2, Chr(32), ""): slovo2 = Replace(slovo2, Chr(9), "")
 slovo3 = Replace(slovo3, Chr(32), ""): slovo3 = Replace(slovo3, Chr(9), "")
 X1(dd) = CSng(slovo2): X2(dd) = CSng(slovo3)
Loop Until (EOF(1))
Close #1
n = dd
'Peak_calc.automatic_initialization_of_values
err: If err.Number = 53 Then MsgBox "���� � ����� ������ �� ������", vbOKOnly, "������ � �������� �����": _
File_work.uslovie_vypolneniya_procedury = False: Exit Sub
End Sub '���������� ���������� �������� ����� ������� ����
Sub open_file_of_Analytical_lines()
With Form1.CommonDialog1
.CancelError = False: .Filter = "��������� ������������� �����|*.cal": .ShowOpen
On Error GoTo err
Open .FileName For Input As #1  '
End With
dd = 1
Input #1, slovo, slovo1, slovo2, slovo3
Do
dd = dd + 1
Input #1, slovo, slovo1, slovo2, slovo3
With Form1.MSFlexGrid1(2)
.Rows = dd
If Mid(Form1.Label3.Caption, 15, 1) = "," Then slovo2 = Replace(slovo2, ".", ","):
.TextMatrix(dd - 1, 1) = slovo: .TextMatrix(dd - 1, 2) = slovo1: .TextMatrix(dd - 1, 3) = slovo2: .TextMatrix(dd - 1, 4) = slovo3
.TextMatrix(dd - 1, 5) = K3: .TextMatrix(dd - 1, 6) = K4
End With
Loop Until EOF(1)
Close #1
err: Exit Sub
End Sub '������� ���� ��������� ������������� �����
Sub Read_files(index As Integer)
'If mode_number = 0 Then read_metrology_files (index)
'If tab_item = 2 Then
read_LIES_files (index)
End Sub '�������� ���� ������ ������
