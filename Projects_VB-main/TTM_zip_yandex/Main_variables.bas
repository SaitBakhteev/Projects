Attribute VB_Name = "Main_variables"
Public RowSel_                     As Integer  '����� ���������� ���� � �������
Public ColSel_                     As Integer  '����� ���������� ������� � �������
Public tab_item                    As Integer  '������ ������� �������

'********* *******************���������� ������ � �� ������� ************************************
Public Count_of_opened_files       As Integer  '���������� �������� ������
Public Opened_file(6)              As String   '������ ���� ��������� �����


'********** ��������� ��� ����������� �������� �������� ����� ������� ����� ������������������� **********
Public K1_initial                  As Single     '
Public K2_initial                  As Single     '
Public K3_initial                  As Single     '
Public K4_initial                  As Single     '

'********* ���������� ����������� ����������������� � ��������� ������ **************
Public I                           As Single     '������� ������
Public n                           As Single     '���������� ����������������� �����
Public X1()                        As Single     '����������������� �������� �� ��� ��
Public X2()                        As Single     '����������������� �������� �� ��� �Y
Public Cvet_tochek                 As Single     '���� ���������� ����� �� �������
Public Cvet_tochek_(6)             As Single     '���� ���������� ����� �� ������� ��� �������� ������ �� ������
Public Rnd_cvet                    As Boolean    '��������� ���� �����
Public Img                         As StdPicture '���������� ��� ����������� ��������� ����������� �������
Public Cleen_picture               As Boolean    '���������� �������� ������� ����������� �� ���� �������

'************ ���������� �������������� ������ ***************************
Public X3()                        As Single   '����������������� �������� ��� ����������
Public Curve_information           As String   '�������� �������� �� ������, ���������� � ������ ������ �����

'************ �� ������������� ����� *********************
Public element(150)                As String  '
Public count_of_elements           As Integer
Public count_of_lines(500)         As Integer '���������� ������������� ����� ��� ������� ��������
Public name_of_line(150, 15000)    As String  '�������� ������������� �����. �������: ++m60, +s150, 50 � �.�.
Public Source(150, 15000)          As String  '�������� (���) �����
Public Intensity(150, 15000)       As Integer '������������� �����
Public WL(150, 15000)              As Single  '����� ����� ������������� �����

'************ �������� ���������� ��� ������ ������ ******************
Public X_(500)                     As Single  '���������� ��� ����������� ���� ������������ �� ������� �������� X1
Public Y_(500)                     As Single  '���������� ��� ����������� ���� ������������ �� ������� �������� X2
Public N_                          As Integer '����� ���������� ������������ ������
