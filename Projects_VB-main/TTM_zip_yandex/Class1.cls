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
Private A            As Single      'Константа А в уравнении линейной регрессии У = А +В*Х
Private A1           As Single      'Константа В в уравнении линейной регрессии
Private k1           As Single      'Начальное значение аргумента на графике
Private k2           As Single      'Конечное значение аргумента на графике
Private K3           As Single      'Начальное значение функции на графике
Private K4           As Single      'Конечное значение функции на графике
Private N1           As Single      'Число определений в выборке
Private n2           As Single      'Число определений в выборке
Private n3           As Single      'Число определений в выборке
Private P            As Single      'Надежность данных
Private R            As Single      'Коэффициент корреляции
Private S0           As Single      'Стандартное отклонение остаточное
Private S1           As Single      'Стандартное отклонение А
Private S2           As Single      'Стандартное отклонение В
Private S3           As Single      'Стандартное отклонение X
Private S4           As Single      'Стандартное отклонение Y
Private t1           As Single      'Коэффициент Стьюдента
Private Y            As Single      'Аналитический сигнал
Private T2           As Single      'Показатель точности (%)
Private T3           As Single      'Показатель сходимости (%)
Private T4           As Single      'Показатель воспроизводимости (%)
Private T5           As Single      'Допустимая доля брака без снижения сортности
Private T6           As Single      'Допустимая доля брака со сниженем сортности на 1 балл
Private T7           As Single      'Допустимая доля брака со сниженем сортности на 2 балла
Private T8           As Single      'Достоверное, технологически необходимое значение парметра
Private Сmin         As Single      'Минимальное  значение диапазона градуировочной функции
Private Cmax         As Single      'Максимальное значение диапазона градуировочной функции
   'Массивы данных
Dim H0              As String      'Символ измеряемой величины
Dim H1              As String      'Размерность измеряемой величины
Dim H2              As String      'Оценка систематической погрешности
Dim H3              As String      'Общая оценка результата измерения
Dim H4              As String      'Оценка случайной погрешности
Dim H5              As String      'Определение числа значащих цифр
Dim H6              As String      'Комменнтарии
  'ИНДЕКСЫ
  'Счетчики циклов
Private I            As Single
Private I1           As Single
Private I2           As Single
Private I3           As Single
Private I4           As Single
Private I5           As Single
Private I6           As Single
  'Оперативные индексы
Private B            As Single      '
Private B1           As Single      '
Private B2           As Single      '
Private B3           As Single      '
Private B4           As Single      '
Private B5           As Single      '
Private U            As Single      'Среднеарифметическое. Координата точки на графике
Private U1           As Single      'Неопределенность результата измерения
Private U2           As Single      'Относительная неопределенность результата измерения
Private U3           As Single      '
Private U4           As Single      '*
Private U5           As Single      '*
Private U6           As Single      '
Private U7           As Single      'Достовереное значение параметра
Private U8           As Single      '
Private U9           As Single      'Число промахов (брака)
Private V1           As Single ' *
Private V2           As Single ' *
Private V3           As Single ' *
Private V4           As Single ' *
Private V5           As Single ' Погрешность приближения Гаусса
Private V6           As Single ' Погрешность приближения Коши
Private V7           As Single ' Погрешность приближения Пуассона
Private V8           As Single ' Погрешность приближения Больцмана
Private O            As Single '
Private O1           As Single ' Координата точки по Х
Private O2           As Single ' Координата точки по У
 'Тактические индексы
 Private Q0           As Single      '
 Private Q1           As Single      '
 Private Q2           As Single      '
 Private Q3           As Single      '
 Private Q4           As Single      '
 Private Z            As Single ' Критерий оптимизации 1 в работе стингера
 Private Z1           As Double ' Параметр для расчета факториала
 Private Z2           As Single ' Критерий оптимизации 2 в работе стингера
 Private Z3           As Single ' Заряд градиента параметра 1
 Private Z4           As Double ' Число итераций
 Private Z5           As Single ' Параметр функции распределения исходный
 Private Z6           As Single ' Параметр функции распределения исходный
 Private Z7           As Single
 Private Z8           As Single ' Заряд градиента параметра 2
 Private Z9           As Double
 Private Z10          As Single
 Private Z11          As Single ' Отображение положительного градиента зеленым цветом
 Private Z12          As Single ' Отображение отрицательного градиента красным цветом
 Private Z13          As Single ' Заданная погрешность приближения, %
 Private Z14          As Single ' Максимальное число итераций
 Private Z15          As Single ' Цвет теоретической кривой распределения
 Private Z16          As Single '
 Private Z17          As Single '
 Private Z18          As Single '

