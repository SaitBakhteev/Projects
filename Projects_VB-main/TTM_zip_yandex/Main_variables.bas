Attribute VB_Name = "Main_variables"
Public RowSel_                     As Integer  'номер выбранного ряда в таблице
Public ColSel_                     As Integer  'номер выбранного столбца в таблице
Public tab_item                    As Integer  'индекс текущей таблицы

'********* *******************ПЕРЕМЕННЫЕ РАБОТЫ С ИХ ФАЙЛАМИ ************************************
Public Count_of_opened_files       As Integer  'количество открытых файлов
Public Opened_file(6)              As String   'полный путь открытого файла


'********** ПАРАМЕТРЫ ДЛЯ ЗАПОМИНАНИЯ ИСХОДНЫХ ЗНАЧЕНИЙ ШКАЛЫ ГРАФИКИ ПОСЛЕ АВТОМАСШТАБИРОВАНИЯ **********
Public K1_initial                  As Single     '
Public K2_initial                  As Single     '
Public K3_initial                  As Single     '
Public K4_initial                  As Single     '

'********* ПЕРЕМЕННЫЕ ОТОБРАЖЕНИЯ ЭКСПЕРИМЕНТАЛЬНЫХ И РАСЧЕТНЫХ КРИВЫХ **************
Public I                           As Single     'счетчик циклов
Public n                           As Single     'количество экспериментальных точек
Public X1()                        As Single     'экспериментальные значения по оси ОХ
Public X2()                        As Single     'экспериментальные значения по оси ОY
Public Cvet_tochek                 As Single     'цвет отбражения точек на графике
Public Cvet_tochek_(6)             As Single     'цвет отбражения точек на графике при открытии файлов из списка
Public Rnd_cvet                    As Boolean    'случайный цвет точек
Public Img                         As StdPicture 'переменная для запоминания исходного изображения графика
Public Cleen_picture               As Boolean    'переменная проверки наличия изображения на окне графика

'************ ПЕРЕМЕННЫЕ ГРАДУИРОВОЧНЫХ КРИВЫХ ***************************
Public X3()                        As Single   'экспериментальные значения для нормировки
Public Curve_information           As String   'основные сведения по кривой, хранящиеся в первой строке файла

'************ БД аналитических линий *********************
Public element(150)                As String  '
Public count_of_elements           As Integer
Public count_of_lines(500)         As Integer 'количество аналитических линий для каждого элемента
Public name_of_line(150, 15000)    As String  'название аналитической линии. Примеры: ++m60, +s150, 50 и т.д.
Public Source(150, 15000)          As String  'источник (тип) линии
Public Intensity(150, 15000)       As Integer 'интенсивность линии
Public WL(150, 15000)              As Single  'длина волны аналитической линии

'************ Резерные переменные для общего буфера ******************
Public X_(500)                     As Single  'переменная для запоминания всех отображенных на графике значений X1
Public Y_(500)                     As Single  'переменная для запоминания всех отображенных на графике значений X2
Public N_                          As Integer 'общее количество отображенных данных
