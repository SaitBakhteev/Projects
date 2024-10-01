VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Graphic"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'************************** Значения шкалы графика *******************************************
Public k1                          As Single     '
Public k2                          As Single     '
Public K3                          As Single     '
Public K4                          As Single     '
Public First_point                 As Integer    'первая точка для отображения на графике по левой границе оси абсцисс
Public Last_point                  As Integer   'последняя точка для отображения на графике по правой границе оси абсцисс
'Public X_(1000)                    As Single
'Public Y_(1000)                    As Single
'Public N_                          As Single



Sub Randomize_cvet()
coef = Abs(Rnd) * 10
If coef = 0 Then Cvet_tochek = 0: Exit Sub
If coef > 8 Then Cvet_tochek = 10 ^ 8: Exit Sub
Cvet_tochek = coef * 10 ^ coef
End Sub 'случайный выбор цвета отображения экспериментальных точек на графике
Private Sub Grafic():
 For I = 0 To 7:
  For I1 = 0 To 41:
   Form1.Picture1.CurrentX = 700 + I1 * 200: Form1.Picture1.CurrentY = I * 920 + 20: Form1.Picture1.Print ". ."
  Next I1:
 Next I:

For I = 0 To 9:
  For I1 = 0 To 31:
   Form1.Picture1.CurrentX = 700 + I * 920: Form1.Picture1.CurrentY = 180 + I1 * 200: Form1.Picture1.Print ":"
  Next I1:
Next I:
End Sub 'Сетка графика
Private Sub Grafictext(): Dim U As Single
With Form1.Picture1
For I = 0 To 9: U = k1 + (k2 - k1) / 9 * I
  .CurrentY = 6700: .CurrentX = 600 - Len(zapis_chisel(U)) * 1 + I * 920: Form1.Picture1.Print zapis_chisel(U)
 Next I:
For I = 0 To 7: U = K3 + (K4 - K3) / 7 * I
.CurrentY = 6500 - I * 920: .CurrentX = 600 - Len(zapis_chisel(U)) * 70: Form1.Picture1.Print zapis_chisel(U)
Next I
End With
End Sub 'Распечатка значений параметров на сетке графика

Private Sub searching_points_for_precentation_oh_graphic()
Dim First_point_searched  As Boolean  'флаг нахождения первой точки по левой границе по оси абсцисс
'Dim Last_point_searched   As Boolean  'флаг нахождения пследней точки по правой границе по оси абсцисс

First_point_searched = False: ' Last_point_searched = False
For I = 1 To n
If X1(I) >= k1 And First_point_searched = False Then First_point = I: K3 = X2(I): K4 = X2(I): First_point_searched = True
If First_point_searched = True And X2(I) < K3 Then K3 = X2(I)
If First_point_searched = True And X2(I) > K4 Then K4 = X2(I)
If X1(I) > k2 And First_point_searched = True Then Last_point = I - 1: Exit Sub
Next I
End Sub 'поиск точек для отображения на графике по заданным значениям масштабирования

Private Sub point_graphic_type()
 Dim qq1 As Single
 Dim qq2 As Single

On Error GoTo err
Form1.Picture1.DrawWidth = 5
searching_points_for_precentation_oh_graphic
For I = First_point To Last_point:
  qq1 = 9010 - (k2 - X1(I)) * 8300 / (k2 - k1)
  qq2 = 6620 - (X2(I) - K3) * 6430 / (K4 - K3)
  Form1.Picture1.PSet (qq1, qq2), 10 ^ 6:  'n_ = n_ + 1:: X_(n_) = x_(I): Y_(n_) = y_(I)
Next I:
err: Exit Sub
End Sub 'точечный тип графика
Private Sub line_graphic_type()
Form1.Picture1.DrawWidth = 1
For I = 2 To n:
 If X_(I) >= k1 And X_(I) <= k2 Then ww1 = 1: Q1_1 = 9010 - (k2 - X_(I - 1)) * 8300 / (k2 - k1): Q1_2 = 9010 - (k2 - X_(I)) * 8300 / (k2 - k1)
 If Y_(I) >= K3 And Y_(I) <= K4 Then ww2 = 1: Q2_1 = 6620 - (Y_(I - 1) - K3) * 6430 / (K4 - K3): Q2_2 = 6620 - (Y_(I) - K3) * 6430 / (K4 - K3)
 If ww1 = 1 And ww2 = 1 Then Form1.Picture1.Line (Q1_1, Q2_1)-(Q1_2, Q2_2), Cvet_tochek
 ww1 = 0: ww2 = 0
Next I:
End Sub 'линейный тип графика
Sub Experimental_curve()
On Error GoTo err
'If Cleen_picture = True Then
Grafic
Grafictext
'If Rnd_cvet = True Then Randomize_cvet
'If Form1.mnu_graphic_type(0).Checked = True Then
point_graphic_type 'Else line_graphic_type
Form1.Picture1.DrawWidth = 1: Cleen_picture = False: Rnd_cvet = True
err: If err.Number = 6 Then MsgBox ("Неправильно выделен диапазон на графике"): Exit Sub
End Sub 'отображение экспериментальной кривой
Sub Calculated_curve(X As Single, Y As Single, cvet As Single, size As Integer)
On Error GoTo err
  Q1 = 9010 - (k2 - X) * 8300 / (k2 - k1):
  Q2 = 6620 - (Y - K3) * 6430 / (K4 - K3):
  Form1.Picture1.Circle (Q1, Q2), size, cvet
err: If err.Number = 6 Then Exit Sub 'MsgBox "Слишком большой или маленький порядок значений", vbOKOnly, "Ошибка":
End Sub 'отображение расчетной кривой