'ФЛАГИ СОСТОЯНИЙ
Private F0           As Single      '1 - если случайная погрешность значима и 0 если незначима
Private F1           As Single      '1 - если систематическая погрешность значима и 0 если незначима
Private F2           As Single      '1 - если есть достоверное или технологически необходимое значение иначе 0
Private F3           As Single      '
Private F4           As Single      '
Private F5           As Single      '  - Если 1 - работа 1 ФХМА и т.д.
Private W1           As Integer     '  - Анализ выборки = 1, анализ выборок = 2, регрессия = 3, корелляция = 4
Private W2           As Integer     '  - Сосотояние при вводе данных

'ФУНКЦИИ РАСПРЕДЕЛЕНИЯ
Private M   As Single ' Математическое ожидание
Private G   As Single ' Генеральная дисперсия
Private E   As Single ' Число событий
Private k   As Single '*
Dim k10(10) As Single '*
Dim B10(10)  As Single '*
Dim D(10)  As Single '*
Private PP   As Double ' Вероятность события
Private L1  As Single ' Минимальное значение Х
Private L2  As Single ' Максимальное значение  Х
Private L   As Single ' Параметр в распределении Пуассона и Коши (вместо лямбда)
Private C   As Single ' Максимальное значение для отображения P(x)
Private C11  As Single ' Число данных эксперимента
Private T   As Single ' Температура
    'Флаги
Private J   As Single ' J = 1 - код Гаусса, J = 2 - код Вейбулла
Private J1  As Single ' Код эксперимента Пуассон
Private J2  As Single ' Код эксперимента Коши
Private J3  As Single ' Код эксперимента Больцмана
Private J10 As Single ' Разрешение на печать функции распределения (J10 = 1)
Private J11 As Single ' Разрешение на анализ соответсвия функции Пуассона (J11 = 1)


'*************** Блоки для оценки по 4-балльной шкале, учебный режим **************************
Private Sub ocenka_4_ball_proizv():
If U2 <= T3 And Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "Оценка ОТЛИЧНО" Else Skriterii5
End Sub 'конечный блок-компилятор
Private Sub Skriterii3(): If n < 2 Then Exit Sub
U9 = Int(T7 * n): N1 = n:    Sort
   n = n - U9:     t1 = Studentkoef(n, P)
   MO1
   OC
  If F0 = 0 And F1 = 0 Then H3 = "   Оценка УДОВЛЕТВОРИТЕЛЬНО": H6 = "Обнаружены промахи" Else H3 = "   Оценка НЕУДОВЛЕТВОРИТЕЛЬНО"
End Sub 'Сортировка по отклонению наблюдений
Private Sub Skriterii4(): If n < 2 Then Exit Sub
U9 = Int(T6 * n): N1 = n:    Sort
   n = n - U9:      t1 = Studentkoef(n, P)
   MO1
   OC
  If F0 = 0 And F1 = 0 Then H3 = "   Оценка ХОРОШО": H6 = "Обнаружены промахи" Else n = n + U9: Skriterii3
End Sub 'Сортировка по отклонению наблюдений
Private Sub Skriterii5():   If n < 2 Then Exit Sub
U9 = Int(T5 * n): N1 = n: MO1
   Sort
   n = n - U9:     t1 = Studentkoef(n, P)
   MO1
   OC
  If F0 = 0 And F1 = 0 Then H3 = "   Оценка ОТЛИЧНО": H6 = "Обнаружены промахи (но их доля не выше нормы) " Else n = n + U9: Skriterii4
   turn
   MO1
End Sub 'Сортировка по отклонению наблюдений

