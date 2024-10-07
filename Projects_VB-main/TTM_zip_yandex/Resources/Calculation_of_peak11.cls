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
Private fon                            As Single  'значение фонового сигнала

'******************* Переменные для окончательного формирования набора экспериментальных данных для расчета пика ***********
Private X_new(100000)                  As Single  'экспериментальные значения X, вошедшие в область расчета пика
Private Y_new(100000)                  As Single  'экспериментальные значения Y, вошедшие в область расчета пика
Private N_new                          As Single  'количество экспериментальных значений, вошедших в область расчета пика

'************************ Расчетные переменные ************
Private M                              As Single  'мат ожидание
Private A                              As Single  'площадь чистого пика без фона
Private sigma                          As Single  'полуширина чистого пика на половине его высоты

'************************ Параметры для выполнения поиска решения уравнения Гаусса ******************
Private MNK                            As Double  'значение МНК
Private shag_poiska                    As Single  'шаг поиска значения параметров уравнений
Private ff1                            As Double  'критерий выбора направления поиска решения
Private ff2                            As Double  'критерий выбора направления поиска решения

Private count_of_calculation_steps     As Single  'количество производимых шагов расчета пика для отображения текущего хода решения
                                                  'в progress bar

Sub show_calculated_peak()
On Error GoTo err
'********************* Принятие опций для расчета *************************
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
If Form1.mnu_Better_calculation.Checked = True Then coef = 10 'в случае выбора улучшенного режима расчета
Load Form2: Form2.Show 0, Form1
Form2.Caption = "Идет расчет пика...": Form2.progress_bar_settings 0, 350000
count_of_calculation_steps = 0

'***************** Расчет и отображение расчетной кривой *************************************
granicy_rascheta (False)
initial_values
shag_poiska = shag_poiska * coef ^ 2
For i = 0 To iterations
 shag_poiska = shag_poiska / coef
 poisk_M (1)
 poisk_sigma (1)
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
err: If err.Number = 13 Then MsgBox "В таблицу введены некорректные данные", vbOKOnly, "Ошибка исходных данных": Exit Sub
End Sub 'окончательный рабочий блок отображения расчетного пика
Private Sub report_of_results()
H = A / (Sqr(2 * 3.14) * sigma) 'расчет чистой высоты пика
With Form1.Text1(0)
 If .Text = "" Then .Text = "Line" & Chr(9) & "M" & Chr(9) & "Bkg" & Chr(9) & "A" & Chr(9) & "H" & Chr(9) & "MNK" & Chr(13) + Chr(10)
  line_ = Form1.MSFlexGrid1.TextMatrix(RowSel_, 1):
 .Text = .Text & line_ & Chr(9) & M & Chr(9) & fon & Chr(9) & A & Chr(9) & H & Chr(9) & MNK & Chr(13) + Chr(10)
End With
End Sub 'вывод отчета результатов расчета
Sub automatic_initialization_of_values()
If RowSel_ = 0 Then Exit Sub
Form1.MSFlexGrid1.TextMatrix(RowSel_, 2) = 0
Form1.MSFlexGrid1.TextMatrix(RowSel_, 3) = K1
Form1.MSFlexGrid1.TextMatrix(RowSel_, 4) = K2
Form1.MSFlexGrid1.TextMatrix(RowSel_, 5) = K3
Form1.MSFlexGrid1.TextMatrix(RowSel_, 6) = K4
granicy_rascheta (False)
'***** Поиск фона ****************
fon = Y_new(1)
For i = 1 To N_new
If Y_new(i) < fon Then fon = Y_new(i)
Next i
Form1.MSFlexGrid1.TextMatrix(RowSel_, 2) = fon
End Sub 'предварительная автоматическая инициализация значений Х1, Х2 и фона
Sub granicy_rascheta(auto_K3_K4 As Boolean)
On Error GoTo err
For i = 1 To n   'Поиск экспериментальных значений спектра, входящих в диапазон расчета пика по оси ОХ
If X1(i) < K1 Then n1 = i
If X1(i) > K1 And X1(i) < K2 Then n2 = i
Next i
dd1 = 0:
For i = n1 To n2 'Поиск экспериментальных значений спектра, входящих в диапазон расчета пика по оси ОY
                 ' и формирование окончательного набора экспериментальных данных для расчета
