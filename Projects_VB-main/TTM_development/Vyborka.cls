VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Vyborka1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private A             As Single ' ��������� � � ��������� �������� ��������� � = � +�*�
Private A1            As Single ' ��������� � � ��������� �������� ���������
Private A10           As Single ' ����������� ��� �������������� ����������� �������� ���������
Private N1            As Single ' ��������� ����� ���������� � ������� ��������
Private n2            As Single ' ��������� ����� ���������� � ������� ���������
Private n3            As Single ' ����� ��������� ������������ ������
Private n4            As Single ' ����� ���������� �� ��������� ������������ ������
Private n5            As Single ' ����� ���������� ������������ ������
Private n6            As Single ' ����� ���������� �� ���������� ������������ ������
Private P             As Single ' ���������� ������
Private R             As Single ' ����������� ����������
Private S0            As Single ' ����������� ���������� ����������
Private S1            As Single ' ����������� ���������� �
Private S2            As Single ' ����������� ���������� �
Private S3            As Single ' ����������� ���������� X
Private S4            As Single ' ����������� ���������� Y
Private t1            As Single ' ����������� ���������
Private FK            As Single ' ����������� ������
Private Y             As Single ' ������������� ������
Private Y1            As Single ' ������������� ������
Private Y2            As Single ' ������������� ������
Private T2            As Single ' ���������� �������� (%)
Private T3            As Single ' ���������� ���������� (%)
Private T4            As Single ' ���������� ����������������� (%)
Private T5            As Single '
Private T6            As Single '
Private T7            As Single '
Private T8            As Single '
Private �min          As Single ' �����������  �������� ��������� �������������� �������
Private Cmax          As Single ' ������������ �������� ��������� �������������� �������
  
  '����������� �������
Private B             As Double '
Private B1            As Double '
Private B2            As Double '
Private B3            As Double '
Private B4            As Double '
Private B5            As Double '
Private U             As Double ' ���������� ����� �� �������. �������
Private U1            As Double '
Private U2            As Single '
Private U3            As Single '
Private U4            As Double '
Private U5            As Double '1 - ������ �� ���� ����
Private U6            As Double '1 - ������ �� ���� ������
Private U7            As Double '
Private U8            As Double '
Private U9            As Double ' ���� �������� (�����)
Private U10           As Double '
Private U11           As Double '1 - ������������� ������ ��������
Private U12           As Double '  - ������������� ������
Sub read_data()
With Form1.MSFlexGrid1(1)
ReDim X1(.Rows + 1)
dd = 0: For I = 1 To .Rows - 1
If .TextMatrix(I, ColSel_) <> "" Then dd = dd + 1: X1(dd) = .TextMatrix(I, ColSel_)
Next I: n = dd
End With
End Sub '������ ������ �� �������
Private Sub Show_result(): On Error GoTo err
Dim U_                 As Single
Dim doverit_interval   As Single
Dim procent            As Single
P = CSng(Form1.Combo1.Text): U = 0: U1 = 0: t1 = Studentkoef(n, P)
For I = 1 To n: U = U + X1(I): Next I: U = U / n: U_ = U
For I = 1 To n: U1 = U1 + (X1(I) - U) ^ 2: Next I
doverit_interval = Sqr(U1 / (n * (n - 1))) * t1: procent = doverit_interval / U * 100
Form1.Label1.Caption = "X = " & zapis_chisel(U_) & Chr(177) & zapis_chisel(doverit_interval) & " (" & zapis_chisel(procent) & "%" & ") " & Form1.Text3(1).Text
err: If err.Number = 13 Then MsgBox "������� ������������ ��������", vbOKOnly, "������": Exit Sub
End Sub '������������� ����������
Private Sub ocenka_2_ball_uchebn(): On Error GoTo err
With Form1.Label1
If Form1.Text2(0).Text = "" Then Form1.Text2(0).Text = U
T8 = CSng(Form1.Text2(0).Text): T3 = CSng(Form1.Text3(0).Text)
U1 = Sqr(U1 / (n - 1)) * t1 / Sqr(n): U2 = U1 * 100 / U: H3 = "������ �������": H4 = "": H2 = ""
 If T3 < U2 Then H3 = " ������ ���": H4 = "��������� ����������� �������"
 If T3 < Abs(T8 - U) * 100 / T8 Then H3 = "������ ���": H2 = "�������������� ����������� �������"
 .Caption = .Caption & Chr(13) + Chr(10) & H3 & Chr(13) + Chr(10) & H4 & Chr(13) + Chr(10) & H2