Sub EntdateInput(): On Error GoTo err
vyborka1.read_data
P = CSng(Form1.Combo1.Text): T3 = CSng(Form1.Text3(0).Text): t1 = Studentkoef(n, P)
T5 = CSng(Form1.Text2(1).Text): T6 = CSng(Form1.Text2(2).Text): T7 = CSng(Form1.Text2(3).Text)
T8 = CSng(Form1.Text2(0).Text): H1 = Form1.Text3(1).Text: H0 = "X"
If T5 > T6 Or T6 > T7 Or T5 > T7 Then MsgBox "Доли брака должны возрастать", vbOKOnly, "Ошибка": Exit Sub
If T5 > 1 Or T5 < 0 Or T6 > 1 Or T6 < 0 Or T7 > 1 Or T7 < 0 Then MsgBox "Значение доли брака должно быть в диапазоне от 0 до 1", vbOKOnly, "Ошибка": Exit Sub
Sort
MO
err: If err.Number = 13 Then MsgBox "Введены некорректные данные", vbOKOnly, "Ошибка"
End Sub 'ВВОД ДАННЫХ ЧЕРЕЗ INPUT BOX
Private Sub Sort(): For I1 = 1 To U9:   For I = 1 To n - I1: U4 = Abs(U7 - X1(I)): U5 = Abs(U7 - X1(I + 1))
If U4 > U5 Then U4 = X1(I + 1): X1(I + 1) = X1(I): X1(I) = U4
Next I: Next I1
End Sub 'Сортировка данных в конец базы X1(I) по отклонению от достоверного или среднего
Private Sub MO(): MO1
 OC
 Form1.Label1.Caption = H0 & " = " & zapis_chisel(U) & " ± " & zapis_chisel(U1) & " (" & zapis_chisel(U2) & "%" & "), " & H1 & ";" & _
 Chr(13) + Chr(10) & " n = " & n & "," & " tnp = " & zapis_chisel(t1) & ". P = " & zapis_chisel(P)
   If U2 <= T3 And Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "Оценка ОТЛИЧНО" Else H3 = "Оценка ДВА"
      W3
End Sub 'ОЦЕНКА И ПРЕДСТАВЛЕНИЕ РЕЗУЛЬТАТА ИЗМЕРЕНИЯ
Private Sub W3():   If F0 = 0 And F1 = 0 Then H3 = "   Оценка ОТЛИЧНО" Else Skriterii5
Form1.Label2.Caption = H0 & " = " & zapis_chisel(U) & " ± " & zapis_chisel(U1) & " (" & zapis_chisel(U2) & "%" & "), " & _
H1 & " n = " & n & "," & " tnp = " & zapis_chisel(t1) & ". P = " & zapis_chisel(P) & _
". Достоверное значение = " & T8 & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
With Form1.Label1
.Caption = H3 & Chr(13) + Chr(10)
If U9 > 0 Then .Caption = .Caption & _
"Промахи:  ": For I = 1 To U9: .Caption = .Caption & X1(N1 + 1 - I) & "; ": Next I
End With
End Sub 'Оценка по четырехбалльной шкале
Private Sub turn(): On Error GoTo err
U9 = 0:  Do: U9 = U9 + 1: n = N1 - U9: t1 = Studentkoef(n, P)
   U = 0: U1 = 0: U2 = 0: For I = 1 To n: U = U + X1(I): Next I: U = U / n
   For I = 1 To n: U1 = U1 + (U - X1(I)) ^ 2: Next I:   U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U
   If U2 <= T3 Then F0 = 0 Else F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then F1 = 0 Else F1 = 1
   Loop While F0 = 1 Or F1 = 1:   n = N1 - U9
err: If n < 2 Then Exit Sub
End Sub 'Вoзврат данных
Private Sub OC():
If U2 <= T3 Then H4 = "Случайная погрешность незначима": F0 = 0 Else H4 = "Случайная погрешность значима": F0 = 1
If Abs(T8 - U) * 100 / T8 <= T3 Then H2 = "Систематичесая погрешность незначима": F1 = 0 Else H2 = "Систематичесая погрешность значима": F1 = 1
End Sub 'Оценка значимости случайной и систематической погрешностей
Private Sub MO1(): If n < 2 Then Exit Sub
U = 0: U1 = 0: U2 = 0: For I = 1 To n: U = U + X1(I): Next I: U = U / n
For I = 1 To n: U1 = U1 + (U - X1(I)) ^ 2: Next I:  U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U
U7 = T8
End Sub 'Расчет среднего и выбор достоверного значения, есло его нет, то вместо него матожидание