If X2(i) > K3 And X2(i) < K4 Then dd1 = dd1 + 1: X_new(dd1) = X1(i): Y_new(dd1) = X2(i)
Next i
Y_min = X2(n1): Y_max = X2(Int(n1 + (n2 - n1) / 2))
For i = 1 To dd1
If Y_new(i) < Y_min Then Y_min = Y_new(i)
If Y_new(i) > Y_max Then Y_max = Y_new(i)
Next i
If auto_K3_K4 = True Then K3 = Y_min: K4 = Y_max
N_new = dd1
err:  If err.Number = 13 Then MsgBox ("Не загружен спектр"): Exit Sub
End Sub 'установление границ расчета

Private Sub initial_values()
On Error GoTo err1

'********** Поиск начального значения М ************
max_signal = Y_new(1)
For i = 1 To N_new
If Y_new(i) > max_signal Then max_signal = Y_new(i): M = X_new(i): n_max = i: half_signal = fon + (max_signal - fon) / 2
Next i

'********** Поиск начального значения sigma ************
dd = n_max
Do
dd = dd + 1
Loop While Y_new(dd) > half_signal
sigma = Abs(X_new(n_max) - X_new(dd))

'********* Нахождение начальных значений А и шага поиска *******
A = 0.5 * (6 * sigma * (max_signal - fon))
shag_poiska = Abs(X_new(n_max) - X_new(n_max - 1)) / M
err1: Exit Sub

End Sub 'поиск начальных значений сигма, М и А

Private Sub poisk_M(finish As Integer)
On Error GoTo err4
Initial_value = M
UU = 1 - shag_poiska: M = M * UU: gauss: ff1 = MNK
M = Initial_value
UU = 1 + shag_poiska: M = M * UU: gauss: ff2 = MNK
M = Initial_value

If ff1 > ff2 Then UU = 1 - shag_poiska Else UU = 1 + shag_poiska:
For I1 = 0 To finish
UU = 1 - (UU - 1) / 10:
Do
count_of_calculation_steps = count_of_calculation_steps + 1
Form2.progress_bar (count_of_calculation_steps)
ff1 = MNK: M = M * UU: gauss
Loop While ff1 > MNK
Next I1
err4: Exit Sub
End Sub ' блок поиска значения M
Private Sub poisk_sigma(finish As Integer)

Initial_value = sigma
UU = 1 - shag_poiska: sigma = sigma * UU: gauss: ff1 = MNK
sigma = Initial_value
UU = 1 + shag_poiska: sigma = sigma * UU: gauss: ff2 = MNK
sigma = Initial_value

If ff1 > ff2 Then UU = 1 - shag_poiska Else UU = 1 + shag_poiska:

For I1 = 0 To finish
UU = 1 - (UU - 1) / 10:
Do
count_of_calculation_steps = count_of_calculation_steps + 1
Form2.progress_bar (count_of_calculation_steps)
ff1 = MNK: sigma = sigma * UU: gauss
Loop While ff1 > MNK
Next I1

End Sub ' блок поиска sigma
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

End Sub ' блок поиска A

Private Sub gauss()
On Error GoTo err1
MNK = 0
For i = 1 To N_new
theory_Y = A / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (X_new(i) - M) ^ 2 / (2 * sigma ^ 2)) + fon
'вычисление теоретического значения сигнала по уравнению Гаусса

MNK = MNK + (theory_Y - Y_new(i)) ^ 2
Next i
err1: Exit Sub
End Sub 'расчет МНК