End With
err: If err.Number = 13 Then MsgBox "������� ������������ ��������", vbOKOnly, "������": Exit Sub
End Sub '������ �� 2-� �������� �����, ������� �����
Private Sub ocenka_2_ball_proizv(): On Error GoTo err
With Form1.Label1
U1 = Sqr(U1 / (n - 1)) * t1 / Sqr(n): T8 = CSng(Form1.Text2(0).Text): T3 = CSng(Form1.Text3(0).Text): T3 = T3 / 100 * T8
If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H3 = "���������� ��������� ����������" Else H3 = "���������� ��������� �� ����������"
If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H4 = "�������� ������� ������������� ����������� (������ �������)" Else H4 = "�������� ������� �� ������������� ����������� (������ ���)"
If U > (T8 + T3) Then H2 = "�������� ��������� ���� �����" Else If U < (T8 - T3) Then H2 = "�������� ��������� ���� �����"
.Caption = .Caption & Chr(13) + Chr(10) & H3 & Chr(32) & H4 & Chr(32) & H2
End With
err: If err.Number = 6 Then Exit Sub
End Sub '������ �� 2-� �������� �����, ���������������� �����
Private Sub sortirovka()
Dim X_() As Single
Dim delta() As Single
ReDim X_(n + 2): ReDim delta(n + 2)
delta(1) = Abs(X1(1) - T8): X_(1) = X1(1):
For I = 2 To n: delta_ = Abs(X1(I) - T8): dd = 0: finish = False
 Do
  dd = dd + 1:  If delta_ <= delta(dd) Or dd >= I Then finish = True
 Loop While finish = False
 If dd < I Then For I1 = I - 1 To dd Step -1: X_(I1 + 1) = X_(I1): delta(I1 + 1) = delta(I1): Next I1
 delta(dd) = delta_: X_(dd) = X1(I)
Next I
For I = 1 To n: X1(I) = X_(I): Next I
End Sub '���������� �������� ������� �� ��������� ���������� �� �0
Private Sub recalculation()
Dim U_                 As Single
Dim doverit_interval   As Single
Dim procent            As Single
U = 0: U1 = 0: slovo = Form1.Text3(1).Text: t1 = Studentkoef(n, P)
For I = 1 To n: U = U + X1(I): Next I: U = U / n: U_ = U: For I = 1 To n: U1 = U1 + (X1(I) - U) ^ 2: Next I
doverit_interval = Sqr(U1 / (n * (n - 1))) * t1: U2 = doverit_interval / U * 100: procent = U2
With Form1.Label2
.Caption = "X = " & zapis_chisel(U_) & Chr(177) & zapis_chisel(doverit_interval) & " (" & zapis_chisel(procent) & "%" & ") " & slovo
End With
End Sub '�������� ���������� ������� ����� ����������
Private Sub report_by_4_scale_estimation(ocenka As String)
With Form1.Label2
.Caption = .Caption & Chr(13) + Chr(10) & "������������� ��������: "
For I = n + 1 To N1: .Caption = .Caption & X1(I) & "; ": Next I
.Caption = .Caption & Chr(13) + Chr(10) & ocenka
End With
End Sub '����� �� ���������� �� 4-��������� �����
Private Sub ocenka_4_ball_uchebn():  On Error GoTo err
Dim uslovie_vypolneniya As Boolean
ulovie_vypolneniya = True
ocenka_2_ball_uchebn
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then MsgBox "��������� ������� ��� ������ �� 2-��������� ����� �� 5 ", vbInformation, "���������": Exit Sub
sortirovka
T5 = CSng(Form1.Text2(1).Text): T6 = CSng(Form1.Text2(2).Text): T7 = CSng(Form1.Text2(3).Text): N1 = n
If T5 <= 0.5 And T6 <= 0.5 And T7 <= 0.5 And T5 < T6 And T6 < T7 Then uslovie_vypolneniya = True Else uslovie_vypolneniya = False
If uslovie_vypolneniya = False Then MsgBox "�������� ����� ����� ������ ��������� � ������� ����������� � �� ����� ��������� 0,5", vbOKOnly, "������ ����� ��������": Exit Sub
n = Int(N1 - N1 * T5): recalculation
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then report_by_4_scale_estimation ("������ 5"): Exit Sub
n = Int(N1 - N1 * T6): recalculation
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then report_by_4_scale_estimation ("������ 4"): Exit Sub
n = Int(N1 - N1 * T7): recalculation
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then report_by_4_scale_estimation ("������ 3"): Exit Sub
Form1.Label2.Caption = "������ 2. ������� �� ��������"
err: If err.Number = 13 Then MsgBox "������� ������������ ��������", vbOKOnly, "������": Exit Sub
End Sub '������ �� 4-� �������� �����, ������� �����
Private Sub condition_of_estimation_finish1(index As Integer)
With Form1.Label2
.Caption = .Caption & Chr(13) + Chr(10) & "������������� ��������: "
For I = N1 - n To N1: .Caption = .Caption & X1(I) & "; ": Next I
.Caption = .Caption & Chr(13) + Chr(10) & ocenka
'.Caption = "ocenka"
.Caption = .Caption & n & Chr(13) + Chr(10)
End With
Form1.Label1.Caption = "������ 2sdsd"
End Sub '������� ��������� ������ �� 4-��������� �����
Sub vyborka(): read_data: Show_result
With Form1
 If .mode_of_vyborka(1).Checked = True And .Option1(0).value = True Then ocenka_2_ball_uchebn
 If .mode_of_vyborka(1).Checked = True And .Option1(1).value = True Then ocenka_2_ball_proizv
 If .mode_of_vyborka(2).Checked = True Then ocenka_4_ball_uchebn
End With
End Sub '������ �������
Private Sub ee()
Form1.Label2.Caption = "FSFS"
End Sub '