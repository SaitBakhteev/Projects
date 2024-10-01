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
Public fon                            As Single  'значение фонового сигнала

'******************* Переменные для окончательного формирования набора экспериментальных данных для расчета пика ***********
Private X_new(100000)                  As Single  'экспериментальные значения X, вошедшие в область расчета пика
Private Y_new(100000)                  As Single  'экспериментальные значения Y, вошедшие в область расчета пика
Private N_new                          As Single  'количество экспериментальных значений, вошедших в область расчета пика

'************************ Расчетные переменные ************
Public M                              As Single  'мат ожидание
Public A                              As Single  'площадь чистого пика без фона
Public sigma                          As Single  'полуширина чистого пика на половине его высоты

'************************ Параметры для выполнения поиска решения уравнения Гаусса ******************
Public MNK                            As Double  'значение МНК
Private shag_M                         As Single  'шаг поиска значения M
Private shag_sigma                     As Single  'шаг поиска значения sigma
Private shag_A                         As Single  'шаг поиска значения A
Private shag_fon                       As Single  'шаг поиска значения фона
Private ff1                            As Double  'критерий выбора направления поиска решения
Private ff2                            As Double  'критерий выбора направления поиска решения

Sub ruchnoi_regim()
Dim Y As Single
Form1.Picture1.Cls
Graphic.Experimental_curve
gauss
nachalo_pika = X_(1): konec_pika = X_(n)
For I = nachalo_pika To konec_pika Step (konec_pika - nachalo_pika) / 1022
Y = A / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (I - M) ^ 2 / (2 * sigma ^ 2)) + fon
Graphic.Calculated_curve I, Y, 5 * 10 ^ 5, 10
Next I
End Sub
Sub Show_1st_calculated_peak()
Search_initial_fon
initial_values
Form1.Text5(0).Text = shag_M: Form1.Text5(1).Text = shag_A: Form1.Text5(2).Text = shag_sigma: Form1.Text5(3).Text = shag_fon
Form1.Text6(0).Text = M: Form1.Text6(1).Text = A: Form1.Text6(2).Text = sigma: Form1.Text6(3).Text = fon:
show_calculated_peak
End Sub
Sub show_calculated_peak()
Dim Y As Single
On Error GoTo err
Search_initial_fon

nachalo_pika = Graphic.k1: konec_pika = Graphic.k2
For I = nachalo_pika To konec_pika Step (konec_pika - nachalo_pika) / 1022
Y = A / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (I - M) ^ 2 / (2 * sigma ^ 2)) + fon
Graphic.Calculated_curve I, Y, 5 * 10 ^ 5, 10
Next I
'gauss
err: If err.Number = 11 Then MsgBox "Возможно не удалось определить начальное значение сигма", vbOKOnly, "Ошибка в расчете": Exit Sub

'Form1.Label1.Caption = "M=" & M & "; Shag_M=" & shag_M & Chr(13) + Chr(10) ' & "; shag_M=" & shag_M & Chr(13) + Chr(10)
'Form1.Label1.Caption = Form1.Label1.Caption & "A=" & A & "; Shag_A=" & shag_A & Chr(13) + Chr(10) ' & "; shag_A=" & shag_A & Chr(13) + Chr(10)
''Form1.Label1.Caption = Form1.Label1.Caption & "sigma=" & sigma & Chr(13) + Chr(10) ' & "; shag_SIGMA=" & shag_sigma & Chr(13) + Chr(10)
'Form1.Label1.Caption = Form1.Label1.Caption & "fon=" & fon & Chr(13) + Chr(10) ' & "; shag_fon=" & shag_fon & Chr(13) + Chr(10)
End Sub 'рабочий сборный блок класса для отображения расчетной кривой

'************ Составляющие блоки для поиска значений параметров уравнения Гаусса ************
Public Sub Search_initial_fon()
Dim delta_min                        As Single  'минимальная разница в сигналах между соседними длинами волн
Dim delta_MAX                        As Single  'МАКСИМАЛЬНАЯ разница в сигналах между соседними длинами волн
Dim MAX_signal                       As Single  'максимальное значение сигнала
Dim min_Signal                       As Single  'минимальное значение сигнала
Dim Half_signal_condition            As Single  'критерий, соответствующий примерно половине высоты пика
Dim number_data_of_Max_signal        As Integer 'номер массива данных при максимальном сигнале
Dim fon_massive()                    As Single  'массив значений фона
Dim Right_border_of_median           As Boolean 'флаг нахождения правой границы пик-фон
Dim Left_border_of_median            As Boolean 'флаг нахождения левой границы пик-фон
Dim dd_fon                           As Single  'счетчик массива данных фона
Dim M1                               As Single  'левый край границы на стыке пик-фон
Dim M2                               As Single  'правый край границы на стыке пик-фон
Dim uslovie_fona                     As Single  'критерий поиска границ начала фоновых значений

'************* Поиск минимальной и максимальной разницы сигналов между соседними точками.
'                 Поиск номера массива данных, соответсвующий максимальному сигналу *************
With Graphic
 delta_min = Abs(X2(.First_point) - X2(.First_point + 1)): delta_MAX = Abs(X2(.First_point) - X2(.First_point + 1))
 MAX_signal = X2(.First_point): min_Signal = X2(.First_point):
  
  For I = .First_point + 1 To .Last_point - 1
   If Abs(X2(I) - X2(I + 1)) < delta_min Then delta_min = Abs(X2(I) - X2(I + 1))
   If Abs(X2(I) - X2(I + 1)) > delta_MAX Then delta_MAX = Abs(X2(I) - X2(I + 1))
   If X2(I) > MAX_signal Then MAX_signal = X2(I): number_data_of_Max_signal = I
   If X2(I) < min_Signal Then min_Signal = X2(I)
  Next I

'****************** Поиск значений, соотвествующих фоновым ***********************
uslovie_fona = ((delta_MAX + delta_min) / 2 + delta_min) / 2
Half_signal_condition = (MAX_signal - min_Signal) / 2
  M = 0
  ReDim fon_massive(.Last_point - .First_point)
   dd_fon = 0: dd_Median = 0: Right_border_of_median = False: Left_border_of_median = False
  fon = 0
  For I = number_data_of_Max_signal To .First_point + 1 Step -1
   If Left_border_of_median = False Then M1 = X1(I)
   If X2(I) < Half_signal_condition And Abs(X2(I) - X2(I - 1)) < uslovie_fona Then Left_border_of_median = True
   If Left_border_of_median = True Then dd_fon = dd_fon + 1: fon = fon + X2(I)
  Next I
  
  For I = number_data_of_Max_signal To .Last_point - 1
   If Right_border_of_median = False Then M2 = X1(I)
   If X2(I) < Half_signal_condition And Abs(X2(I) - X2(I - 1)) < uslovie_fona Then Right_border_of_median = True
   If Right_border_of_median = True Then dd_fon = dd_fon + 1: fon = fon + X2(I)
  Next I

M = (M1 + M2) / 2: fon = fon / dd_fon: sigma = (M2 - M1) / 6.5
A = (X2(number_data_of_Max_signal) - fon) * 2 * sigma
End With
End Sub ' поиск стартового значения фона и шага его поиска

Public Sub initial_values()
On Error GoTo err1
'********** Поиск начальных значений параметров уравнения Гаусса ************
MAX_signal = Y_(1)
min_delta_x_ = Abs(X_(2) - X_(1))
For I = 1 To N_
If Y_(I) >= MAX_signal Then MAX_signal = Y_(I): M = X_(I): n_max = I
If I > 1 And Abs(X_(I) - X_(I - 1)) < min_delta_x_ Then min_delta_x_ = Abs(X_(I) - X_(I - 1))
Next I
dd = n_max: dd1 = n_max: F1 = 0: F2 = 0
Do
 If F1 = 0 Then dd = dd - 1
 If F2 = 0 Then dd1 = dd1 + 1
 If Y_(dd) < fon Then F1 = 1
 If Y_(dd1) < fon Then F2 = 1
Loop Until F1 = 1 And F2 = 1
sigma = Abs(X_(dd1) - X_(dd)) / 6
A = 0.5 * (6 * sigma * (MAX_signal - fon)) 'расчет площади пика по методу треугольника

'********* Нахождение шагов поиска *******
S_rectangle = 0 'метод прямоугольника
For I = 2 To N_: S_rectangle = S_rectangle + (X_(I) - X_(I - 1)) * 2 * (Y_(I) - fon): Next I
 shag_A = A / (A + Abs(A - S_rectangle) / 10)
 shag_M = M / (M + min_delta_x_ / 10)
 shag_sigma = shag_M
 
 A = S_rectangle
err1: Exit Sub
End Sub 'поиск начальных значений сигма, М и А
Private Sub search_direction_of_A_values()
On erroro GoTo err
Initial_value = A

'********* 1-е направление поиска ******************
UU = 1 - (shag_A - 1): A = A * UU: gauss:   ff1 = MNK: A = Initial_value
Form1.Text4.Text = Form1.Text4.Text & "1st direction" & Chr(13) + Chr(10)
Form1.Text4.Text = Form1.Text4.Text & "A=" & A & "; Step_A=" & UU & "; ff1=" & ff1 & Chr(13) + Chr(10)

'********* 2-е направление поиска ******************
UU1 = 1 + (shag_A - 1): A = A * UU1: gauss:   ff2 = MNK: A = Initial_value
Form1.Text4.Text = Form1.Text4.Text & "2nd direction" & Chr(13) + Chr(10)
Form1.Text4.Text = Form1.Text4.Text & "A=" & A & "; Step_A=" & UU1 & "; ff2=" & ff2 & Chr(13) + Chr(10)

If ff1 < ff2 Then shag_A = UU Else shag_A = UU1  'выбор направления поиска значения параметра, при котором наблюдается уменьшение МНК

 '******** Поиск границы выбранного направления **********
 Form1.Text4.Text = Form1.Text4.Text & Chr(13) + Chr(10) & "Search in choosed direction" & Chr(13) + Chr(10)
 value_on_min_MNK = A
' Do
 ' ff1 = MNK: A = A * shag_A: gauss
  'Form1.Text4.Text = Form1.Text4.Text & "A=" & A & "; Step_A=" & shag_A & Chr(13) + Chr(10)
 'Loop While ff1 > MNK

'shag_A = 1 + (shag_A - 1) / 10
'A = value_on_min_MNK
err: Exit Sub
End Sub ' выбор напрвления поиска значений A с уменьшением шага в 10 раз
Private Sub search_direction_of_M_values()
 Initial_value = M

 '********* 1-е направление поиска ******************
 UU = 1 - (shag_M - 1): M = M * UU: gauss:   ff1 = MNK: M = Initial_value

 '********* 2-е направление поиска ******************
 UU1 = 1 + (shag_M - 1): M = M * UU1: gauss:   ff2 = MNK: M = Initial_value

 If ff1 < ff2 Then shag_M = UU Else shag_M = UU1  'выбор направления поиска значения параметра, при котором наблюдается уменьшение МНК

 '******** Поиск границы выбранного направления **********
 Do
  ff1 = MNK: M = M * shag_M: gauss
  If MNK < ff1 Then value_on_min_MNK = M
 Loop While ff1 > MNK
 shag_M = 1 + (value_on_min_MNK / M - 1) / 10
 M = value_on_min_MNK
End Sub ' выбор напрвления поиска значений M с уменьшением шага в 10 раз
Private Sub search_direction_of_SIGMA_values()
 Initial_value = sigma

'********* 1-е направление поиска ******************
UU = 1 - (shag_sigma - 1): sigma = sigma * UU: gauss:   ff1 = MNK: sigma = Initial_value

'********* 2-е направление поиска ******************
UU1 = 1 + (shag_sigma - 1): sigma = sigma * UU1: gauss:   ff2 = MNK: sigma = Initial_value

If ff1 < ff2 Then shag_sigma = UU Else shag_sigma = UU1  'выбор направления поиска значения параметра, при котором наблюдается уменьшение МНК

'******** Поиск границы выбранного направления **********
'Do
 'ff1 = MNK: sigma = sigma * shag_sigma: gauss
'Loop While ff1 > MNK
'shag_sigma = 1 + (shag_sigma - 1) / 10

End Sub ' блок поиска sigma с уменьшением шага в 10 раз
Private Sub search_direction_of_FON_values()
 Initial_value = fon

'********* 1-е направление поиска ******************
UU = 1 - (shag_fon - 1) / 10: gauss:
Do
 ff1 = MNK
 fon = fon * UU
 gauss
Loop While ff1 > MNK
fon = Initial_value

'********* 2-е направление поиска ******************
UU1 = 1 + (shag_fon - 1) / 10: gauss:
Do
 ff2 = MNK
 fon = fon * UU1
 gauss
Loop While ff2 > MNK
fon = Initial_value

If ff1 < ff2 Then shag_fon = UU Else shag_fon = UU1 'условие выбора направления для последующего поиска
End Sub 'выбор направления поиска значений фона с уменьшением шага в 10 раз

Public Sub gauss()
'On Error GoTo err1
MNK = 0
For I = 1 To N_
theory_Y = A / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (X_(I) - M) ^ 2 / (2 * sigma ^ 2)) + fon
'вычисление теоретического значения сигнала по уравнению Гаусса
MNK = MNK + (theory_Y - Y_(I)) ^ 2
Next I
'err1: Exit Sub
End Sub 'расчет МНК






'*********************** НЕРАБОЧИЕ БЛОКИ КЛАССА НА НЕОПРЕДЕЛЕННЫЙ СРОК ************************
Sub show_calculated_peak1()
On Error GoTo err
'********************* Принятие опций для расчета *************************
Dim I As Single
Dim Y As Single
Dim slovo As String
'fon = Form1.MSFlexGrid1.TextMatrix(RowSel_, 2)
'nachalo_pika = Form1.MSFlexGrid1.TextMatrix(RowSel_, 3)
'konec_pika = Form1.MSFlexGrid1.TextMatrix(RowSel_, 4)
For I = 0 To 4
If Form1.mnu_Choose_iterations(I).Checked = True Then slovo = Form1.mnu_Choose_iterations(I).Caption
Next I
iterations = Val(slovo)
coef = 1
If Form1.mnu_Better_calculation.Checked = True Then coef = 10 'в случае выбора улучшенного режима расчета
'Load Form2: Form2.Show 0, Form1
Dim max_ As Single
Dim ff3 As Single
'Form2.Caption = "Идет расчет пика...": max_ = (1 + iterations) * 4: Form2.progress_bar_settings 0, max_

'***************** Расчет и отображение расчетной кривой *************************************
granicy_rascheta (False)
initial_values
'poisk_M 0, True
'poisk_sigma 0, True
'poisk_A 0, True
aa1 = M - shag_M: aa2 = M + shag_M: aa = (aa2 - aa1) / 10
gauss: ff3 = MNK

For I = 1 To 30 Step 1
'M = i
'sigma = sigma * shag_sigma: A = A * shag_A ': gauss
'Form1.Text1(0).Text = Form1.Text1(0).Text & sigma & Chr(13) + Chr(10)
'If MNK < ff3 Then ff3 = MNK: M_ = i: sigma_ = sigma: A_ = A
Next I
'M = M_: sigma = sigma_: A = A_
'sigma = sigma * 1.3
'Unload Form2
nachalo_pika = X_(1): konec_pika = X_(n)
M = X_(Int(n / 2)): sigma = X_(Int(n / 2)): 'fon = 120: A = 530
For I = nachalo_pika To konec_pika Step (konec_pika - nachalo_pika) / 1022
'Y = A / (Sqr(2 * 3.14) * sigma) * Exp(-1 * (I - M) ^ 2 / (2 * sigma ^ 2)) + fon
Graphic.Calculated_curve I, fon, 5 * 10 ^ 5, 10
Next I

'report_of_results
Erase X_new()
Erase Y_new()
Form1.Text1(0).Text = "SDFSDF"
err: If err.Number = 13 Then MsgBox "В таблицу введены некорректные данные", vbOKOnly, "Ошибка исходных данных": Exit Sub

Search_initial_fon
End Sub 'окончательный рабочий блок отображения расчетного пика
Private Sub report_of_results()
H = A / (Sqr(2 * 3.14) * sigma) 'расчет чистой высоты пика
'With Form1.Text1(0)
' If .Text = "" Then .Text = "Line" & Chr(9) & "M" & Chr(9) & "Bkg" & Chr(9) & "A" & Chr(9) & "H" & Chr(9) & "MNK" & Chr(13) + Chr(10)
'  line_ = Form1.MSFlexGrid1.TextMatrix(RowSel_, 1):
' .Text = .Text & line_ & Chr(9) & M & Chr(9) & fon & Chr(9) & A & Chr(9) & H & Chr(9) & MNK & Chr(13) + Chr(10)
'End With
End Sub 'вывод отчета результатов расчета
Sub automatic_initialization_of_values()
On Error GoTo err
If RowSel_ = 0 Then Exit Sub
With Form1.MSFlexGrid1(2)
.TextMatrix(RowSel_, 2) = 0: .TextMatrix(RowSel_, 3) = k1: .TextMatrix(RowSel_, 4) = k2
.TextMatrix(RowSel_, 5) = K3: .TextMatrix(RowSel_, 6) = K4
End With
granicy_rascheta (False)
'***** Поиск фона ****************
fon = Y_new(1)
For I = 1 To n
If Y_new(I) < fon Then fon = Y_new(I)
Next I
'Form1.MSFlexGrid1.TextMatrix(RowSel_, 2) = fon
err: Exit Sub
End Sub 'предварительная автоматическая инициализация значений Х1, Х2 и фона
Sub granicy_rascheta(auto_K3_K4 As Boolean)
On Error GoTo err
dd1 = 0
For I = 1 To n   'Поиск экспериментальных значений спектра, входящих в диапазон расчета пика по оси ОХ
If X_(I) >= k1 And X_(I) <= k2 And Y_(I) >= K3 And Y_(I) <= K4 Then dd1 = dd1 + 1: X_new(dd1) = X_(I): Y_new(dd1) = Y_(I)
Next I
n = dd1
'dd1 = 0:
'For i = n1 To n2 'Поиск экспериментальных значений спектра, входящих в диапазон расчета пика по оси ОY
                 ' и формирование окончательного набора экспериментальных данных для расчета
'If y_(i) > K3 And y_(i) < K4 Then
'Next i
Y_min = Y_(N1): Y_max = Y_(Int(N1 + (n2 - N1) / 2))
For I = 1 To dd1
If Y_new(I) < Y_min Then Y_min = Y_new(I)
If Y_new(I) > Y_max Then Y_max = Y_new(I)
Next I
If auto_K3_K4 = True Then K3 = Y_min: K4 = Y_max
n = dd1
err:  If err.Number = 13 Then MsgBox ("Не загружен спектр"): Exit Sub
End Sub 'установление границ расчета











