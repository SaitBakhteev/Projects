VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Load_analytical_lines"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Dim N_(10 ^ 6)            As String
Dim Letter_(10 ^ 6)       As String
Dim WL_(10 ^ 6)           As String
Dim I_(10 ^ 6)            As String
Dim Source_(10 ^ 6)       As String
Dim Ion_(10 ^ 6)          As String
Dim Nalichnie_source      As Boolean
Dim slovo(10)             As String
Dim kolichestvo_strok     As Single
 Sub read_every_peak1()
 Open App.Path & "\2.txt" For Input As #1
Input #1, slovo(1)
 Do
 Input #1, slovo(1), slovo(2), slovo(3), slovo(4), slovo(5), slovo(6)
 slovo_ = slovo(1) & Chr(9) & slovo(2) & Chr(9) & slovo(3) & Chr(9) & slovo(4) & Chr(9) & slovo(5) & Chr(9) & slovo(6) & Chr(13) + Chr(10)
 Form1.Text1(0).Text = Form1.Text1(0).Text & slovo_
 Loop Until EOF(1)
 Close #1
 End Sub
 
 Sub read_every_peak()
 
Open App.Path & "\1.txt" For Input As #1
kolichestvo_strok = 0
Do
 
 Input #1, slovo(0)
dd = 0
Do
 dd = dd + 1
 Input #1, slovo(dd)
 slovo(dd) = Replace(slovo(dd), Chr(32), "")
Loop While slovo(dd) <> "</Peaks>"
dd = dd - 2
kolichestvo_strok = kolichestvo_strok + 1
If dd = 5 Then without_source Else with_source

Loop Until EOF(1)
Close #1

Open App.Path & "\2.txt" For Output As #1
Print #1, "Ёлемент" & Chr(9) & "N" & Chr(9) & "WL" & Chr(9) & "I" & Chr(9) & "Source" & Chr(9) & "Ion"
For i = 1 To kolichestvo_strok

slovo_ = Letter_(i) & "," & Chr(9) & N_(i) & "," & Chr(9) & WL_(i) & "," & Chr(9) & I_(i) & "," & Chr(9) & _
Source_(i) & "," & Chr(9) & Ion_(i)

Print #1, slovo_
Next i
Close #1
End Sub
Sub with_source()
read_N kolichestvo_strok, slovo(1)
read_letter kolichestvo_strok, slovo(2)
read_WL kolichestvo_strok, slovo(3)
read_I kolichestvo_strok, slovo(4)
read_Source kolichestvo_strok, slovo(5)
read_Ion kolichestvo_strok, slovo(6)
End Sub
Sub without_source()
read_N kolichestvo_strok, slovo(1)
read_letter kolichestvo_strok, slovo(2)
read_WL kolichestvo_strok, slovo(3)
read_I kolichestvo_strok, slovo(4)
Source_(kolichestvo_strok) = ""
read_Ion kolichestvo_strok, slovo(5)
End Sub
Private Sub read_N(index As Single, slovo_ As String)

slovo_ = Replace(slovo_, "<N>", "")
slovo_ = Replace(slovo_, "</N>", "")
slovo_ = Replace(slovo_, Chr(32), "")
N_(index) = slovo_
End Sub '
Private Sub read_letter(index As Single, slovo_ As String)

slovo_ = Replace(slovo_, "<Letter>", "")
slovo_ = Replace(slovo_, "</Letter>", "")
slovo_ = Replace(slovo_, Chr(32), "")
Letter_(index) = slovo_
End Sub '
Private Sub read_WL(index As Single, slovo_ As String)

slovo_ = Replace(slovo_, "<WL>", "")
slovo_ = Replace(slovo_, "</WL>", "")
slovo_ = Replace(slovo_, Chr(32), "")
WL_(index) = slovo_
End Sub '
Private Sub read_I(index As Single, slovo_ As String)

slovo_ = Replace(slovo_, "<I>", "")
slovo_ = Replace(slovo_, "</I>", "")
slovo_ = Replace(slovo_, Chr(32), "")
I_(index) = slovo_
End Sub '
Private Sub read_Source(index As Single, slovo_ As String)

slovo_ = Replace(slovo_, "<Source>", "")
slovo_ = Replace(slovo_, "</Source>", "")
slovo_ = Replace(slovo_, Chr(32), "")
Source_(index) = slovo_
End Sub '
Private Sub read_Ion(index As Single, slovo_ As String)

slovo_ = Replace(slovo_, "<Ion>", "")
slovo_ = Replace(slovo_, "</Ion>", "")
slovo_ = Replace(slovo_, Chr(32), "")
Ion_(index) = slovo_
End Sub '






























'Private Sub read_word_letter()
'Input #1, slovo
'dd = 0
'before_element = current_element
'Do
'dd = dd + 1
'Loop While Mid(slovo, dd, 1) <> ">"
'Do
'dd = dd + 1
'current_element = current_element & Mid(slovo, dd, 1)
'Loop While Mid(slovo, dd, 1) <> Chr(32)
'current_element = Replace(current_element, Chr(32), "")
'lines_count(count_of_elements) = lines_count(count_of_elements) + 1 'количество линий дл€ текущего элемента
'i 'f current_element <> before_element Then count_of_elements = count_of_elements + 1: lines_count(count_of_elements) = 1
'
'El_symbol(count_of_elements) = current_element
'End Sub 'чтение строки letter дл€ определени€ символа элемента''

'Private Sub read_dlina_volny()
'Input #1, slovo
'dd = 0
'Do
'dd = dd + 1
'Loop While Mid(slovo, dd, 1) <> ">"
'Do
'dd = dd + 1
'dlina_volny(count_of_elements,lines_count = current_element & Mid(slovo, dd, 1)
'Loop While Mid(slovo, dd, 1) <> Chr(32)
'current_element = Replace(current_element, Chr(32), "")
'l'ines_count = lines_count + 1 'количество линий дл€ текущего элемента
'If current_element <> before_element Then count_of_elements = count_of_elements + 1: lines_count = 1
'El_symbol(count_of_elements) = current_element


'End Sub 'чтение длины волны

