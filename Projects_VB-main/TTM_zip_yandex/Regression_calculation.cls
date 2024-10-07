VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "regression_calculation"
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
Private Сmin          As Single ' Минимальное  значение диапазона градуировочной функции
Private Cmax          As Single ' Максимальное значение диапазона градуировочной функции
Dim X_() As Single
Dim Y_() As Single
Dim k_X As Single
Dim k_Y As Single

  
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
Dim XX3()             As Single 'параметр, необходимый для отброса промахов
Public Promaxi_       As Integer 'количество промахов
Dim X_promax(100)     As Single '
Dim Y_promax(100)     As Single '
Private zapis_Sa      As String 'запись значения коэффициента а

'********************************************************************************************************************
 Sub Diapazon():  On Error GoTo err
U = X1(1) * A1 + A:   Y1 = t1 * S0 / A1 * Sqr(1 + 1 / n + n * (U - 1 / n * B1) ^ 2 / (A1 ^ 2 * B4))
U = (X1(n) - X1(1)) / 2 * A1 + A: Y1 = t1 * S0 / A1 * Sqr(1 + 1 / n + n * (U - 1 / n * B1) ^ 2 / (A1 ^ 2 * B4))
U1 = Y1 * 100 / (X1(n) - X1(1)) * 2:  U = (X1(n) - X1(1)) / 2 * A1 + A
 Do
  Y1 = t1 * S0 / A1 * Sqr(1 + 1 / n + n * (U - 1 / n * B1) ^ 2 / (A1 ^ 2 * B4)): Y1 = Y1 * 100 / (U - A) * A1: U = U - (K4 - K3) / 100
 Loop While Y1 < T3 And U > (k1 * A1 + A)
 U = U + (K4 - K3) / 100: U2 = (U - A) / A1: U = (X1(n) - X1(1)) / 2 * A1 + A
Do
 Y1 = t1 * S0 / A1 * Sqr(1 + 1 / n + n * (U - 1 / n * B1) ^ 2 / (A1 ^ 2 * B4)): Y1 = Y1 * 100 / (U - A) * A1: U = U + (K4 - K3) / 100
Loop While Y1 < T3 And U < (k2 * A1 + A)
 U = U - (K4 - K3) / 100: U3 = (U - A) / A1
For I = K3 To K4 Step (K4 - K3) / 300
 Graphic.Calculated_curve U2, I, 16711680, 12
 Graphic.Calculated_curve U3, I, 16711680, 12
Next I
'If U1 < T3 Then For I = U2 To U3 Step (k2 - k1) / 200: Graphic.Calculated_curve I, K3, 255, 15: Next I
err: Exit Sub
End Sub 'блок определения рабочего диапазона
Private Sub Linii_nadezhnosti(): B0 = 0: B1 = 0: B2 = 0: B3 = 0: B4 = 0: B5 = 0
For I = 1 To n: X_(I) = X1(I) / k_X: Y_(I) = X2(I) / k_Y: Next I
 If n < 3 Then MsgBox "Для построения градуировочного графика необходимо минимум 3 точки", vbOKOnly, Ошибка: Exit Sub
 For I = 1 To n: B0 = B0 + X_(I) ^ 2: B1 = B1 + Y_(I): B2 = B2 + X_(I): B3 = B3 + X_(I) * Y_(I): B5 = B5 + Y_(I) ^ 2: Next I
 B4 = Abs(n * B0 - B2 ^ 2): A = (B0 * B1 - B2 * B3) / B4: A1 = (n * B3 - B1 * B2) / B4
 S0 = Sqr((B4 * (n * B5 - B1 ^ 2) - (n * B3 - B1 * B2) ^ 2) / (n * (n - 2) * B4)): S1 = S0 * Sqr(B0 / B4)
 S2 = S0 * Sqr(n / B4): S3 = S0 / A1 * Sqr(1 + 1 / n + n * (Y - 1 / n * B1) ^ 2 / (A1 ^ 2 * B4))
 R = (n * B3 - B2 * B1) / Sqr((n * B0 - B2 ^ 2) * (n * B5 - B1 ^ 2))
 For I = k1 / k_X To k2 / k_X Step (k2 / k_X - k1 / k_X) / 100
  DY = t1 * (S0 * (1 / n + n * (I - B2 / n) ^ 2) / B4) ^ 0.5:
  Graphic.Calculated_curve I, (A1 * I + A + DY), 5 * 10 ^ 3, 15
  Graphic.Calculated_curve I, (A1 * I + A - DY), 5 * 10 ^ 3, 15
 Next I
