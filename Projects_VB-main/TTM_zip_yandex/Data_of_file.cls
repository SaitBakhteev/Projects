VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Data_of_file"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Sub Interface()
'********** �������� ������� FRAME *********************
With Form1.Frame4(0)
.Left = 50: .Top = 300: .Width = 3100: .Height = 3800: .Caption = "": .BackColor = &H8000000F
End With

'*********** ��������� ������� FLEXGRIDE ***********
With Form1.MSFlexGrid1(0)
Set .Container = Form1.Frame4(0)
.Left = 50: .Top = 150: .Width = 3000: .Height = 2200: .ScrollBars = flexScrollBarBoth: .Rows = 1:
.Cols = 4: .ColWidth(0) = 5000
.FormatString = "�" & Chr(9) & "X" & Chr(9) & "Y" & Chr(9) & "����"
For I = 1 To 3: .ColWidth(I) = 1000: .FixedAlignment(I) = 3: Next I
.ToolTipText = "X - ��������� (�������������) �������� ����������� ���������;" & _
 " Y - �������� �������������� �������;" & " ���� - �������������� �������� ��� ���������� �������"
End With
Form1.Text3(6).Visible = False

'************ ��������� ���� ����� �������� ����� ��������������� ������� ************
With Form1.Text3(2)
Set .Container = Form1.Frame4(0)
.Visible = True: .BackColor = &H80000016: .Alignment = 0: .Left = 50: .Top = 2400: .Width = 2900: .Height = 1300
.Text = "": .ToolTipText = "�������� ������, �������������� � �������"
End With
End Sub '��������� ������������ ��������� ��� ������ � ������� ������
Sub vyborka()
Dim slovo(4)   As String
Dim slovo1(4)  As String
With Form1.Frame4(1)
.Width = 3100: .Height = 3800: .Caption = "": .BackColor = &H8000000F
End With
Load Form1.MSFlexGrid1(1)
With Form1.MSFlexGrid1(1)
Set .Container = Form1.Frame4(1)
.Visible = True: .Left = 50: .Top = 150: .Width = 3000: .Height = 2200: .Cols = 2: .ToolTipText = "������ � ���������"
.ColWidth(0) = 350: .TextMatrix(0, 0) = "�": .ColWidth(1) = 1000: .FixedAlignment(1) = 3: .TextMatrix(0, 1) = "������� 1"
.Rows = 1
End With
slovo(0) = "X0": slovo(1) = "a0": slovo(2) = "a1": slovo(3) = "a2"
slovo1(0) = "����������� ��� �������������� ��������� �������� ����������� ���������"
slovo1(1) = "���������� ���� �����": slovo1(2) = "���� ����� �� ��������� �� 1 ����": slovo1(3) = "���� ����� �� ��������� �� 2 �����"
For I = 0 To 3
 If I > 0 Then Load Form1.Label5(I)
 With Form1.Label5(I)
 Set .Container = Form1.Frame4(1)
  .Visible = True: .Left = 2600: .Top = 2350 + 350 * I: .Height = 265: .Width = 400: .BackColor = &H8000000C
  .ForeColor = &HFF0000: .Font.size = 10: .Font.Bold = False: .Font.Italic = False: .Font.Name = "Symbol"
  If I = 0 Then .Font.Name = "Arial"
  .Caption = slovo(I): .Alignment = 2: .ToolTipText = slovo1(I): .Enabled = False
 End With
Next I
For I = 0 To 3
 If I > 0 Then Load Form1.Text2(I)
  With Form1.Text2(I)
   Set .Container = Form1.Frame4(1)
   .Visible = True: .Left = 1750: .Top = 2350 + 350 * I: .Height = 250: .Width = 800
   .BackColor = &H80000000: .Text = "": .Alignment = 2: .Enabled = False: .TabIndex = I
   If I > 0 Then .Text = I / 10
  End With
Next I
Load Form1.Option1(1)
slovo(0) = "����. / ����.": slovo(1) = "�����������."
slovo1(0) = "����� ������ � ��������� ��� ������� � ������� �����"
slovo1(1) = "����� ������ � ��������� ��� ���������������� �����"
For I = 0 To 1
 With Form1.Option1(I)
  Set .Container = Form1.Frame4(1)
  .Visible = True: .Top = 2450 + 600 * I: .Left = 30: .Height = 500: .Width = 1700
  .Font.size = 11: .Caption = slovo(I): .ToolTipText = slovo1(I)
 End With
Next I
Form1.Option1(0).value = True
End Sub '��������� ���������� ��� ����� � ��������

Sub properties_of_Flex_gride_for_LIES()
Load Form1.MSFlexGrid1(2)
With Form1.MSFlexGrid1(2)
Set .Container = Form1.Frame4(2): .Visible = True: .Top = 150: .Left = 20: .Height = 3500: .Width = 3000: .Cols = 3
.FormatString = "�" & Chr(9) & "�����" & Chr(9) & "����� �����" '& Chr(9) & "�1" & Chr(9) & "�2" & Chr(9) & "Y1" & Chr(9) & "Y2"
.ColWidth(1) = 1550: .ColWidth(2) = 1100
For I = 1 To 2:  .FixedAlignment(I) = 3: Next I
.ToolTipText = "��������� ������� �������"
End With
With Form1.Frame4(2)
.Caption = ""
.Top = 300

.Width = 3100: .Height = 10400
End With
End Sub '�������� FlexFrid ��� ������ ����



