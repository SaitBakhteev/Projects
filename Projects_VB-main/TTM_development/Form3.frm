VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "БД аналитических линий"
   ClientHeight    =   9585
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   9960
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9585
   ScaleWidth      =   9960
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   5280
      TabIndex        =   6
      Text            =   "Combo2"
      Top             =   4440
      Width           =   1215
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H8000000A&
      Caption         =   "Option1"
      Height          =   1335
      Index           =   0
      Left            =   1320
      TabIndex        =   5
      Top             =   5880
      Width           =   1815
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H8000000C&
      Caption         =   "Check1"
      Height          =   495
      Left            =   2160
      TabIndex        =   4
      Top             =   4560
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   5640
      TabIndex        =   3
      Top             =   3120
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   4320
      TabIndex        =   2
      Text            =   "Combo1"
      Top             =   4680
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   4215
      Left            =   600
      TabIndex        =   0
      Top             =   1200
      Width           =   6135
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
         Height          =   2295
         Left            =   1080
         TabIndex        =   1
         Top             =   840
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   4048
         _Version        =   393216
      End
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private El_item        As Integer 'индекс выбранного элемента
Private line_count     As Integer 'количество отобрнных и сортируемых линий

'********** Переменные массивов первичной сортировки ******************
Dim new_string()       As String  'массив названий линий
Dim new_WL()           As Single  'массив значений длин волн
Dim new_intensity()    As Integer 'массив значений интенсивности линий

'********** Переменные массивов вторичной сортировки ******************
Dim new_string1()      As String
Dim new_WL1()          As Single
Dim new_intensity1()   As Integer
Private Sub Form_Load()
read_file_of_DB_of_lines
With Me
.Left = 10000: .Top = 200: .Width = 5500: .Height = 8800
End With

With Frame1
.Caption = "": .Width = 5000: .Height = 8000: .Left = 150: .Top = 100:
End With

With Combo1
Set .Container = Frame1: .Left = 100: .Top = 180: .Width = 1000
End With

With MSFlexGrid1
Set .Container = Frame1: .Left = 100: .Top = 550: .ScrollBars = flexScrollBarVertical: .Height = 6500: .Rows = 1000: .Width = 3900
.Cols = 2: .ColWidth(0) = 2000: .ColWidth(1) = 1500: .TextMatrix(0, 0) = "Аналитическая линия": .TextMatrix(0, 1) = "Длина волны, нм"
.ToolTipText = "Вставка маркера - левая кнопка мыши;  добавление линии в расчет - двойной щелчок мышью"
End With

With Command1
Set .Container = Frame1: .Left = 1200: .Top = 180: .Height = 300: .Width = 1500: .Caption = "Линии в спектре"
.ToolTipText = "Выводит в таблицу список линий на данном участке спектра"
End With

With Check1
Set .Container = Frame1
.Top = 180: .Left = 2800: .Width = 1800: .Height = 300: .BackColor = &H80000003: .Caption = "Включить в расчет"
End With

Dim slovo(2) As String
Load Option1(1): slovo(0) = "Сортировка по интенсивности": slovo(1) = "Сортировка по длине волны"
For I = 0 To 1
With Option1(I)
Set .Container = Frame1: .Visible = True: .Caption = slovo(I): .BackColor = &H80000000
.Top = 7200 + 400 * I: .Left = 100: .Width = 2650: .Height = 300
End With
Next I
Option1(0).ToolTipText = "Сортировка производится внутри выбранного типа линий (список справа)": Option1(1).value = True

With Combo2
Set .Container = Frame1: .Left = 2880: .Top = 7200
.AddItem " ", 0: .AddItem "a", 1: .AddItem "c", 2: .AddItem "e", 3: .AddItem "g", 4: .AddItem "h", 5
.AddItem "i", 6: .AddItem "ie", 7: .AddItem "m", 8: .AddItem "n", 9: .AddItem "r", 10: .AddItem "s", 11
.AddItem "w", 12: .ListIndex = 8
End With

End Sub 'загрузка интерфейса
Private Sub read_file_of_DB_of_lines()
Dim EL_ As String
Dim N_ As Single
Dim WL_ As Single
Dim I_ As Single
Dim Source_ As String
Dim Ion As String

'On Error GoTo err
 Open App.Path & "\lines.txt" For Input As #1
 Input #1, slovo
 
 EL_ = "": count_of_elements = 0
 Do
   slovo = EL_
   Input #1, EL_, N_, WL_, I_, Source_, Ion
   If Mid(Form1.Label3.Caption, 15, 1) = "," Then WL_ = Replace(WL_, ".", ","):
      
   Select Case Ion
     Case "0": Ion = ""
     Case "1": Ion = "+"
     Case "2": Ion = "2+"
     Case "3": Ion = "3+"
   End Select
   
   If EL_ <> slovo Then count_of_elements = count_of_elements + 1: element(count_of_elements) = EL_: _
   count_of_lines(count_of_elements) = 0
   
   count_of_lines(count_of_elements) = count_of_lines(count_of_elements) + 1: dd = count_of_lines(count_of_elements)
   WL(count_of_elements, dd) = CSng(WL_)
   Intensity(count_of_elements, dd) = Val(I_)
   If Source_ <> "" Then Source(count_of_elements, dd) = Source_ Else Source(count_of_elements, dd) = " "
   name_of_line(count_of_elements, dd) = EL_ & Ion & "(" & Source_ & I_ & ")"
 Loop Until EOF(1)
 Close #1
 
 For I = 0 To count_of_elements - 1
  Combo1.AddItem element(I + 1), I
 Next I
 Combo1.ListIndex = 0
'err: If err.Number = 55 Then Close #1: _
clear_buffer: MsgBox "Открытый файл содержит неверный формат", vbSystemModal, "Ошибка": read_file_of_DB_of_lines: _
Exit Sub
End Sub 'открытие и чтение файла БД аналитических линий
Private Sub Combo1_Click()
If Option1(0).value = True Then sort_by_line_type Else sort_by_WL
End Sub 'выбор элемента
Private Sub Combo2_Click()
Option1(0).value = False
End Sub 'выбор типа линии

Private Sub Option1_Click(index As Integer)
If index = 0 Then sort_by_line_type Else sort_by_WL
End Sub 'выбор сортировки линий
Private Sub Command1_Click()
dd = 0
'K1 = Form1.MSFlexGrid1.TextMatrix(RowSel_, 3): K2 = Form1.MSFlexGrid1.TextMatrix(RowSel_, 4)
For I = 1 To count_of_elements
  For I3 = 1 To count_of_lines(I)
     If WL(I, I3) > k1 And WL(I, I3) < k2 Then dd = dd + 1: MSFlexGrid1.Rows = dd + 1: _
     MSFlexGrid1.TextMatrix(dd, 0) = name_of_line(I, I3): MSFlexGrid1.TextMatrix(dd, 1) = WL(I, I3)
  Next I3
Next I
End Sub 'показать в таблице список линий на данном участке спектра
 Sub insert_marker(xx As Single, cvet_markera As Single, slovo As String)
Dim I As Single
   For I = Graphic.K3 To Graphic.K4 * 0.85 Step (Graphic.K4 * 0.85 - Graphic.K3) / 500
     'Graphic.Calculated_curve xx, I, cvet_markera, 5
   Next I
   Q1 = 9010 - (Graphic.k2 - xx) * 8300 / (Graphic.k2 - k1):
   Q2 = 6620 - (Graphic.K4 * 0.9 - Graphic.K3) * 6430 / (Graphic.K4 - Graphic.K3):
  With Form1.Picture1
  ' .CurrentX = Q1: .CurrentY = Q2:
  End With
  Form1.Picture1.Print slovo
End Sub 'блок вставки маркера на спектр
Private Sub MSFlexGrid1_Click()
Dim slovo As String
Dim cvet As Single
Dim xx As Single
coef = Abs(Log(Rnd) / 2.3028): cvet = 10 ^ (coef + 3)
If cvet > 10 ^ 8 Then cvet = 10 ^ 8
 Form1.Picture1.ForeColor = cvet
   With MSFlexGrid1
     Row_ = .RowSel: slovo = .TextMatrix(Row_, 0): xx = .TextMatrix(Row_, 1)
   End With
  '   insert_marker xx, cvet, slovo
Form1.Picture1.ForeColor = &H0&
With Graphic
 Form1.Text4.Text = "K1=" & .k1 & "; K2=" & .k2 & "; K3=" & .K3 & "; K4=" & .K4
End With
End Sub 'вставка маркера линии на спектр
Private Sub MSFlexGrid1_DblClick()
k1 = Graphic.k1: k2 = Graphic.k2
With Form1.MSFlexGrid1(2)
 Row_ = MSFlexGrid1.RowSel: line_ = MSFlexGrid1.TextMatrix(Row_, 0): WL_ = MSFlexGrid1.TextMatrix(Row_, 1)
 Graphic.k1 = WL_ - 0.15: Graphic.k2 = WL_ + 0.15:   'Peak_calc.granicy_rascheta (True)
If Check1.value = 1 Then .Rows = .Rows + 1: last_row = .Rows - 1: .TextMatrix(last_row, 0) = last_row: .TextMatrix(last_row, 1) = line_: .TextMatrix(last_row, 2) = WL_
End With
Form1.Picture1.Cls
Graphic.Experimental_curve
End Sub 'добавление в расчет аналитических линий
Private Sub sort_by_WL()
dd = Combo1.ListIndex + 1
MSFlexGrid1.Rows = count_of_lines(dd) + 1
 For I = 1 To MSFlexGrid1.Rows - 1
  MSFlexGrid1.TextMatrix(I, 0) = name_of_line(dd, I)
  MSFlexGrid1.TextMatrix(I, 1) = WL(dd, I)
Next I
End Sub 'сортировка по длине волны
Private Sub sort_by_line_type()
El_item = Combo1.ListIndex + 1
ReDim new_string(count_of_lines(El_item))
ReDim new_WL(count_of_lines(El_item))
ReDim new_intensity(count_of_lines(El_item))
ReDim new_string1(count_of_lines(El_item))
ReDim new_WL1(count_of_lines(El_item))
ReDim new_intensity1(count_of_lines(El_item))

dd = 0
For I = 1 To count_of_lines(El_item)
If Source(El_item, I) = Combo2.Text Then dd = dd + 1: new_string(dd) = name_of_line(El_item, I): new_WL(dd) = WL(El_item, I): _
new_intensity(dd) = Intensity(El_item, I)
Next I
line_count = dd

new_intensity1(1) = new_intensity(1): new_string1(1) = new_string(1): new_WL1(1) = new_WL(1)
For I = 2 To line_count
 dd = 0
 Do
  dd = dd + 1
 Loop While new_intensity(I) < new_intensity1(dd)
 
 For I3 = I - 1 To dd Step -1
    new_intensity1(I3 + 1) = new_intensity1(I3)
    new_string1(I3 + 1) = new_string1(I3): new_WL1(I3 + 1) = new_WL1(I3)
 Next I3
 new_intensity1(dd) = new_intensity(I)
 new_string1(dd) = new_string(I): new_WL1(dd) = new_WL(I) 'данные, которые войдут в таблицу
Next I

MSFlexGrid1.Rows = line_count + 1
For I = 1 To line_count
MSFlexGrid1.TextMatrix(I, 0) = new_string1(I): MSFlexGrid1.TextMatrix(I, 1) = new_WL1(I)
Next I
End Sub 'сортировка линий в порядке убывания интенсивности внутри выбранного типа