End Sub 'Расчет линий надежности
Private Sub Regression(): B0 = 0: B1 = 0: B2 = 0: B3 = 0: B4 = 0: B5 = 0
 If n < 3 Then MsgBox "Для построения градуировочного графика необходимо минимум 3 точки", vbOKOnly, Ошибка: Exit Sub
 For I = 1 To n: B0 = B0 + X1(I) ^ 2: B1 = B1 + X2(I): B2 = B2 + X1(I): B3 = B3 + X1(I) * X2(I): B5 = B5 + X2(I) ^ 2: Next I
 B4 = Abs(n * B0 - B2 ^ 2): A = (B0 * B1 - B2 * B3) / B4: A1 = (n * B3 - B1 * B2) / B4
 S0 = Sqr((B4 * (n * B5 - B1 ^ 2) - (n * B3 - B1 * B2) ^ 2) / (n * (n - 2) * B4)): S1 = S0 * Sqr(B0 / B4)
 S2 = S0 * Sqr(n / B4): S3 = S0 / A1 * Sqr(1 + 1 / n + n * (Y - 1 / n * B1) ^ 2 / (A1 ^ 2 * B4))
 R = (n * B3 - B2 * B1) / Sqr((n * B0 - B2 ^ 2) * (n * B5 - B1 ^ 2))
 For I = k1 To k2 Step (k2 - k1) / 200
   Graphic.Calculated_curve I, A1 * I + A, 5 * 10 ^ 5, 15
 Next I
End Sub 'Расчет регрессии
Private Sub report()
On Error GoTo err
slovo = Form1.Text3(1).Text
zapis_a = zapis_chisel(A): zapis_b = zapis_chisel(A1)
If Abs(A) <> 0 Then zapis_Sa = "Sa=" & zapis_chisel(S0 * 100 / Abs(A)) & "%; " Else zapis_Sa = "Sa=0%; "
zapis_Sb = "Sb=" & zapis_chisel(S2 * 100 / Abs(A1)) & "%."
zapis_U2 = zapis_chisel(U2) & " " & slovo & "; ": zapis_U3 = zapis_chisel(U3) & " " & slovo & ". "
With Form1.Label2
.Caption = "Граничные условия: L=" & n & "; R=" & T3 & "%; P=" & P & "." & Chr(13) + Chr(10)
.Caption = .Caption & "Параметры регрессии: a=" & zapis_a & "; b=" & zapis_b & "; " & zapis_Sa & zapis_Sb & Chr(13) + Chr(10)
.Caption = .Caption & "Рабочий диапазон: " & "Xmin=" & zapis_U2 & "Xmax=" & zapis_U3
End With
err: Exit Sub
End Sub 'вывод отчета по градуировочной кривой
Public Sub test()
On Error GoTo err
P = CSng(Form1.Combo1.Text): T3 = CSng(Form1.Text3(0).Text): t1 = Studentkoef(n, P)
   Linii_nadezhnosti
   Regression
   Diapazon
   report
err: If err.Number = 5 Then MsgBox "Исходные данные отсутствуют или являются некорректными", vbOKOnly, "Ошибка": Exit Sub
End Sub
Sub RaschetXan():
On Error GoTo err
Dim procent            As Single
Dim X_average          As Single
Dim doverit_interval   As Single
Yan = InputBox("Введите значение аналитического сигнала Y", "Окно ввода значений")
If Yan = 0 Then Exit Sub
doverit_interval = t1 * S0 / A1 * Sqr(1 + 1 / n + n * (Yan - 1 / n * B1) ^ 2 / (A1 ^ 2 * B4))
X_average = (Yan - A) / A1: procent = doverit_interval * 100 / (Yan - A) * A1
zapis_procent = "(" & zapis_chisel(procent) & "%) " & Form1.Text3(1).Text & ". "
zapis = zapis_chisel(X_average) & Chr(177) & zapis_chisel(doverit_interval) & zapis_procent
Form1.Label1.Caption = Form1.Label1.Caption & "При Y=" & Yan & ": Xan=" & zapis & Chr(13) + Chr(10)
err: Exit Sub
End Sub 'Расчет результата измерения
Sub Promaxi(): ReDim XX3(n)
U = 1: For I = 1 To n: XX3(I) = Abs(X2(I) - A - A1 * X1(I)): Next I
For I1 = 2 To n:  For I = 2 To n:
If XX3(I) < XX3(I - 1) Then U3 = XX3(I - 1): U2 = X2(I - 1): U1 = X1(I - 1): XX3(I - 1) = XX3(I): X2(I - 1) = X2(I): X1(I - 1) = X1(I): XX3(I) = U3: X2(I) = U2: X1(I) = U1
    Next I: Next I1:    n = n - 1:    Form1.Picture1.Cls: Cleen_picture = True
    For I1 = 2 To n:  For I = 2 To n: If X1(I) < X1(I - 1) Then U1 = X1(I - 1): X1(I - 1) = X1(I): X1(I) = U1: U2 = X2(I - 1): X2(I - 1) = X2(I): X2(I) = U2
    Next I: Next I1
Graphic.Experimental_curve
End Sub 'Отброс промахов c  cортировкойа данных по наибольшему отклонению di в конец базы

Private Sub Class_Initialize()
ReDim X_(n + 1): ReDim Y_(n + 1)
summ_X = 0: summ_Y = 0: For I = 1 To n: summ_X = summ_X + X1(I): summ_Y = summ_Y + X2(I): Next I
k_X = summ_X / n: k_Y = summ_Y / n
End Sub
