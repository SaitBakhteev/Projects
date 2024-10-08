VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Calculation_of_peak"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Private fon                            As Single  '�������� �������� �������

'******************* ���������� ��� �������������� ������������ ������ ����������������� ������ ��� ������� ���� ***********
Private X_new(100000)                  As Single  '����������������� �������� X, �������� � ������� ������� ����
Private Y_new(100000)                  As Single  '����������������� �������� Y, �������� � ������� ������� ����
Private N_new                          As Single  '���������� ����������������� ��������, �������� � ������� ������� ����

Private X1_new(100000)                 As Single  '����������������� �������� X, �������� � ������� ������� ����
Private Y1_new(100000)                 As Single  '����������������� �������� Y, �������� � ������� ������� ����
Private N1_new                         As Single  '���������� ����������������� ��������, �������� � ������� ������� ����

'************************ ��������� ���������� ************
Private M                              As Single  '��� ��������
Private A                              As Single  '������� ������� ���� ��� ����
Private sigma                          As Single  '���������� ������� ���� �� �������� ��� ������

'************************ ��������� ��� ���������� ������ ������� ��������� ������ ******************
Private MNK                            As Double  '�������� ���
Private shag_poiska                    As Single  '��� ������ �������� ���������� ���������
Private ff1                            As Double  '�������� ������ ����������� ������ �������
Private ff2                            As Double  '�������� ������ ����������� ������ �������

'************************* ������� ������ �������� ***********************
Private M_left        As Single
Private M_right       As Single
Private Sigma_left    As Single
Private Sigma_right   As Single

Private count_of_calculation_steps     As Single  '���������� ������������ ����� ������� ���� ��� ����������� �������� ���� �������
                                                  '� progress bar
Sub show_calculated_peak2()
fon = Form1.MSFlexGrid1.TextMatrix(RowSel_, 2)
nachalo_pika = Form1.MSFlexGrid1.TextMatrix(RowSel_, 3)
konec_pika = Form1.MSFlexGrid1.TextMatrix(RowSel_, 4)
granicy_rascheta (False)
Promezhutochnye_dannye
End Sub
Sub show_calculated_peak()
On Error GoTo err
'********************* �������� ����� ��� ������� *************************
Dim i As Single
Dim Y As Single
Dim slovo As String
fon = Form1.MSFlexGrid1.TextMatrix(RowSel_, 2)
nachalo_pika = Form1.MSFlexGrid1.TextMatrix(RowSel_, 3)
konec_pika = Form1.MSFlexGrid1.TextMatrix(RowSel_, 4)
For i = 0 To 4
If Form1.mnu_Choose_iterations(i).Checked = True Then slovo = Form1.mnu_Choose_iterations(i).Caption
Next i
iterations = Val(slovo)
coef = 1
If Form1.mnu_Better_calculation.Checked = True Then coef = 10 '� ������ ������ ����������� ������ �������
Load Form2: Form2.Show 0, Form1
Form2.Caption = "���� ������ ����...": Form2.progress_bar_settings 0, 350000
count_of_calculation_steps = 0

'***************** ������ � ����������� ��������� ������ *************************************
granicy_rascheta (False)
initial_values
shag_poiska = shag_poiska * coef ^ 2
Promezhutochnye_dannye
For i = 0 To 200
 'shag_poiska = shag_poiska / coef
 poisk1_M (1)
 poisk1_sigma (1)
 poisk_A (1)
Next i
Unload Form2
For i = nachalo_pika To konec_pika Step (konec_pika - nachalo_pika) / 1022
Y = A / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (i - M) ^ 2 / (2 * sigma ^ 2)) + fon
Graphic.Calculated_curve i, Y, 5 * 10 ^ 5, 10
Next i
report_of_results
Erase X_new()
Erase Y_new()
err: If err.Number = 13 Then MsgBox "� ������� ������� ������������ ������", vbOKOnly, "������ �������� ������": Exit Sub
End Sub '������������� ������� ���� ����������� ���������� ����
Private Sub report_of_results()
H = A / (Sqr(2 * 3.14) * sigma) '������ ������ ������ ����
With Form1.Text1(0)
 If .Text = "" Then .Text = "Line" & Chr(9) & "M" & Chr(9) & "Bkg" & Chr(9) & "A" & Chr(9) & "H" & Chr(9) & "MNK" & Chr(13) + Chr(10)
  line_ = Form1.MSFlexGrid1.TextMatrix(RowSel_, 1):
 .Text = .Text & line_ & Chr(9) & M & Chr(9) & fon & Chr(9) & A & Chr(9) & H & Chr(9) & MNK & Chr(13) + Chr(10)
