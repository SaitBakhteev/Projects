VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Interface"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Sub toolbar()
'******** УСТАНОВКА ПАРАМЕТРОВ ДЛЯ ФРЕЙМА **************
With Form1.Frame1
.Caption = "": .BackColor = &HFFC0C0: .Top = 20: .Left = 50: .Height = 6800: .Width = 600:
End With
'****** УСТАНОВКА ПАРАМЕТРОВ ДЛЯ КНОПОК ************
Dim nazvanie_knopki(20), opisanie_knopki(20), puty_kartinki(20), font_name(20) As String
Dim font_size(20)  As Single 'размер шрифта на кнопке
Dim back_color(20) As Single 'цвет фона кнопки

For I = 0 To 20: font_name(I) = "Wingdings": font_size(I) = 17: back_color(I) = &HFFFFFF: Next I
nazvanie_knopki(2) = "1": opisanie_knopki(2) = "Открыть градуировочную функцию":
font_size(2) = 16: back_color(2) = &H80FFFF

nazvanie_knopki(3) = "<": opisanie_knopki(3) = "Сохранить данные таблицы в файл"
font_size(3) = 20: back_color(3) = RGB(205, 150, 50)

puty_kartinki(4) = App.Path & "\4.jpg": opisanie_knopki(4) = "Отобразить на графике данные из таблицы"
nazvanie_knopki(5) = "": opisanie_knopki(5) = "Линейная регрессия": puty_kartinki(5) = App.Path & "\1.jpg": font_name(2) = "Wingdings"
nazvanie_knopki(6) = "": opisanie_knopki(6) = "Анализ выборок": font_name(6) = "Wingdings": puty_kartinki(6) = App.Path & "\9.jpg"
nazvanie_knopki(7) = "O": opisanie_knopki(7) = "Отброс промахов": font_name(7) = "Wingdings 2"
nazvanie_knopki(8) = "": opisanie_knopki(8) = "Рассчитать значение измеряемого параметра по аналитическому сигналу Y": puty_kartinki(8) = App.Path & "\7.jpg"
nazvanie_knopki(9) = "": opisanie_knopki(9) = "Перейти на выбранный участок спектра": puty_kartinki(9) = App.Path & "\3.jpg"
nazvanie_knopki(10) = "": opisanie_knopki(10) = "Рассчитать пик": puty_kartinki(10) = App.Path & "\5.jpg"
nazvanie_knopki(11) = "": opisanie_knopki(11) = "Открыть БД спектральных линий": puty_kartinki(11) = App.Path & "\6.jpg"

For I = 2 To 13
With Form1.Command3(I)
Set .Container = Form1.Frame1
.Left = 60: .Top = -950 + 600 * I: .Width = 500: .Height = 500: .Visible = True: .Caption = nazvanie_knopki(I)
.ToolTipText = opisanie_knopki(I): .Picture = LoadPicture(puty_kartinki(I)): .BackColor = back_color(I)
.FontName = font_name(I): .FontSize = "20": .FontSize = font_size(I): .FontBold = True
End With
Next I

With Form1.Command3(21)
.Visible = True: .Left = 13200: .Top = 7600: .Width = 400:: .Height = 400: .Caption = "": .BackColor = Form1.BackColor
.Picture = LoadPicture(App.Path & "\8.jpg"): .ToolTipText = "Выход из программы"
End With
Form1.Text3(41).Text = T7: Form1.Text3(42).Text = T6: Form1.Text3(43).Text = T5: Form1.CurrentX = 1900: Form1.CurrentY = 6050:
Form1.Print "допустимая доля брака*10": Form1.CurrentX = 1900: Form1.CurrentY = 6450: Form1.Print "снижение на один балл*10":
Form1.CurrentX = 1900: Form1.CurrentY = 6850: Form1.Print "снижение на два балла*10":
End Sub 'установка панели инструментов
Sub Picture_box()
With Form1.Picture1
.Left = 700: .Top = 20: .Width = 9700: .Height = 7000: .BackColor = &H80000014
End With

