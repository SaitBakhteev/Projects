Attribute VB_Name = "Procedures"
Sub clear_buffer()
Erase Opened_file()
Erase X1()
Erase X2()
Erase count_of_lines()
Erase element()
Erase name_of_line()
Erase WL()
Count_of_opened_files = 0
End Sub 'очистка буфера
Function Studentkoef(N_ As Single, P_ As Single) As Single
If N_ < 2 Then Exit Function
   If P_ = 95 Then Q0 = 1.9572:  Q1 = 2.4444: Q2 = 2.1902:  Q3 = 4.642:   Q4 = 1.3997
   If P_ = 50 Then Q0 = 0.6769:   Q1 = 0.2285: Q2 = 0.009:   Q3 = 0.004:   Q4 = 0.005
   If P_ = 75 Then Q0 = 1.1533:   Q1 = 0.6063: Q2 = 0.594:   Q3 = 0.05:    Q4 = 0.005
   If P_ = 90 Then Q0 = 1.6406:   Q1 = 1.5102: Q2 = 1.8502:  Q3 = 0.3962:  Q4 = 0.9889
   If P_ = 98 Then Q0 = 2.387:    Q1 = 2.6764: Q2 = 9.8617:  Q3 = 6.06:    Q4 = 10.8308
   If P_ = 99 Then Q0 = 2.6821:   Q1 = 2.9491: Q2 = 16.0652: Q3 = 13.8666: Q4 = 28.1053
   If P_ = 99.9 Then Q0 = 3.4334: Q1 = 5.8655: Q2 = 46.1601: Q3 = 64.9996: Q4 = 515.15
   Studentkoef = Q0 + Q1 / (N_ - 1) + Q2 / (N_ - 1) ^ 2 + Q3 / (N_ - 1) ^ 3 + Q4 / (N_ - 1) ^ 9
End Function 'РАСЧЕТ КОЭФФИЦИЕНТА СТЬЮДЕНТА из Доэрфеля
Function zapis_chisel(X_ As Single) As String
If X_ = 0 Then zapis_chisel = 0: Exit Function
k = Int(3 - Log(Abs(X_)) / 2.3028)
If k < 0 Then k = 0
zapis_chisel = Round(X_, k)
If X_ < 10 ^ -3 Or X_ > 10 ^ 3 Then stepen = Int(Log(Abs(X_)) / 2.3028): _
zapis_chisel = Format(X_ / 10 ^ stepen, "0.0") & "E" & stepen Else _
zapis_chisel = Format(X_, "0.000")
End Function 'округление чисел и их представление для записи