End With
End Sub '����� ������ ����������� �������
Sub automatic_initialization_of_values()
If RowSel_ = 0 Then Exit Sub
Form1.MSFlexGrid1.TextMatrix(RowSel_, 2) = 0
Form1.MSFlexGrid1.TextMatrix(RowSel_, 3) = K1
Form1.MSFlexGrid1.TextMatrix(RowSel_, 4) = K2
Form1.MSFlexGrid1.TextMatrix(RowSel_, 5) = K3
Form1.MSFlexGrid1.TextMatrix(RowSel_, 6) = K4
granicy_rascheta (False)
'***** ����� ���� ****************
fon = Y_new(1)
For i = 1 To N_new
If Y_new(i) < fon Then fon = Y_new(i)
Next i
Form1.MSFlexGrid1.TextMatrix(RowSel_, 2) = fon
End Sub '��������������� �������������� ������������� �������� �1, �2 � ����
Sub granicy_rascheta(auto_K3_K4 As Boolean)
On Error GoTo err
For i = 1 To n   '����� ����������������� �������� �������, �������� � �������� ������� ���� �� ��� ��
If X1(i) < K1 Then n1 = i
If X1(i) > K1 And X1(i) < K2 Then n2 = i
Next i
dd1 = 0:
For i = n1 To n2 '����� ����������������� �������� �������, �������� � �������� ������� ���� �� ��� �Y
                 ' � ������������ �������������� ������ ����������������� ������ ��� �������
If X2(i) > K3 And X2(i) < K4 Then dd1 = dd1 + 1: X_new(dd1) = X1(i): Y_new(dd1) = X2(i)
Next i
Y_min = X2(n1): Y_max = X2(Int(n1 + (n2 - n1) / 2))
For i = 1 To dd1
If Y_new(i) < Y_min Then Y_min = Y_new(i)
If Y_new(i) > Y_max Then Y_max = Y_new(i)
Next i
If auto_K3_K4 = True Then K3 = Y_min: K4 = Y_max
N_new = dd1
err:  If err.Number = 13 Then MsgBox ("�� �������� ������"): Exit Sub
End Sub '������������ ������ �������

Private Sub initial_values()
On Error GoTo err1

'********** ����� ���������� �������� � ************
max_signal = Y_new(1)
For i = 1 To N_new
If Y_new(i) > max_signal Then max_signal = Y_new(i): M = X_new(i): n_max = i: half_signal = fon + (max_signal - fon) / 2
Next i

'********** ����� ���������� �������� sigma ************
dd = n_max
Do
dd = dd + 1
Loop While Y_new(dd) > half_signal
sigma = Abs(X_new(n_max) - X_new(dd))

'********* ���������� ��������� �������� � � ���� ������ *******
A = 0.5 * (6 * sigma * (max_signal - fon))
shag_poiska = Abs(X_new(n_max) - X_new(n_max - 1)) / M

'******** ����������� ������� ������ ������ �������� M � sigma ****************
M_left = X_new(n_max) - (X_new(n_max) - X_new(n_max - 1)): M_right = X_new(n_max) + (X_new(n_max) - X_new(n_max - 1))
Sigma_left = sigma - Abs(X_new(n_max) - X_new(n_max - 1)) / sigma
Sigma_right = sigma + Abs(X_new(n_max) - X_new(n_max - 1)) / sigma

err1: Exit Sub
End Sub '����� ��������� �������� �����, � � �

Private Sub poisk_M(finish As Integer)
gauss
For i = 0 To finish
Do
Initial_value = M: ff1 = MNK
M = M_left + (M_right - M_left) / 4: gauss
If MNK < ff1 Then M_right = Initial_value Else M = Initial_value: M = M + (M_right - M_left) / 4: gauss
Loop While ff1 > MNK
Next i
End Sub ' ���� ������ �������� M
Private Sub poisk_sigma(finish As Integer)
gauss
For i = 0 To finish
Do
Initial_value = sigma: ff1 = MNK
sigma = Sigma_left + (Sigma_right - Sigma_left) / 4: gauss
If MNK < ff1 Then Sigma_right = Initial_value Else sigma = Initial_value: sigma = sigma + (Sigma_right - Sigma_left) / 4: gauss
Loop While ff1 > MNK
Next i
End Sub ' ���� ������ sigma
Private Sub poisk_A(finish As Integer)

Initial_value = A
UU = 1 - shag_poiska: A = A * UU: gauss: ff1 = MNK
A = Initial_value
UU = 1 + shag_poiska: A = A * UU: gauss: ff2 = MNK
A = Initial_value

If ff1 > ff2 Then UU = 1 - shag_poiska Else UU = 1 + shag_poiska:

For I1 = 0 To finish
UU = 1 - (UU - 1) / 10:
Do
count_of_calculation_steps = count_of_calculation_steps + 1
Form2.progress_bar (count_of_calculation_steps)
ff1 = MNK: A = A * UU: gauss
Loop While ff1 > MNK
Next I1

End Sub ' ���� ������ A
Private Sub Promezhutochnye_dannye()
dd = 0: sum_Y = 0
For i = 1 To N_new
Y_ = Y_new(i) - fon
If Y_ > 0 Then dd = dd + 1: Y1_new(dd) = Y_: X1_new(dd) = X_new(i): sum_Y = sum_Y + Y_
Next i
N1_new = dd: For i = 1 To N1_new: Y1_new(i) = Y1_new(i) / sum_Y: Next i
End Sub '�������������� �������� Y ��� ������������� ��������� ������
Private Sub poisk1_M(finish As Integer)

Initial_value = M
UU = 1 - shag_poiska: M = M * UU: gauss1: ff1 = MNK
M = Initial_value
UU = 1 + shag_poiska: M = M * UU: gauss1: ff2 = MNK
M = Initial_value

If ff1 > ff2 Then UU = 1 - shag_poiska Else UU = 1 + shag_poiska:

For I1 = 0 To finish
UU = 1 - (UU - 1) / 10:
Do
count_of_calculation_steps = count_of_calculation_steps + 1
Form2.progress_bar (count_of_calculation_steps)
ff1 = MNK: M = M * UU: gauss1
Loop While ff1 > MNK
Next I1

End Sub ' ���� ������ A
Private Sub poisk1_sigma(finish As Integer)

Initial_value = sigma
UU = 1 - shag_poiska: sigma = sigma * UU: gauss1: ff1 = sigmaNK
sigma = Initial_value
UU = 1 + shag_poiska: sigma = sigma * UU: gauss1: ff2 = sigmaNK
sigma = Initial_value

If ff1 > ff2 Then UU = 1 - shag_poiska Else UU = 1 + shag_poiska:

For I1 = 0 To finish
UU = 1 - (UU - 1) / 10:
Do
count_of_calculation_steps = count_of_calculation_steps + 1
Form2.progress_bar (count_of_calculation_steps)
ff1 = sigmaNK: sigma = sigma * UU: gauss1
Loop While ff1 > sigmaNK
Next I1

End Sub ' ���� ������ A

Private Sub gauss1()
On Error GoTo err1
MNK = 0
For i = 1 To N1_new
theory_Y = 1 / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (X1_new(i) - M) ^ 2 / (2 * sigma ^ 2))
'���������� �������������� �������� ������� �� ��������� ������

MNK = MNK + (theory_Y - Y1_new(i)) ^ 2
Next i
err1: Exit Sub
End Sub '������ ���

Private Sub gauss()
On Error GoTo err1
MNK = 0
For i = 1 To N_new
theory_Y = A / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (X_new(i) - M) ^ 2 / (2 * sigma ^ 2)) + fon
'���������� �������������� �������� ������� �� ��������� ������

MNK = MNK + (theory_Y - Y_new(i)) ^ 2
Next i
err1: Exit Sub
End Sub '������ ���





