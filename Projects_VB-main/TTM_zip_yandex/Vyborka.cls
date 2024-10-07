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
Private A             As Single ' Константа А в уравнении линейной регрессии У = А +В*Х
Private A1            As Single ' Константа В в уравнении линейной регрессии
Private A10           As Single ' Достоверное или технологически необходимое значение параметра
Private N1            As Single ' Начальное число наблюдений в выборке эталонов
Private n2            As Single ' Начальное число наблюдений в выборке испытаний
Private n3            As Single ' Число эталонных кинетических кривых
Private n4            As Single ' Число наблюдений на эталонной кинетической кривой
Private n5            As Single ' Число испытуемых кинетических кривых
Private n6            As Single ' Число наблюдений на испытуемой кинетической кривой
Private P             As Single ' Надежность данных
Private R             As Single ' Коэффициент корреляции
Private S0            As Single ' Стандартное отклонение остаточное
Private S1            As Single ' Стандартное отклонение А
Private S2            As Single ' Стандартное отклонение В
Private S3            As Single ' Стандартное отклонение X
Private S4            As Single ' Стандартное отклонение Y
Private t1            As Single ' Коэффициент Стьюдента
Private FK            As Single ' Коэффициент Фишера
Private Y             As Single ' Аналитический сигнал
Private Y1            As Single ' Аналитический сигнал
Private Y2            As Single ' Аналитический сигнал
Private T2            As Single ' Показатель точности (%)
Private T3            As Single ' Показатель сходимости (%)
Private T4            As Single ' Показатель воспроизводимости (%)
Private T5            As Single '
Private T6            As Single '
Private T7            As Single '
Private T8            As Single '
Private Сmin          As Single ' Минимальное  значение диапазона градуировочной функции
Private Cmax          As Single ' Максимальное значение диапазона градуировочной функции
  
  'Оперативные индексы
Private B             As Double '
Private B1            As Double '
Private B2            As Double '
Private B3            As Double '
Private B4            As Double '
Private B5            As Double '
Private U             As Double ' Координата точки на графике. Счетчик
Private U1            As Double '
Private U2            As Single '
Private U3            As Single '
Private U4            As Double '
Private U5            As Double '1 - работа по коду темы
Private U6            As Double '1 - работа по коду работы
Private U7            As Double '
Private U8            As Double '
Private U9            As Double ' Доля промахов (брака)
Private U10           As Double '
Private U11           As Double '1 - Аналатический сигнал известен
Private U12           As Double '  - Аналатический сигнал
Sub read_data()
With Form1.MSFlexGrid1(1)
ReDim X1(.Rows + 1)
dd = 0: For I = 1 To .Rows - 1
If .TextMatrix(I, ColSel_) <> "" Then dd = dd + 1: X1(dd) = .TextMatrix(I, ColSel_)
Next I: n = dd
End With
End Sub 'чтение данных из таблицы
Private Sub Show_result(): On Error GoTo err
Dim U_                 As Single
Dim doverit_interval   As Single
Dim procent            As Single
P = CSng(Form1.Combo1.Text): U = 0: U1 = 0: t1 = Studentkoef(n, P)
For I = 1 To n: U = U + X1(I): Next I: U = U / n: U_ = U
For I = 1 To n: U1 = U1 + (X1(I) - U) ^ 2: Next I
doverit_interval = Sqr(U1 / (n * (n - 1))) * t1: procent = doverit_interval / U * 100
Form1.Label1.Caption = "X = " & zapis_chisel(U_) & Chr(177) & zapis_chisel(doverit_interval) & " (" & zapis_chisel(procent) & "%" & ") " & Form1.Text3(1).Text
err: If err.Number = 13 Then MsgBox "Введены некорректные значения", vbOKOnly, "Ошибка": Exit Sub
End Sub 'представление результата
Private Sub ocenka_2_ball_uchebn(): On Error GoTo err
With Form1.Label1
If Form1.Text2(0).Text = "" Then Form1.Text2(0).Text = U
T8 = CSng(Form1.Text2(0).Text): T3 = CSng(Form1.Text3(0).Text)
U1 = Sqr(U1 / (n - 1)) * t1 / Sqr(n): U2 = U1 * 100 / U: H3 = "Оценка ОТЛИЧНО": H4 = "": H2 = ""
 If T3 < U2 Then H3 = " Оценка ДВА": H4 = "Случайная погрешность значима"
 If T3 < Abs(T8 - U) * 100 / T8 Then H3 = "Оценка ДВА": H2 = "Систематичесая погрешность значима"
 .Caption = .Caption & Chr(13) + Chr(10) & H3 & Chr(13) + Chr(10) & H4 & Chr(13) + Chr(10) & H2
