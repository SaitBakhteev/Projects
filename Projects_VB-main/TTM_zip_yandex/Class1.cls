VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Class1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private A            As Single      '��������� � � ��������� �������� ��������� � = � +�*�
Private A1           As Single      '��������� � � ��������� �������� ���������
Private k1           As Single      '��������� �������� ��������� �� �������
Private k2           As Single      '�������� �������� ��������� �� �������
Private K3           As Single      '��������� �������� ������� �� �������
Private K4           As Single      '�������� �������� ������� �� �������
Private N1           As Single      '����� ����������� � �������
Private n2           As Single      '����� ����������� � �������
Private n3           As Single      '����� ����������� � �������
Private P            As Single      '���������� ������
Private R            As Single      '����������� ����������
Private S0           As Single      '����������� ���������� ����������
Private S1           As Single      '����������� ���������� �
Private S2           As Single      '����������� ���������� �
Private S3           As Single      '����������� ���������� X
Private S4           As Single      '����������� ���������� Y
Private t1           As Single      '����������� ���������
Private Y            As Single      '������������� ������
Private T2           As Single      '���������� �������� (%)
Private T3           As Single      '���������� ���������� (%)
Private T4           As Single      '���������� ����������������� (%)
Private T5           As Single      '���������� ���� ����� ��� �������� ���������
Private T6           As Single      '���������� ���� ����� �� �������� ��������� �� 1 ����
Private T7           As Single      '���������� ���� ����� �� �������� ��������� �� 2 �����
Private T8           As Single      '�����������, �������������� ����������� �������� ��������
Private �min         As Single      '�����������  �������� ��������� �������������� �������
Private Cmax         As Single      '������������ �������� ��������� �������������� �������
   '������� ������
Dim H0              As String      '������ ���������� ��������
Dim H1              As String      '����������� ���������� ��������
Dim H2              As String      '������ ��������������� �����������
Dim H3              As String      '����� ������ ���������� ���������
Dim H4              As String      '������ ��������� �����������
Dim H5              As String      '����������� ����� �������� ����
Dim H6              As String      '������������
  '�������
  '�������� ������
Private I            As Single
Private I1           As Single
Private I2           As Single
Private I3           As Single
Private I4           As Single
Private I5           As Single
Private I6           As Single
  '����������� �������
Private B            As Single      '
Private B1           As Single      '
Private B2           As Single      '
Private B3           As Single      '
Private B4           As Single      '
Private B5           As Single      '
Private U            As Single      '��������������������. ���������� ����� �� �������
Private U1           As Single      '���������������� ���������� ���������
Private U2           As Single      '������������� ���������������� ���������� ���������
Private U3           As Single      '
Private U4           As Single      '*
Private U5           As Single      '*
Private U6           As Single      '
Private U7           As Single      '������������ �������� ���������
Private U8           As Single      '
Private U9           As Single      '����� �������� (�����)
Private V1           As Single ' *
Private V2           As Single ' *
Private V3           As Single ' *
Private V4           As Single ' *
Private V5           As Single ' ����������� ����������� ������
Private V6           As Single ' ����������� ����������� ����
Private V7           As Single ' ����������� ����������� ��������
Private V8           As Single ' ����������� ����������� ���������
Private O            As Single '
Private O1           As Single ' ���������� ����� �� �
Private O2           As Single ' ���������� ����� �� �
 '����������� �������
 Private Q0           As Single      '
 Private Q1           As Single      '
 Private Q2           As Single      '
 Private Q3           As Single      '
 Private Q4           As Single      '
 Private Z            As Single ' �������� ����������� 1 � ������ ��������
 Private Z1           As Double ' �������� ��� ������� ����������
 Private Z2           As Single ' �������� ����������� 2 � ������ ��������
 Private Z3           As Single ' ����� ��������� ��������� 1
 Private Z4           As Double ' ����� ��������
 Private Z5           As Single ' �������� ������� ������������� ��������
 Private Z6           As Single ' �������� ������� ������������� ��������
 Private Z7           As Single
 Private Z8           As Single ' ����� ��������� ��������� 2
 Private Z9           As Double
 Private Z10          As Single
 Private Z11          As Single ' ����������� �������������� ��������� ������� ������
 Private Z12          As Single ' ����������� �������������� ��������� ������� ������
 Private Z13          As Single ' �������� ����������� �����������, %
 Private Z14          As Single ' ������������ ����� ��������
 Private Z15          As Single ' ���� ������������� ������ �������������
 Private Z16          As Single '
 Private Z17          As Single '
 Private Z18          As Single '