'********* Установка фигуры для выделения участка графика **************
With Form1.Shape1
Set .Container = Form1.Picture1: .Width = 0: .Height = 0: .Visible = False
End With
End Sub 'установка окна отображения графика
Sub label()
With Form1.Label3
.Caption = "Формат чисел " & Format(0, "0.00") & "...": .Left = 10500: .Top = 7650: .Width = 2200: .Height = 350
.Font.size = 12#: .BackColor = Form1.BackColor
End With
With Form1.Label6(0)
.Visible = True: .Caption = "": .Left = 10500: .Top = 7250: .Width = 2900: .Height = 350: .BackColor = Form1.BackColor: .Font.size = 12
End With
End Sub 'установка label для показа формата чисел и координат курсора мыши
Sub SSTab_setup()
With Form1.SSTab1
.Tabs = 3: .TabsPerRow = 3: .Font.size = 10: .TabCaption(0) = "Регрессия": .TabCaption(1) = "Выборка": .TabCaption(2) = "ЛИЭС"
.Style = ssStylePropertyPage: .BackColor = &H8000000F: .Width = 3200: .Height = 4180: .Left = 11250: .Top = 1450
End With
End Sub 'установка параметров, связанных с SSTab
Sub knopoki_granichnykh_usloviy()
'********* УСТАНОВКА ФРЕЙМА ДЛЯ ЭТИХ КНОПОК ***********
With Form1.Frame2
.Caption = "": .BackColor = &H8000000A: .Left = 11250: .Top = 20: .Width = 3000: .Height = 1400
End With

'********* Установка Label4 ************
Dim slovo(5) As String
slovo(0) = "Надежность (%)": slovo(1) = "Сход/допуск (%)": slovo(2) = "Размерность Х"
For I = 0 To 2
 With Form1.Label4(I)
  If I > 0 Then Load Form1.Label4(I)
  .Visible = True: Set .Container = Form1.Frame2: .Left = 1430: .Top = 180 + 400 * I: .Height = 320: .Width = 1500
  .Alignment = 0: .BorderStyle = 1: .Caption = slovo(I): .Font.size = 10
 End With
Next I
 Form1.Label4(1).ToolTipText = "Величина сходимости или допуска в относительном виде"

'******** Combo для выбора надежности ***********
With Form1.Combo1
Set .Container = Form1.Frame2: .Left = 100: .Top = 150: .Clear: .AddItem (50): .AddItem (75): .AddItem (90)
.AddItem (95): .AddItem (98): .AddItem (99): .AddItem (99.9): .ListIndex = 3
End With

'********* Размещение текстовых полей и соответствующих им Label4 ************
For I = 0 To 1
With Form1.Text3(I)
Set .Container = Form1.Frame2: .Visible = True: .BackColor = &HFFFFFF: .Alignment = 2: .FontBold = False
.Left = 100: .Top = 580 + 400 * I: .Width = 1200: .Height = 320:
End With
Next I
Form1.Text3(0).Text = 5: Form1.Text3(1).Text = "мг/л":
End Sub 'установка кнопок граничных условий на frame2
Sub list_box()
With Form1.List1
.Left = 11250: .Width = 3180: .Top = 5650: .Height = 1800: .Clear: .ToolTipText = "Список ранее открытых файлов"
.Font.size = 11.5: .Font.Bold = True
End With
End Sub 'список ранее открытых файлов
Sub report_field()
With Form1.Label2
.Visible = True: .BackColor = &H80000018: .Alignment = 0: .Caption = "": .ToolTipText = "Окно отчета 1"
.Left = 700: .Top = 7750: .Width = 5500: .Height = 1000: .BorderStyle = 1: .Font.size = 10: .Font.Name = "Arial"
End With

With Form1.Label1
.Left = 6280: .Top = 7750: .Width = 4120: .Height = 1000: .FontSize = 10: .Font.Name = "Arial"
.ToolTipText = "Окно отчета 2": .BackColor = &H8000000B: .BorderStyle = 1
End With
End Sub 'метки для вывода отчета

Sub buttons_of_change_scale()
Dim button_caption(6) As String

button_caption(0) = "v": button_caption(1) = "ut": button_caption(2) = "tu": button_caption(3) = "w":
button_caption(4) = "p": button_caption(5) = "q":
For I = 1 To 6
 Load Form1.Command14(I)
 With Form1.Command14(I)
  .Visible = True:  .BackColor = &H80000003: .Height = 300: .Width = 500: .Top = 7050: .Left = 700 + 3050 * (I - 1)
  .FontName = "Wingdings 3": .FontSize = 12: .FontBold = True: .Caption = button_caption(I - 1)
 If I > 4 Then .Top = 150 + (I - 5) * 6500: .Left = 10450: .Width = 350: .Enabled = False
 End With
Next I

Form1.Timer1.Enabled = False
End Sub 'кнопки для изменения масштаба графика