End With
err: If err.Number = 13 Then MsgBox "Введены некорректные значения", vbOKOnly, "Ошибка": Exit Sub
End Sub 'оценка по 2-х балльной шкале, учебный режим
Private Sub ocenka_2_ball_proizv(): On Error GoTo err
With Form1.Label1
U1 = Sqr(U1 / (n - 1)) * t1 / Sqr(n): T8 = CSng(Form1.Text2(0).Text): T3 = CSng(Form1.Text3(0).Text): T3 = T3 / 100 * T8
If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H3 = "Надежность измерения обеспечена" Else H3 = "Надежность измерения не обеспечена"
If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H4 = "Параметр объекта соответствует требованиям (оценка отлично)" Else H4 = "Параметр объекта не соответствует требованиям (оценка два)"
If U > (T8 + T3) Then H2 = "Значение параметра выше нормы" Else If U < (T8 - T3) Then H2 = "Значение параметра ниже нормы"
.Caption = .Caption & Chr(13) + Chr(10) & H3 & Chr(32) & H4 & Chr(32) & H2
End With
err: If err.Number = 6 Then Exit Sub
End Sub 'оценка по 2-х балльной шкале, производственный режим
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
End Sub 'сортировка значений выборки по максимуму отклонения от Х0
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
End Sub 'пересчет результата выборки после отбраковки
Private Sub report_by_4_scale_estimation(ocenka As String)
With Form1.Label2
.Caption = .Caption & Chr(13) + Chr(10) & "Отбракованные значения: "
For I = n + 1 To N1: .Caption = .Caption & X1(I) & "; ": Next I
.Caption = .Caption & Chr(13) + Chr(10) & ocenka
End With
End Sub 'отчет по оцениванию по 4-хбалльной шкале
Private Sub ocenka_4_ball_uchebn():  On Error GoTo err
Dim uslovie_vypolneniya As Boolean
ulovie_vypolneniya = True
ocenka_2_ball_uchebn
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then MsgBox "Результат выборки уже оценен по 2-хбалльной шкале на 5 ", vbInformation, "Сообщение": Exit Sub
sortirovka
T5 = CSng(Form1.Text2(1).Text): T6 = CSng(Form1.Text2(2).Text): T7 = CSng(Form1.Text2(3).Text): N1 = n
If T5 <= 0.5 And T6 <= 0.5 And T7 <= 0.5 And T5 < T6 And T6 < T7 Then uslovie_vypolneniya = True Else uslovie_vypolneniya = False
If uslovie_vypolneniya = False Then MsgBox "Значения долей брака должны вводиться в порядке возрастания и не могут превышать 0,5", vbOKOnly, "Ошибка ввода значений": Exit Sub
n = Int(N1 - N1 * T5): recalculation
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then report_by_4_scale_estimation ("Оценка 5"): Exit Sub
n = Int(N1 - N1 * T6): recalculation
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then report_by_4_scale_estimation ("Оценка 4"): Exit Sub
n = Int(N1 - N1 * T7): recalculation
If T3 > U2 And T3 > Abs(T8 - U) * 100 / T8 Then report_by_4_scale_estimation ("Оценка 3"): Exit Sub
Form1.Label2.Caption = "Оценка 2. Выборка не пригодна"
err: If err.Number = 13 Then MsgBox "Введены некорректные значения", vbOKOnly, "Ошибка": Exit Sub
End Sub 'оценка по 4-х балльной шкале, учебный режим
Private Sub condition_of_estimation_finish1(index As Integer)
With Form1.Label2
.Caption = .Caption & Chr(13) + Chr(10) & "Отбракованные значения: "
For I = N1 - n To N1: .Caption = .Caption & X1(I) & "; ": Next I
.Caption = .Caption & Chr(13) + Chr(10) & ocenka
'.Caption = "ocenka"
.Caption = .Caption & n & Chr(13) + Chr(10)
End With
Form1.Label1.Caption = "Оценка 2sdsd"
End Sub 'условие окончание оценки по 4-хбалльной шкале
Sub vyborka(): read_data: Show_result
With Form1
 If .mode_of_vyborka(1).Checked = True And .Option1(0).value = True Then ocenka_2_ball_uchebn
 If .mode_of_vyborka(1).Checked = True And .Option1(1).value = True Then ocenka_2_ball_proizv
 If .mode_of_vyborka(2).Checked = True Then ocenka_4_ball_uchebn
End With
End Sub 'анализ выборки
Private Sub ee()
Form1.Label2.Caption = "FSFS"
End Sub '