'����� ���������
Private F0           As Single      '1 - ���� ��������� ����������� ������� � 0 ���� ���������
Private F1           As Single      '1 - ���� ��������������� ����������� ������� � 0 ���� ���������
Private F2           As Single      '1 - ���� ���� ����������� ��� �������������� ����������� �������� ����� 0
Private F3           As Single      '
Private F4           As Single      '
Private F5           As Single      '  - ���� 1 - ������ 1 ���� � �.�.
Private W1           As Integer     '  - ������ ������� = 1, ������ ������� = 2, ��������� = 3, ���������� = 4
Private W2           As Integer     '  - ���������� ��� ����� ������

'������� �������������
Private M   As Single ' �������������� ��������
Private G   As Single ' ����������� ���������
Private E   As Single ' ����� �������
Private k   As Single '*
Dim k10(10) As Single '*
Dim B10(10)  As Single '*
Dim D(10)  As Single '*
Private PP   As Double ' ����������� �������
Private L1  As Single ' ����������� �������� �
Private L2  As Single ' ������������ ��������  �
Private L   As Single ' �������� � ������������� �������� � ���� (������ ������)
Private C   As Single ' ������������ �������� ��� ����������� P(x)
Private C11  As Single ' ����� ������ ������������
Private T   As Single ' �����������
    '�����
Private J   As Single ' J = 1 - ��� ������, J = 2 - ��� ��������
Private J1  As Single ' ��� ������������ �������
Private J2  As Single ' ��� ������������ ����
Private J3  As Single ' ��� ������������ ���������
Private J10 As Single ' ���������� �� ������ ������� ������������� (J10 = 1)
Private J11 As Single ' ���������� �� ������ ����������� ������� �������� (J11 = 1)


'*************** ����� ��� ������ �� 4-�������� �����, ������� ����� **************************
Private Sub ocenka_4_ball_proizv():
If U2 <= T3 And Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "������ �������" Else Skriterii5
End Sub '�������� ����-����������
Private Sub Skriterii3(): If n < 2 Then Exit Sub
U9 = Int(T7 * n): N1 = n:    Sort
   n = n - U9:     t1 = Studentkoef(n, P)
   MO1
   OC
  If F0 = 0 And F1 = 0 Then H3 = "   ������ �����������������": H6 = "���������� �������" Else H3 = "   ������ �������������������"
End Sub '���������� �� ���������� ����������
Private Sub Skriterii4(): If n < 2 Then Exit Sub
U9 = Int(T6 * n): N1 = n:    Sort
   n = n - U9:      t1 = Studentkoef(n, P)
   MO1
   OC
  If F0 = 0 And F1 = 0 Then H3 = "   ������ ������": H6 = "���������� �������" Else n = n + U9: Skriterii3
End Sub '���������� �� ���������� ����������
Private Sub Skriterii5():   If n < 2 Then Exit Sub
U9 = Int(T5 * n): N1 = n: MO1
   Sort
   n = n - U9:     t1 = Studentkoef(n, P)
   MO1
   OC
  If F0 = 0 And F1 = 0 Then H3 = "   ������ �������": H6 = "���������� ������� (�� �� ���� �� ���� �����) " Else n = n + U9: Skriterii4
   turn
   MO1
End Sub '���������� �� ���������� ����������

Sub EntdateInput(): On Error GoTo err
vyborka1.read_data
P = CSng(Form1.Combo1.Text): T3 = CSng(Form1.Text3(0).Text): t1 = Studentkoef(n, P)
T5 = CSng(Form1.Text2(1).Text): T6 = CSng(Form1.Text2(2).Text): T7 = CSng(Form1.Text2(3).Text)
T8 = CSng(Form1.Text2(0).Text): H1 = Form1.Text3(1).Text: H0 = "X"
If T5 > T6 Or T6 > T7 Or T5 > T7 Then MsgBox "���� ����� ������ ����������", vbOKOnly, "������": Exit Sub
If T5 > 1 Or T5 < 0 Or T6 > 1 Or T6 < 0 Or T7 > 1 Or T7 < 0 Then MsgBox "�������� ���� ����� ������ ���� � ��������� �� 0 �� 1", vbOKOnly, "������": Exit Sub
Sort
MO
err: If err.Number = 13 Then MsgBox "������� ������������ ������", vbOKOnly, "������"
End Sub '���� ������ ����� INPUT BOX
Private Sub Sort(): For I1 = 1 To U9:   For I = 1 To n - I1: U4 = Abs(U7 - X1(I)): U5 = Abs(U7 - X1(I + 1))
If U4 > U5 Then U4 = X1(I + 1): X1(I + 1) = X1(I): X1(I) = U4
Next I: Next I1
End Sub '���������� ������ � ����� ���� X1(I) �� ���������� �� ������������ ��� ��������
Private Sub MO(): MO1
 OC
 Form1.Label1.Caption = H0 & " = " & zapis_chisel(U) & " � " & zapis_chisel(U1) & " (" & zapis_chisel(U2) & "%" & "), " & H1 & ";" & _
 Chr(13) + Chr(10) & " n = " & n & "," & " tnp = " & zapis_chisel(t1) & ". P = " & zapis_chisel(P)
   If U2 <= T3 And Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "������ �������" Else H3 = "������ ���"
      W3
End Sub '������ � ������������� ���������� ���������
Private Sub W3():   If F0 = 0 And F1 = 0 Then H3 = "   ������ �������" Else Skriterii5
Form1.Label2.Caption = H0 & " = " & zapis_chisel(U) & " � " & zapis_chisel(U1) & " (" & zapis_chisel(U2) & "%" & "), " & _
H1 & " n = " & n & "," & " tnp = " & zapis_chisel(t1) & ". P = " & zapis_chisel(P) & _
". ����������� �������� = " & T8 & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
With Form1.Label1
.Caption = H3 & Chr(13) + Chr(10)
If U9 > 0 Then .Caption = .Caption & _
"�������:  ": For I = 1 To U9: .Caption = .Caption & X1(N1 + 1 - I) & "; ": Next I
End With
End Sub '������ �� ��������������� �����
Private Sub turn(): On Error GoTo err
U9 = 0:  Do: U9 = U9 + 1: n = N1 - U9: t1 = Studentkoef(n, P)
   U = 0: U1 = 0: U2 = 0: For I = 1 To n: U = U + X1(I): Next I: U = U / n
   For I = 1 To n: U1 = U1 + (U - X1(I)) ^ 2: Next I:   U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U
   If U2 <= T3 Then F0 = 0 Else F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then F1 = 0 Else F1 = 1
   Loop While F0 = 1 Or F1 = 1:   n = N1 - U9
err: If n < 2 Then Exit Sub
End Sub '�o����� ������
Private Sub OC():
If U2 <= T3 Then H4 = "��������� ����������� ���������": F0 = 0 Else H4 = "��������� ����������� �������": F0 = 1
If Abs(T8 - U) * 100 / T8 <= T3 Then H2 = "�������������� ����������� ���������": F1 = 0 Else H2 = "�������������� ����������� �������": F1 = 1
End Sub '������ ���������� ��������� � ��������������� ������������
Private Sub MO1(): If n < 2 Then Exit Sub
U = 0: U1 = 0: U2 = 0: For I = 1 To n: U = U + X1(I): Next I: U = U / n
For I = 1 To n: U1 = U1 + (U - X1(I)) ^ 2: Next I:  U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U
U7 = T8
End Sub '������ �������� � ����� ������������ ��������, ���� ��� ���, �� ������ ���� �����������

