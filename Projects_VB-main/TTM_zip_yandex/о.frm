VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   10800
   ClientLeft      =   45
   ClientTop       =   480
   ClientWidth     =   20400
   BeginProperty Font 
      Name            =   "Times New Roman"
      Size            =   8.25
      Charset         =   204
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10800
   ScaleWidth      =   20400
   Begin VB.Timer Timer1 
      Left            =   9600
      Top             =   5160
   End
   Begin VB.CommandButton Command14 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command14"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   4800
      Style           =   1  'Graphical
      TabIndex        =   128
      Top             =   120
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command13 
      Caption         =   "56"
      BeginProperty Font 
         Name            =   "Wingdings 3"
         Size            =   12
         Charset         =   2
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   5640
      TabIndex        =   127
      Top             =   9360
      Width           =   495
   End
   Begin VB.CommandButton Command13 
      Caption         =   "56"
      BeginProperty Font 
         Name            =   "Wingdings 3"
         Size            =   12
         Charset         =   2
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   4440
      TabIndex        =   126
      Top             =   9360
      Width           =   495
   End
   Begin VB.CommandButton Command13 
      Caption         =   "56"
      BeginProperty Font 
         Name            =   "Wingdings 3"
         Size            =   12
         Charset         =   2
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   3240
      TabIndex        =   125
      Top             =   9360
      Width           =   495
   End
   Begin VB.CommandButton Command13 
      Caption         =   "56"
      BeginProperty Font 
         Name            =   "Wingdings 3"
         Size            =   12
         Charset         =   2
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   2040
      TabIndex        =   124
      Top             =   9360
      Width           =   495
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Half_auto"
      Height          =   615
      Left            =   360
      TabIndex        =   123
      Top             =   8520
      Width           =   1095
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Ручной все параметры"
      Height          =   495
      Left            =   360
      TabIndex        =   122
      Top             =   7920
      Width           =   1095
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Index           =   3
      Left            =   5400
      TabIndex        =   121
      Top             =   8880
      Width           =   1095
   End
   Begin VB.TextBox Text6 
      BackColor       =   &H80000000&
      Height          =   435
      Index           =   3
      Left            =   5400
      TabIndex        =   120
      Top             =   7920
      Width           =   855
   End
   Begin VB.CommandButton Command9 
      Caption         =   "fon"
      Height          =   375
      Index           =   3
      Left            =   5400
      TabIndex        =   119
      Top             =   8400
      Width           =   855
   End
   Begin VB.TextBox Text6 
      BackColor       =   &H80000000&
      Height          =   435
      Index           =   2
      Left            =   4320
      TabIndex        =   118
      Top             =   7920
      Width           =   855
   End
   Begin VB.TextBox Text6 
      BackColor       =   &H80000000&
      Height          =   435
      Index           =   1
      Left            =   3120
      TabIndex        =   117
      Top             =   7920
      Width           =   855
   End
   Begin VB.TextBox Text6 
      BackColor       =   &H80000000&
      Height          =   435
      Index           =   0
      Left            =   1920
      TabIndex        =   116
      Top             =   7920
      Width           =   855
   End
   Begin VB.CommandButton Command9 
      Caption         =   "sigma"
      Height          =   375
      Index           =   2
      Left            =   4320
      TabIndex        =   115
      Top             =   8400
      Width           =   855
   End
   Begin VB.CommandButton Command9 
      Caption         =   "A"
      Height          =   375
      Index           =   1
      Left            =   3120
      TabIndex        =   114
      Top             =   8400
      Width           =   855
   End
   Begin VB.CommandButton Command9 
      Caption         =   "M"
      Height          =   375
      Index           =   0
      Left            =   1920
      TabIndex        =   113
      Top             =   8400
      Width           =   855
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Index           =   2
      Left            =   4200
      TabIndex        =   112
      Top             =   8880
      Width           =   1095
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Index           =   1
      Left            =   3000
      TabIndex        =   111
      Top             =   8880
      Width           =   1095
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Index           =   0
      Left            =   1800
      TabIndex        =   110
      Top             =   8880
      Width           =   1095
   End
   Begin VB.TextBox Text4 
      Height          =   2655
      Left            =   14400
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   109
      Text            =   "о.frx":0000
      Top             =   0
      Width           =   5775
   End
   Begin VB.ListBox List1 
      Height          =   1320
      Left            =   11520
      TabIndex        =   107
      Top             =   5760
      Width           =   1095
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Option1"
      Height          =   495
      Index           =   0
      Left            =   6600
      TabIndex        =   106
      Top             =   3840
      Width           =   1215
   End
   Begin VB.Frame Frame2 
      Caption         =   "Frame2"
      Height          =   495
      Left            =   3360
      TabIndex        =   103
      Top             =   480
      Width           =   1095
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   735
      Index           =   0
      Left            =   2280
      TabIndex        =   99
      Top             =   4320
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   1296
      _Version        =   393216
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4695
      Left            =   8400
      TabIndex        =   98
      Top             =   960
      Width           =   6015
      _ExtentX        =   10610
      _ExtentY        =   8281
      _Version        =   393216
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "о.frx":0006
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame4(0)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Tab 1"
      TabPicture(1)   =   "о.frx":0022
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame4(1)"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Tab 2"
      TabPicture(2)   =   "о.frx":003E
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame4(2)"
      Tab(2).ControlCount=   1
      Begin VB.Frame Frame4 
         BackColor       =   &H80000016&
         Caption         =   "Frame4"
         Height          =   1575
         Index           =   2
         Left            =   -74950
         TabIndex        =   108
         Top             =   300
         Width           =   1575
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H80000016&
         Caption         =   "Frame4"
         Height          =   1575
         Index           =   1
         Left            =   -74950
         TabIndex        =   104
         Top             =   300
         Width           =   1575
      End
      Begin VB.Frame Frame4 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Frame4"
         Height          =   1575
         Index           =   0
         Left            =   2640
         TabIndex        =   100
         Top             =   1320
         Width           =   1575
      End
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H8000000B&
      DrawStyle       =   6  'Inside Solid
      Height          =   975
      Left            =   3360
      ScaleHeight     =   915
      ScaleWidth      =   2115
      TabIndex        =   97
      Top             =   5520
      Width           =   2175
      Begin VB.Shape Shape1 
         Height          =   735
         Left            =   0
         Top             =   0
         Width           =   615
      End
   End
   Begin VB.ComboBox Combo1 
      Height          =   345
      Left            =   9000
      TabIndex        =   95
      Text            =   "Combo1"
      Top             =   2880
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4320
      Top             =   4320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H80000014&
      Caption         =   "Frame1"
      Height          =   1455
      Left            =   120
      TabIndex        =   94
      Top             =   4440
      Width           =   975
   End
   Begin VB.CommandButton Command8 
      BackColor       =   &H0000C0C0&
      Caption         =   "ПОМОЩЬ"
      Height          =   255
      Left            =   13920
      Style           =   1  'Graphical
      TabIndex        =   93
      Top             =   6960
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton Command7 
      Caption         =   "План работ"
      Height          =   255
      Left            =   13920
      TabIndex        =   92
      Top             =   0
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton Command6 
      BackColor       =   &H0000C0C0&
      Caption         =   "Statistic Function"
      Height          =   495
      Left            =   14160
      Style           =   1  'Graphical
      TabIndex        =   91
      Top             =   6480
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H0000C0C0&
      Caption         =   "No Clear text box"
      Height          =   495
      Left            =   14160
      Style           =   1  'Graphical
      TabIndex        =   90
      Top             =   6000
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H0080FF80&
      Caption         =   "START"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   11880
      Style           =   1  'Graphical
      TabIndex        =   89
      Top             =   7680
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   30
      Left            =   2280
      MaskColor       =   &H0000FF00&
      Style           =   1  'Graphical
      TabIndex        =   88
      Top             =   1200
      Visible         =   0   'False
      Width           =   2775
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H80000003&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   29
      Left            =   3240
      Style           =   1  'Graphical
      TabIndex        =   87
      Top             =   1680
      Visible         =   0   'False
      Width           =   3015
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   28
      Left            =   -120
      Style           =   1  'Graphical
      TabIndex        =   86
      Top             =   1440
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   27
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   85
      Top             =   2520
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   26
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   84
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   25
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   83
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   24
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   82
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   23
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   81
      Top             =   3000
      Visible         =   0   'False
      Width           =   3255
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   22
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   80
      Top             =   3120
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   21
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   79
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   20
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   78
      Top             =   3000
      Visible         =   0   'False
      Width           =   3255
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   19
      Left            =   2280
      Style           =   1  'Graphical
      TabIndex        =   77
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   18
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   76
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   17
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   75
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   16
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   74
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   15
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   73
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   14
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   72
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   13
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   71
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   12
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   70
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   11
      Left            =   2160
      Style           =   1  'Graphical
      TabIndex        =   69
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   2160
      Style           =   1  'Graphical
      TabIndex        =   68
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   67
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   66
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   65
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   64
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   5
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   63
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   62
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   61
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      Height          =   495
      Index           =   2
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   60
      Top             =   2880
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      Height          =   495
      Index           =   1
      Left            =   2040
      Style           =   1  'Graphical
      TabIndex        =   59
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0FFC0&
      Caption         =   "Command3"
      Height          =   495
      Index           =   0
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   58
      Top             =   2760
      Visible         =   0   'False
      Width           =   3135
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   51
      Left            =   120
      TabIndex        =   57
      Text            =   "Text3"
      Top             =   3600
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   50
      Left            =   3120
      TabIndex        =   56
      Text            =   "Text3"
      Top             =   1800
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      DataField       =   "0.95"
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0,000E+00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1049
         SubFormatType   =   6
      EndProperty
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   49
      Left            =   240
      TabIndex        =   55
      Text            =   "0.95"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   48
      Left            =   0
      TabIndex        =   54
      Text            =   "Text3"
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   47
      Left            =   360
      TabIndex        =   53
      Text            =   "Text3"
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   315
      Index           =   46
      Left            =   120
      TabIndex        =   52
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   45
      Left            =   0
      TabIndex        =   51
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   44
      Left            =   0
      TabIndex        =   50
      Text            =   "Text3"
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   43
      Left            =   480
      TabIndex        =   49
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   42
      Left            =   120
      TabIndex        =   48
      Text            =   "Text3"
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   41
      Left            =   120
      TabIndex        =   47
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   40
      Left            =   120
      TabIndex        =   46
      Text            =   "Text3"
      Top             =   2400
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   39
      Left            =   240
      TabIndex        =   45
      Text            =   "Text3"
      Top             =   2400
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   38
      Left            =   0
      TabIndex        =   44
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   37
      Left            =   120
      TabIndex        =   43
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   36
      Left            =   120
      TabIndex        =   42
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   35
      Left            =   120
      TabIndex        =   41
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   34
      Left            =   120
      TabIndex        =   40
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   33
      Left            =   0
      TabIndex        =   39
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   32
      Left            =   0
      TabIndex        =   38
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   31
      Left            =   0
      TabIndex        =   37
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   30
      Left            =   240
      TabIndex        =   36
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   29
      Left            =   0
      TabIndex        =   35
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   28
      Left            =   0
      TabIndex        =   34
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   27
      Left            =   0
      TabIndex        =   33
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   26
      Left            =   240
      TabIndex        =   32
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   25
      Left            =   0
      TabIndex        =   31
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   24
      Left            =   0
      TabIndex        =   30
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   23
      Left            =   0
      TabIndex        =   29
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   22
      Left            =   0
      TabIndex        =   28
      Text            =   "Text3"
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   21
      Left            =   0
      TabIndex        =   27
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   20
      Left            =   0
      TabIndex        =   26
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   19
      Left            =   0
      TabIndex        =   25
      Text            =   "Text3"
      Top             =   2520
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   18
      Left            =   0
      TabIndex        =   24
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   17
      Left            =   0
      TabIndex        =   23
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   16
      Left            =   120
      TabIndex        =   22
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   15
      Left            =   0
      TabIndex        =   21
      Text            =   "Text3"
      Top             =   2400
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   14
      Left            =   0
      TabIndex        =   20
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   13
      Left            =   0
      TabIndex        =   19
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   12
      Left            =   0
      TabIndex        =   18
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   11
      Left            =   0
      TabIndex        =   17
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   10
      Left            =   120
      TabIndex        =   16
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   9
      Left            =   -120
      TabIndex        =   15
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   8
      Left            =   0
      TabIndex        =   14
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   7
      Left            =   0
      TabIndex        =   13
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   6
      Left            =   0
      TabIndex        =   12
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   5
      Left            =   0
      TabIndex        =   11
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   4
      Left            =   0
      TabIndex        =   10
      Text            =   "Text3"
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   3
      Left            =   120
      TabIndex        =   9
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   8
      Text            =   "о.frx":005A
      Top             =   2760
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   0
      TabIndex        =   7
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Alignment       =   2  'Center
      BackColor       =   &H0000FF00&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   0
      TabIndex        =   6
      Text            =   "Text3"
      Top             =   2640
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   0
      TabIndex        =   5
      Text            =   "Text2"
      Top             =   720
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H8000000F&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   600
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   4
      Text            =   "о.frx":0060
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H0000FFFF&
      Caption         =   "CLS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   13440
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   7680
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H008080FF&
      Caption         =   "END"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   14280
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   7680
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "Label5"
      Height          =   495
      Index           =   0
      Left            =   6600
      TabIndex        =   105
      Top             =   3840
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "Label6"
      Height          =   255
      Index           =   0
      Left            =   0
      TabIndex        =   102
      Top             =   0
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000018&
      Caption         =   "Label2"
      Height          =   495
      Left            =   7080
      TabIndex        =   101
      Top             =   3120
      Width           =   1215
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000000&
      Caption         =   "Label4"
      Height          =   495
      Index           =   0
      Left            =   7800
      TabIndex        =   96
      Top             =   7320
      Width           =   1215
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6120
      TabIndex        =   3
      Top             =   7320
      Width           =   1215
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   1095
      Left            =   2760
      TabIndex        =   2
      Top             =   7080
      Width           =   1215
   End
   Begin VB.Menu mnuGraphic 
      Caption         =   "Графика"
      Visible         =   0   'False
      Begin VB.Menu mnuClear 
         Caption         =   "Очистить"
      End
      Begin VB.Menu mnu_Choose_color 
         Caption         =   "Выбор цвета точек"
      End
      Begin VB.Menu graphic_type 
         Caption         =   "Тип графика"
         Begin VB.Menu mnu_graphic_type 
            Caption         =   "Точечный"
            Checked         =   -1  'True
            Index           =   0
         End
         Begin VB.Menu mnu_graphic_type 
            Caption         =   "Линейный"
            Index           =   1
         End
      End
      Begin VB.Menu mnu_Unite_data 
         Caption         =   "Объединить данные"
      End
      Begin VB.Menu mnu_Copy_graphic 
         Caption         =   "Копировать"
      End
   End
   Begin VB.Menu mnuPopup_meny_for_grid 
      Caption         =   "Данные"
      Visible         =   0   'False
      Begin VB.Menu mnuDelete 
         Caption         =   "Очистить ячейку                  Del"
      End
      Begin VB.Menu mnu_Clear_all 
         Caption         =   "Очистить все"
      End
      Begin VB.Menu mnu_Insert_row 
         Caption         =   "Добавить строку                  +"
      End
      Begin VB.Menu mnu_Delete_row 
         Caption         =   "Удалить строку                    Ctrl+X"
      End
      Begin VB.Menu mnu_Delete_all_rows 
         Caption         =   "Удалить все строки"
      End
      Begin VB.Menu mnu_Insert_col 
         Caption         =   "Добавить столбец               Ctrl+"
      End
      Begin VB.Menu mnu_Delete_col 
         Caption         =   "Удалить столбец                  Ctrl-"
      End
      Begin VB.Menu mnucopy 
         Caption         =   "Копировать данные"
      End
   End
   Begin VB.Menu mnu_report 
      Caption         =   "Отчет"
      Visible         =   0   'False
      Begin VB.Menu mnu_Copy_report 
         Caption         =   "Копировать отчет"
      End
      Begin VB.Menu mnu_Clear_report1 
         Caption         =   "Очистить"
      End
   End
   Begin VB.Menu report_2 
      Caption         =   "Отчет 2"
      Visible         =   0   'False
      Begin VB.Menu mnu_Copy_report_by_result 
         Caption         =   "Копировать отчет"
      End
      Begin VB.Menu mnu_Clear_report 
         Caption         =   "Очистить"
      End
   End
   Begin VB.Menu Norm 
      Caption         =   "Нормировка"
      Begin VB.Menu Normalize 
         Caption         =   "Тип нормировки"
         Begin VB.Menu mnu_Normalization 
            Caption         =   "Норм/ репер *Y"
            Index           =   0
         End
         Begin VB.Menu mnu_Normalization 
            Caption         =   "Y / Норм"
            Index           =   1
         End
      End
      Begin VB.Menu mnu_update_table 
         Caption         =   "Обновить таблицу после нормировки"
      End
   End
   Begin VB.Menu vyborka 
      Caption         =   "Выборка"
      Begin VB.Menu mode_of_vyborka 
         Caption         =   "Представление результата"
         Checked         =   -1  'True
         Index           =   0
      End
      Begin VB.Menu mode_of_vyborka 
         Caption         =   "Оценка по 2-балльной шкале"
         Index           =   1
      End
      Begin VB.Menu mode_of_vyborka 
         Caption         =   "Оценка по 4-балльной шкале"
         Index           =   2
      End
   End
   Begin VB.Menu spectrum 
      Caption         =   "Спектр"
      Begin VB.Menu mnuIterations 
         Caption         =   "Выбор итерации"
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "2"
            Index           =   0
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "3"
            Index           =   1
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "4"
            Index           =   2
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "6"
            Index           =   3
         End
         Begin VB.Menu mnu_Choose_iterations 
            Caption         =   "8"
            Index           =   4
         End
      End
      Begin VB.Menu mnu_Better_calculation 
         Caption         =   "Улучшенный расчет"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public dd                           As Integer
Private pressed_left_button         As Boolean

'******** Переменные для рисования прямоугольника для выделения участка на графике *****************
Private X_begin_of_rect         As Single 'начальное положение по оси ОХ
Private Y_begin_of_rect         As Single 'начальное положение по оси ОY

Private Sub Command10_Click()
Peak_calc.M = CSng(Text6(0).Text): Peak_calc.A = CSng(Text6(1).Text)
Peak_calc.sigma = CSng(Text6(2).Text): Peak_calc.fon = CSng(Text6(3).Text)
Peak_calc.ruchnoi_regim
Label2.Caption = "M=" & Peak_calc.M & "; A=" & Peak_calc.A & Chr(13) + Chr(10)
Label2.Caption = Label2.Caption & "sigma=" & Peak_calc.sigma & "; fon=" & Peak_calc.fon & Chr(13) + Chr(10)
Label2.Caption = Label2.Caption & "MNK=" & Peak_calc.MNK & Chr(13) + Chr(10)
End Sub

Private Sub Command11_Click()
Peak_calc.M = CSng(Text6(0).Text): Peak_calc.A = CSng(Text6(1).Text)
Peak_calc.sigma = CSng(Text6(2).Text): Peak_calc.fon = CSng(Text6(3).Text)
step_M = CSng(Text5(0).Text): step_A = CSng(Text5(1).Text)
step_Sigma = CSng(Text5(2).Text): step_fon = CSng(Text5(3).Text)
Peak_calc.gauss
Do
ff1 = Peak_calc.MNK:
Peak_calc.M = Peak_calc.M * step_M: Peak_calc.A = Peak_calc.A * step_A
Peak_calc.sigma = Peak_calc.sigma * step_Sigma: Peak_calc.fon = Peak_calc.fon * step_fon
Peak_calc.gauss
Loop While ff1 > Peak_calc.MNK
Text6(0).Text = Peak_calc.M: Text6(1).Text = Peak_calc.A
Text6(2).Text = Peak_calc.sigma: Text6(3).Text = Peak_calc.fon

Peak_calc.ruchnoi_regim
Label2.Caption = "M=" & Peak_calc.M & "; A=" & Peak_calc.A & Chr(13) + Chr(10)
Label2.Caption = Label2.Caption & "sigma=" & Peak_calc.sigma & "; fon=" & Peak_calc.fon & Chr(13) + Chr(10)
Label2.Caption = Label2.Caption & "MNK=" & Peak_calc.MNK & Chr(13) + Chr(10)

End Sub

Private Sub Command13_Click(index As Integer)
Val_ = CSng(Text5(index).Text): Val_ = 1 - (Val_ - 1)
Text5(index).Text = Val_
End Sub

Private Sub Command9_Click(index As Integer)
Dim value As Single

Peak_calc.M = CSng(Text6(0).Text)
Peak_calc.A = CSng(Text6(1).Text)
Peak_calc.sigma = CSng(Text6(2).Text)
Peak_calc.fon = CSng(Text6(3).Text)

Select Case index
 Case 0: Peak_calc.M = Peak_calc.M * CSng(Text5(0).Text): value = Peak_calc.M
 Case 1: Peak_calc.A = Peak_calc.A * CSng(Text5(1).Text): value = Peak_calc.A
 Case 2: Peak_calc.sigma = Peak_calc.sigma * CSng(Text5(2).Text): value = Peak_calc.sigma
 Case 3: Peak_calc.fon = Peak_calc.fon * CSng(Text5(3).Text): value = Peak_calc.fon
End Select
Text6(0).Text = Peak_calc.M
Text6(1).Text = Peak_calc.A
Text6(2).Text = Peak_calc.sigma
Text6(3).Text = Peak_calc.fon

'Picture1.Cls
TestGaph
Peak_calc.show_calculated_peak
Peak_calc.gauss
H_ = Peak_calc.A / (Sqr(2 * 3.14) * Peak_calc.sigma)
Label2.Caption = "M=" & Peak_calc.M & "; A=" & Peak_calc.A & "; H=" & H_ & Chr(13) + Chr(10)
Label2.Caption = Label2.Caption & "sigma=" & Peak_calc.sigma & "; fon=" & Peak_calc.fon & Chr(13) + Chr(10)
Label2.Caption = Label2.Caption & "MNK=" & Peak_calc.MNK & Chr(13) + Chr(10)

End Sub

Private Sub Command14_Click(index As Integer):
Select Case index
Case 1: Graphic.k1 = Graphic.k1 + 0.005: Graphic.k2 = Graphic.k2 + 0.005:
Case 2: Graphic.k1 = Graphic.k1 - 0.005: Graphic.k2 = Graphic.k2 + 0.005:
Case 3: Graphic.k1 = Graphic.k1 + 0.005: Graphic.k2 = Graphic.k2 - 0.005:
Case 4: Graphic.k1 = Graphic.k1 - 0.005: Graphic.k2 = Graphic.k2 - 0.005:
End Select
'If k2 - k1 < 0.001 Then k2 = k2 + 0.001: k1 = k1 - 0.001: Exit Sub
Picture1.Cls
Graphic.Experimental_curve
End Sub 'кнопки изменения масштаба графика
Private Sub Command14_MouseDown(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Text4.Text = "": dd = index
Timer1.Enabled = True
Timer1.Interval = 1000
Timer1.Interval = 100
dd = index
End Sub
Private Sub Command14_MouseUp(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
Timer1.Enabled = False
Timer1.Interval = 1000
End Sub
Private Sub Timer1_Timer()
'If Timer1.Enabled = True Then
Select Case dd
Case 1: Graphic.k1 = Graphic.k1 + 0.02: Graphic.k2 = Graphic.k2 + 0.02:
Case 2: Graphic.k1 = Graphic.k1 - 0.02: Graphic.k2 = Graphic.k2 + 0.02:
Case 3: Graphic.k1 = Graphic.k1 + 0.02: Graphic.k2 = Graphic.k2 - 0.02:
Case 4: Graphic.k1 = Graphic.k1 - 0.02: Graphic.k2 = Graphic.k2 - 0.02:
End Select
'If k2 - k1 < 0.001 Then k2 = k2 + 0.001: k1 = k1 - 0.001: Exit Sub
Picture1.Cls
Graphic.Experimental_curve
'Text4.Text = Text4.Text & dd & Chr(13) + Chr(10)
End Sub

Private Sub Form_Load(): tab_item = 0: pressed_left_button = True: k1 = 1: k2 = 2: K3 = 3: K4 = 4: Cleen_picture = True: Rnd_cvet = True
'Me.Width = 13900: 'Me.Height = 12000: Me.Left = 500: Me.Top = 500
With Intfc
.SSTab_setup: .toolbar: .Picture_box: .label: .knopoki_granichnykh_usloviy: .report_field: .list_box: .buttons_of_change_scale
End With
File_data.Interface: File_data.vyborka: File_data.properties_of_Flex_gride_for_LIES
definition_of_mode
Unload Form2
Unload Form3
spectrum.Enabled = False
SSTab1.TabEnabled(2) = True
For I = 9 To 11: Command3(I).Enabled = False: Next I
LIES_mode
Command3(5).Enabled = True


End Sub 'НАЧАЛЬНАЯ ЗАГРУЗКА
Private Sub read_file_of_DB_of_lines()
'/On Error GoTo err
 Open App.Path & "\lines.txt" For Input As #1
 Input #1, slovo
 
 EL_ = "": count_of_elements = 0
 Do
   slovo = EL_
   Input #1, EL_, N_, WL_, I_, Source_, Ion
'   If Mid(Form1.Label3.Caption, 15, 1) = "," Then WL_ = Replace(WL_, ".", ","):
      
   Select Case Ion
     Case "0": Ion = ""
     Case "1": Ion = "+"
     Case "2": Ion = "2+"
     Case "3": Ion = "3+"
   End Select
   
 '  If EL_ <> slovo Then count_of_elements = count_of_elements + 1: element(count_of_elements) = EL_: _
   count_of_lines(count_of_elements) = 0
   
  ' count_of_lines(count_of_elements) = count_of_lines(count_of_elements) + 1: dd = count_of_lines(count_of_elements)
   'WL(count_of_elements, dd) = CSng(WL_)
   'Intensity(count_of_elements, dd) = Val(I_)
   'If Source_ <> "" Then Source(count_of_elements, dd) = Source_ Else Source(count_of_elements, dd) = " "
   'name_of_line(count_of_elements, dd) = EL_ & Ion & "(" & Source_ & I_ & ")"
 Loop Until EOF(1)
 Close #1
 
 'For I = 0 To count_of_elements - 1
 ' Combo1.AddItem element(I + 1), I
 'Next I
 'Combo1.ListIndex = 0
'err: If err.Number = 55 Then Close #1: _
clear_buffer: MsgBox "Открытый файл содержит неверный формат", vbSystemModal, "Ошибка": read_file_of_DB_of_lines: _
Exit Sub
End Sub 'открытие и чтение файла БД аналитических линий

Private Sub Form_Unload(Cancel As Integer)
End
End Sub
Private Sub Label1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then PopupMenu report_2
End Sub 'вызов меню для окна отчета результата определения Xan
Private Sub Label2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then PopupMenu mnu_report
End Sub 'окно отчета
Private Sub mnuT_Click(index As Integer): Clss: W4 = 1: For I = 0 To 2: BC: Next I: Command3(0).Caption = "Представление результата измерения": Command3(1).Caption = "Оценка измерения по двухбальной шкале": Command3(2).Caption = "Оценка измерения по четырехбальной шкале"
End Sub 'АНАЛИЗ ВЫБОРКИ
Private Sub mnuSp_Click(index As Integer): Clss: W4 = 2: For I = 0 To 1: BC: Next I: Command3(0).Caption = "Анализ выборок по статистическим критериям": Command3(1).Caption = "Анализ выборок по технологическим критериям"
End Sub 'АНАЛИЗ ВЫБОРОК

Private Sub mnuTer_Click(index As Integer):
'Clss: W4 = 3: Label3.Visible = False: 'Label2(0).Visible = True: 'Label2(0).Caption = "ВЫБОР НАПРАВЛЕНИЯ РАБОТ":
'For i = 41 To 49: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i:
'Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n:
'BS: CurrentX = 11200: CurrentY = 7050: Print "Рабочий диапазон":
'For i = 10800 To 11100 Step 35: Q1 = i: Q2 = 7200: Circle (Q1, Q2), 30, QBColor(12): Next i:
'CurrentX = 11200: CurrentY = 6750: Print "Линия регрессии":
'For i = 10800 To 11100 Step 35: Q1 = i: Q2 = 6850: Circle (Q1, Q2), 3, QBColor(10): Next i:
'CurrentX = 11200: CurrentY = 6900: Print "Линия доверительной границы":
'For i = 10800 To 11100 Step 35: Q1 = i: Q2 = 7050: Circle (Q1, Q2), 3, QBColor(4): Next i:
'sortirovka:   'Studentkoef:   Regression:    Diapazon
End Sub 'РЕГРЕССИОННЫЙ АНАЛИЗ

Private Sub DM_Click(index As Integer):
End Sub 'МНОГОМЕРНЫЕ ЗАДАЧИ
Private Sub BC(): 'Command3(i).Left = 100: Command3(i).Top = 100 + i * 540: Command3(i).Width = 4500: Command3(i).Visible = True
End Sub 'COMMAND BOXES

Private Sub BSS(): 'T7 = Val(Text3(41).Text): T6 = Val(Text3(42).Text):  T5 = Val(Text3(43).Text): T3 = Val(Text3(44).Text): T8 = Val(Text3(45).Text): H1 = Text3(46).Text: H0 = Text3(47).Text: n = Val(Text3(48).Text): P = Val(Text3(49).Text): n1 = n: n5 = n: For i = 1 To n: X1(i) = i * 1000 / n: X2(i) = i * 1000 / n + (0.5 - Rnd) * T3 * T8 / 100: Next i: For i = 1 To n: Q1 = 14500 - (K2 - X1(i)) * 8300 / (K2 - K1): Q2 = 6500 - (X2(i) - K3) * 6430 / (K4 - K3): Circle (Q1, Q2), 50, QBColor(0): Next i: Grafic: Grafictext
End Sub 'ЛИН. РЕГРЕССИОННЫЙ АНАЛИЗ чтение граничных условий
Private Sub BS1(): 'Command4.Visible = True: For i = 46 To 49: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: CurrentX = 1900: CurrentY = 3750: Print "P% = 50, 75, 90, 95, 99, 99.9": CurrentX = 1900: CurrentY = 4050: Print "n (>1, <50)": CurrentX = 1900: CurrentY = 4450: Print "cимвол": CurrentX = 1900: CurrentY = 4850: Print "размерность": Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n
End Sub '
Private Sub BS2(): 'For i = 0 To 50: Text3(i).Text = "": Text1(i).Visible = False: Text1(i).Text = i: Next i
End Sub 'cls text box1
Private Sub BS3(): 'Label3.Visible = False: For i = 1 To 50: Text1(i).Visible = False: Next i
End Sub 'cls text box2
Private Sub BS4(): 'For i = 1 To n: Text1(i).Visible = False: Next i: P = Val(Text3(49).Text): n = Val(Text3(48).Text): H0 = Text3(47).Text: H1 = Text3(46).Text: n1 = n: Poz: 'Label2(0).Caption = "ПОСЛЕ ВВОДА ДАННЫХ НАЖМИТЕ ЕЩЕ РАЗ СТАРТ": For i = 1 To n: Text1(i).Visible = True: X1(i) = Val(Text1(i).Text): Next i
End Sub 'cls text box2
Private Sub BS5(): 'For i = 3 To 4: Command3(i).Width = 3500: Command3(i).Top = -1200 + i * 540: Command3(i).Visible = True: Next i: Command3(4).Caption = "Производственный процесс": Command3(3).Caption = "Учебный процесс"
End Sub 'cls text box2
Private Sub BS6(): 'For i = 44 To 45: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: CurrentX = 1900: CurrentY = 5250: Print "достоверное значение": CurrentX = 1900: CurrentY = 5650: Print "показатель сходимости, %": Text3(44).Text = T3: Text3(45).Text = T8
End Sub '
Private Sub BS7(): 'For i = 44 To 45: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: CurrentX = 1900: CurrentY = 5250: Print "технологическое значение": CurrentX = 1900: CurrentY = 5650: Print "допуск": Text3(44).Text = T3: Text3(45).Text = T8
End Sub '
Private Sub BS8(): 'For i = 41 To 43: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: Text3(43).Text = T5:: Text3(42).Text = T6:: Text3(41).Text = T7: CurrentX = 1900: CurrentY = 6100: Print "допустимая доля промахов*10": CurrentX = 1900: CurrentY = 6500: Print "снижение на один балл*10": CurrentX = 1900: CurrentY = 6900: Print "снижение на два балла*10"
End Sub '
Private Sub BS9(): 'For i = 41 To 43: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i:  Text3(43).Text = T5:: Text3(42).Text = T6:: Text3(41).Text = T7: CurrentX = 1900: CurrentY = 6100: Print "допустимая доля брака*10": CurrentX = 1900: CurrentY = 6500: Print "снижение на один балл*10": CurrentX = 1900: CurrentY = 6900: Print "снижение на два балла*10"
End Sub '





Private Sub Command3_Click(index As Integer): 'Clss: 'Label2(0).Visible = True: 'Label2(0).Caption = "ВВОД ГРАНИЧНЫХ УСЛОВИЙ И СТАРТ": Command8.Visible = True
 'If Index = 0 And W4 = 1 And W5 = 0 Then W1 = 0: F2 = 0: BS1: For I = 1 To n: Text1(I).Visible = True: X1(I) = Val(Text1(I).Text): Next I: Poz: 'Studentkoef: MO: Label3.Visible = True: Label3.Caption = "При значении числа < 1 набор числа с использованием точки, а не запятой"
 'If Index = 0 And W4 = 1 And W5 = 1 Then W1 = 0: F2 = 0: BS1: BS2
' If Index = 1 Or Index = 2 And W4 = 1 Then W1 = 1: For I = 3 To 4: Command3(I).Width = 3500: Command3(I).Top = -1200 + I * 540: Command3(I).Visible = True: Next I: Command3(4).Caption = "Производственный процесс": Command3(3).Caption = "Учебный процесс"
 'If Index = 3 And W4 = 1 And W1 = 1 Then F2 = 1: BS1: BS6
' If Index = 4 And W4 = 1 And W1 = 1 Then F2 = 2: BS1: BS7
 'If Index = 2 And W4 = 1 Then W1 = 2: Picture1.CurrentX = 500: Picture1.CurrentY = 500: Picture1.Print "DSD" ' Grafictext:
Select Case index
 Case 2: File_work.otkrytie: Set Img = Picture1.Image: Unload Form2: K1_initial = Graphic.k1: K2_initial = Graphic.k2: K3_initial = Graphic.K3: K4_initial = Graphic.K4
 Case 3: Save_files.Save_files
 'Case 4: If mode_number = 0 Then show_data_from_table: File_work.poisk_granic_shkaly_grafika: Graphic.Experimental_curve
 Case 4: If tab_item = 2 Then Read_files.open_file_of_Analytical_lines
 Case 5: 'Command3(index).Caption = "FDFSF" 'Peak_calc.show_calculated_peak 'Calc_regr.test
 Case 6: vyborka1.vyborka
 Case 7: Peak_calc.show_calculated_peak 'Calc_regr.Promaxi
 Case 8: Calc_regr.RaschetXan
 Case 9: Move_to_local_area: Text4.Text = Graphic.k1 & Chr(13) + Chr(10) & Graphic.k2 & Chr(13) + Chr(10) & Graphic.K3 & Chr(13) + Chr(10) & Graphic.K4 & Chr(13) + Chr(10)
 Case 10: Peak_calc.show_calculated_peak ' TestGaph: Peak_calc.Show_1st_calculated_peak
 Case 11: Form3.Show 0, Form1
 Case 21: End
End Select
' If Index = 4 And W4 = 1 And W1 = 2 Then F2 = 2: BS1: BS7: BS9
 'If Index = 0 And W4 = 2 And W5 = 0 Then W1 = 0: F2 = 0: n = 2: n1 = 15: n2 = 15: Command4.Visible = True: For I = 44 To 49: Text3(I).Left = 100: Text3(I).Top = 4800 - (I - 46) * 400: Text3(I).Visible = True: Next I: CurrentX = 1900: CurrentY = 3750: Print "P% = 50, 75, 90, 95, 99, 99.9": CurrentX = 1900: CurrentY = 4120: Print "n = число выборок": CurrentX = 1900: CurrentY = 4450: Print "cимвол": CurrentX = 1900: CurrentY = 4850: Print "размерность": Text3(44).Text = n2: Text3(45).Text = n1: Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n: CurrentX = 1900: CurrentY = 5250: Print "число n1 выборки 1 (n1<26)": CurrentX = 1900: CurrentY = 5650: Print "число n2 выборки 2 (n2<26)": Command4.Visible = True: Label3.Visible = True: Label3.Caption = "При значении числа < 1 набор числа с использованием точки, а не запятой": Poz1: V1
 'If Index = 0 And W4 = 3 And W5 = 0 Then Label3.Visible = False: 'Label2(0).Visible = True: 'Label2(0).Caption = "ВЫБОР НАПРАВЛЕНИЯ РАБОТ": For I = 41 To 49: Text3(I).Left = 100: Text3(I).Top = 4800 - (I - 46) * 400: Text3(I).Visible = True: Next I: Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n: BS: CurrentX = 11200: CurrentY = 6000: Print "Рабочий диапазон": For I = 10800 To 11100 Step 35: Q1 = I: Q2 = 6150: Circle (Q1, Q2), 30, QBColor(12): Next I: CurrentX = 11200: CurrentY = 5700: Print "Линия регрессии": For I = 10800 To 11100 Step 35: Q1 = I: Q2 = 5800: Circle (Q1, Q2), 3, QBColor(10): Next I: CurrentX = 11200: CurrentY = 5850: Print "Линия доверительной границы": For I = 10800 To 11100 Step 35: Q1 = I: Q2 = 6000: Circle (Q1, Q2), 3, QBColor(4): Next I
' If Index = 2 And W4 = 3 And W5 = 0 Then Sortirovka:    'Studentkoef:   Regression:   Diapazon
End Sub 'ГРАНИЧНЫЕ УСЛОВИЯ
Sub real_peak()
X1(1) = 252.376: X2(1) = 9
X1(2) = 252.381: X2(2) = -3
X1(3) = 252.385: X2(3) = 19
X1(4) = 252.389: X2(4) = 7
X1(5) = 252.394: X2(5) = 1
X1(6) = 252.398: X2(6) = 28
X1(7) = 252.403: X2(7) = 78
X1(8) = 252.407: X2(8) = 210
X1(9) = 252.411: X2(9) = 295
X1(10) = 252.416: X2(10) = 222
X1(11) = 252.42: X2(11) = 71
X1(12) = 252.425: X2(12) = 53
X1(13) = 252.429: X2(13) = 28
X1(14) = 252.434: X2(14) = 19
X1(15) = 252.438: X2(15) = 16
X1(16) = 252.442: X2(16) = 1
X1(17) = 252.447: X2(17) = 8
X1(18) = 252.451: X2(18) = 0
X1(19) = 252.456: X2(19) = 5
X1(20) = 252.46: X2(20) = 5
X1(21) = 252.464: X2(21) = 5
n = 21
End Sub

Sub real_Cr_peak()
X1(1) = 359.294: X2(1) = 6
X1(2) = 359.298: X2(2) = 4
X1(3) = 359.301: X2(3) = 3
X1(4) = 359.305: X2(4) = 6
X1(5) = 359.309: X2(5) = 9
X1(6) = 359.313: X2(6) = 8
X1(7) = 359.316: X2(7) = 6
X1(8) = 359.32: X2(8) = 8
X1(9) = 359.324: X2(9) = 12
X1(10) = 359.327: X2(10) = 15
X1(11) = 359.331: X2(11) = 31
X1(12) = 359.335: X2(12) = 98
X1(13) = 359.339: X2(13) = 219
X1(14) = 359.342: X2(14) = 397
X1(15) = 359.346: X2(15) = 734
X1(16) = 359.35: X2(16) = 791
X1(17) = 359.354: X2(17) = 369
X1(18) = 359.357: X2(18) = 59
X1(19) = 359.361: X2(19) = 33
X1(20) = 359.365: X2(20) = 18
X1(21) = 359.369: X2(21) = 10
X1(22) = 359.372: X2(22) = 5
X1(23) = 359.376: X2(23) = 10
X1(24) = 359.38: X2(24) = 14
X1(25) = 359.384: X2(25) = 17
X1(26) = 359.387: X2(26) = 2
X1(27) = 359.391: X2(27) = 5
X1(28) = 359.395: X2(28) = 20
X1(29) = 359.399: X2(29) = 6
X1(30) = 359.402: X2(30) = 8
X1(31) = 359.406: X2(31) = 5
n = 31
End Sub


Sub ideal_peak()
X1(1) = 90:         X2(1) = 50
    X1(2) = 91:         X2(2) = 50
    X1(3) = 92:         X2(3) = 50
    X1(4) = 93:         X2(4) = 50.00002
    X1(5) = 94:         X2(5) = 50.00124
    X1(6) = 95:         X2(6) = 50.05648
    X1(7) = 96:         X2(7) = 51.28556
    X1(8) = 97:         X2(8) = 64.61063
    X1(9) = 98:         X2(9) = 132.9186
    X1(10) = 99:        X2(10) = 284.9861
    X1(11) = 100:       X2(11) = 382.5362
    X1(12) = 101:       X2(12) = 284.9861
    X1(13) = 102:       X2(13) = 132.9186
    X1(14) = 103:       X2(14) = 64.61063
    X1(15) = 104:       X2(15) = 51.28556
    X1(16) = 105:       X2(16) = 50.05648
    X1(17) = 106:       X2(17) = 50.00124
    X1(18) = 107:       X2(18) = 50.00002
    X1(19) = 108:       X2(19) = 50
    X1(20) = 109:       X2(20) = 50
    X1(21) = 110:       X2(21) = 50
n = 21
End Sub


Sub TestGaph()
Dim dd As Single
'On Error GoTo err
Dim ww1 As Boolean
Dim ww2 As Boolean
'ReDim X1(n)
'ReDim X2(n)
 '  ideal_peak
'  real_peak
   'real_Cr_peak
Picture1.Cls
With MSFlexGrid1(2)
Graphic.k1 = CSng(.TextMatrix(.RowSel, 3))
Graphic.k2 = CSng(.TextMatrix(.RowSel, 4))
Text4.Text = "K1=" & Graphic.k1 & "; K2=" & Graphic.k2 & Chr(13) + Chr(10)

End With
ww1 = False: ww2 = False

dd = 0: dd1 = 0
Do
 dd = dd + 1
 If X1(dd) > Graphic.k1 Then dd1 = dd1 + 1: X_(dd1) = X1(dd): Y_(dd1) = X2(dd): ww1 = True
 If dd1 = 1 Then Graphic.K3 = X2(dd): Graphic.K4 = X2(dd): ww1 = False: ww2 = True
 If ww2 = True And X2(dd) < Graphic.K3 Then Graphic.K3 = X2(dd)
 If ww2 = True And X2(dd) > Graphic.K4 Then Graphic.K4 = X2(dd)
 Loop While X1(dd) < Graphic.k2
 N_ = dd1

With Graphic
Text4.Text = Text4.Text & "K1=" & .k1 & "; K2=" & .k2 & Chr(13) + Chr(10)
Text4.Text = Text4.Text & "K3=" & .K3 & "; K4=" & .K4 & Chr(13) + Chr(10)
End With
'File_work.poisk_granic_shkaly_grafika

'Graphic.k1 = CSng(.TextMatrix(.RowSel, 3)): Graphic.k2 = CSng(.TextMatrix(.RowSel, 4))
'Text4.Text = k1 * 100
'.Top = 10000


Graphic.Experimental_curve
'Text4.Text = "K1=" & Graphic.k1 & "; k2=" & Graphic.k2 & "; K3=" & Graphic.K3 & "; k4=" & Graphic.K4
'For I = 100 To 115
'Text4.Text = Text4.Text & X1(I) & Chr(9) & X2(I) & Chr(13) + Chr(10)
'Next I
'err: Exit Sub

End Sub 'тестирование для отладки расчета по гауссу








Private Sub show_data_from_table()
On Error GoTo err
With Form1.MSFlexGrid1(0)
 n = .Rows - 1
 ReDim X1(n)
 ReDim X2(n)
 ReDim X3(n)
 For I = 1 To n: X1(I) = .TextMatrix(I, 1): X2(I) = .TextMatrix(I, 2)
  If .TextMatrix(I, 3) <> "" Then X3(I) = .TextMatrix(I, 3)
 Next I
End With
err: If err.Number = 13 Then MsgBox "В таблице введены некорректные данные", vbOKOnly, "Ошибка": Exit Sub
End Sub 'отобразить данные таблицы на графике
Private Sub Move_to_local_area()
Picture1.Picture = LoadPicture("")
Graphic.k1 = MSFlexGrid1(2).TextMatrix(RowSel_, 3)
Graphic.k2 = MSFlexGrid1(2).TextMatrix(RowSel_, 4)
Graphic.K3 = MSFlexGrid1(2).TextMatrix(RowSel_, 5)
Graphic.K4 = MSFlexGrid1(2).TextMatrix(RowSel_, 6)
Graphic.Experimental_curve
End Sub 'переход на выбранный участок спектра

'Private Sub Command4_Click(): BS3: If W4 = 1 And W1 = 0 Then BS4
 'If W4 = 1 And W1 > 0 Then T3 = Val(Text3(44).Text): T8 = Val(Text3(45).Text): H1 = Text3(46).Text: H0 = Text3(47).Text: n = Val(Text3(48).Text): P = Val(Text3(49).Text): n1 = n: Poz: 'Label2(0).Caption = "ПОСЛЕ ВВОДА ДАННЫХ НАЖМИТЕ ЕЩЕ РАЗ СТАРТ": For i = 1 To n: X1(i) = Text1(i).Visible = True: X1(i) = Val(Text1(i).Text): Next i: 'Label2(0).Visible = True: Label3.Visible = True
 'If W4 = 1 And W1 = 2 Then T5 = Val(Text3(43).Text): T6 = Val(Text3(42).Text): T7 = Val(Text3(41).Text)
 'If W4 = 1 And n < 2 Then Label3.Visible = True: Label3.Caption = "Число наблюдений должно быть более 1"
 'If W4 = 1 And n > 1 Then 'Studentkoef: MO
 'If W4 = 2 Then n1 = Val(Text3(44).Text): n2 = Val(Text3(45).Text): P = Val(Text3(49).Text): Poz1: For i = 1 To n1: X1(i) = Val(Text1(i).Text): Next i: For i = 1 To n2: X1(i) = Val(Text1(25 + i).Text): Next i: V1
 'If W4 = 3 And W5 = 0 Then BSS: sortirovka:   'Studentkoef:   Regression:    Diapazon
'End Sub 'START

Private Sub MO(): ' U = 0: U1 = 0: U2 = 0: For i = 1 To n: U = U + X1(i): Next i: U = U / n: For i = 1 To n: U1 = U1 + (U - X1(i)) ^ 2: Next i: U1 = Sqr(U1 / (n - 1)) * t1 / Sqr(n)
 'U2 = U1 * 100 / U: H4 = "": H2 = "": 'Label2(0).Caption = "": Label3.Caption = ""
 'If U > 100 And T3 > 1 Then H5 = "0.0" Else H5 = "0.00"
 'If U < 1 Then H5 = "0.00000" Else If U < 0.01 Then H5 = ""
 'If W1 = 0 Then F2 = 0: 'Label2(0).Visible = True: 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1
 'H3 = "   Оценка ОТЛИЧНО": If T3 < U2 Then H3 = " Оценка ДВА": H4 = ". Случайная погрешность значима"
' If T3 < Abs(T8 - U) * 100 / T8 Then H3 = " Оценка ДВА": H2 = ". Систематичесая погрешность значима"
' If W1 = 1 And F2 = 1 Then Label3.Caption = H3 & H4 & H2: 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1
' If W1 = 1 And F2 = 2 Then 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1: MOT
' If W1 = 2 And F2 = 1 Then MOT1
' If W1 = 2 And F2 = 2 Then 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1: MOT: Label1.Visible = True: Label1.Caption = " Для изменения сортности необходимо изменить граничные условия"
 End Sub 'ОЦЕНКА И ПРЕДСТАВЛЕНИЕ РЕЗУЛЬТАТА ИЗМЕРЕНИЯ
Private Sub MOT(): 'If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H3 = "Надежность измерения обеспечена" Else H3 = "Надежность измерения не обеспечена"
' If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H4 = "Параметр объекта соответствует требованиям (оценка отлично)" Else H4 = "Параметр объекта не соответствует требованиям (оценка два)"
 'If U > (T8 + T3) Then H2 = "Значение параметра выше нормы" Else If U < (T8 - T3) Then H2 = "Значение параметра ниже нормы"
 'Label3.Caption = H3 & ".  " & H4 & ".  " & H2
End Sub 'Оценка по двухбалльной шкале
Private Sub MOT1(): 'Label1.Visible = True: 'Label2(0).Visible = True: If U2 <= T3 And Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "Оценка ОТЛИЧНО": Label1.Caption = "": H6 = "": 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ".  Достоверное значение =   " & T8 & " " & H1 & ". " & " r = " & T3 & "%.  " & H6 Else Skriterii5
End Sub 'Оценка по четырехбалльной шкале
Private Sub MO1(): 'U = 0: U1 = 0: U2 = 0: For i = 1 To n: U = U + X1(i): Next i: U = U / n: For i = 1 To n: U1 = U1 + (U - X1(i)) ^ 2: Next i:  U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U: If F2 = 1 Then U7 = T8 Else U7 = U
End Sub 'Расчет среднего и выбор достоверного значения, есло его нет, то вместо него матожидание
Private Sub OC(): 'If U2 <= T3 Then H3 = "   Оценка ОТЛИЧНО": H4 = "  Случайная погрешность незначима": F0 = 0 Else H3 = "": H4 = "  Случайная погрешность значима": F0 = 1
   'If Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "   Оценка ОТЛИЧНО": H2 = "  Систематическая погрешность незначима": F1 = 0 Else H3 = "": H2 = "  Систематическая погрешность значима": F1 = 1
End Sub 'Оценка значимости случайной и систематической погрешностей
Private Sub Skriterii5(): 'T5 = T5 / 10: T6 = T6 / 10: T7 = T7 / 10: U9 = Int(T5 * n): n1 = n: If U9 < 10 Then H3 = "   Оценка хорошо": U9 = 1
 'Sort
 'n = n - U9
 'For i = 1 To n + U9: Text1(i).Text = X1(i): Next i
 'For I2 = 1 To U9
 '   turn
 '   Text3(48).Text = n: 'Studentkoef
  '  MO1
   ' OC
    'If n1 < 10 Then H3 = "   Оценка ХОРОШО"
  'If n1 - n = 1 Then H6 = "": H6 = "Обнаружен промах (его доля не выше нормы) - " & X1(n + 1)
  'If n1 - n > 1 Then H6 = "": H6 = "Обнаружены промахи (их доля не выше нормы) - ": For i = 1 To (n1 - n): H6 = H6 & ",  " & X1(n + i): Next i
  'If n1 - n > 0 Then Label1.Caption = "": 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ". Достоверное значение = " & T8 & "  " & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
'Next I2:
 ' n = n1
  'If F1 = 1 Or F0 = 1 Then Skriterii4
End Sub 'Сортировка по отклонению наблюдений
Private Sub Skriterii4(): U9 = Int(T6 * n): N1 = n: Sort
 n = n - U9:
 For I = 1 To n + U9: Text1(I).Text = X1(I): Next I
 For I2 = 1 To U9
    turn
    Text3(48).Text = n: 'Studentkoef
    MO1
     If U2 <= T3 Then H3 = "   Оценка ХОРОШО": H4 = "  Случайная погрешность незначима": F0 = 0 Else H3 = "": H4 = "  Случайная погрешность значима": F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "   Оценка ХОРОШО": H2 = "  Систематическая погрешность незначима": F1 = 0 Else H3 = "": H2 = "  Систематическая погрешность значима": F1 = 1
  If N1 - n = 1 Then H6 = "": H6 = "Обнаружен промах (его доля не выше нормы) - " & X1(n + 1)
  If N1 - n > 1 Then H6 = "": H6 = "Обнаружены промахи (их доля не выше нормы) - ": For I = 1 To (N1 - n): H6 = H6 & ",  " & X1(n + I): Next I
  If N1 - n > 0 Then Label1.Caption = "": 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ". Достоверное значение = " & T8 & "  " & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
Next I2:
  n = N1
  If F1 = 1 Or F0 = 1 Then Skriterii3
End Sub 'Сортировка по отклонению наблюдений
Private Sub Skriterii3(): U9 = Int(T7 * n): N1 = n: Sort
 n = n - U9:
 For I = 1 To n + U9: Text1(I).Text = X1(I): Next I
 For I2 = 1 To U9
    turn
    Text3(48).Text = n: 'Studentkoef
    MO1
     If U2 <= T3 Then H3 = "   Оценка УДОВЛЕТВОРИТЕЛЬНО. ": H4 = "  Случайная погрешность незначима": F0 = 0 Else H3 = "": H4 = "  Случайная погрешность значима": F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "   Оценка УДОВЛЕТВОРИТЕЛЬНО. ": H2 = "  Систематическая погрешность незначима": F1 = 0 Else H3 = "": H2 = "  Систематическая погрешность значима": F1 = 1
  If N1 - n = 1 Then H6 = "": H6 = "Обнаружен промах (его доля не выше нормы) - " & X1(n + 1)
  If N1 - n > 1 Then H6 = "": H6 = "Обнаружены промахи (их доля не выше нормы) - ": For I = 1 To (N1 - n): H6 = H6 & ",  " & X1(n + I): Next I
  If N1 - n > 0 Then Label1.Caption = "": 'Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ". Достоверное значение = " & T8 & "  " & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
Next I2:
  n = N1
  'If F1 = 1 Or F0 = 1 Then 'Label2(0).Caption = "   Оценка ДВA": Label3.Visible = False
End Sub 'Сортировка по отклонению наблюдений
Private Sub Sort(): For I1 = 1 To U9:   For I = 1 To n - 1: U4 = Abs(U - X1(I)): U5 = Abs(U - X1(I + 1)): If U4 > U5 Then U4 = X1(I + 1): X1(I + 1) = X1(I): X1(I) = U4
   Next I: Next I1
End Sub 'Сортировка данных в конец базы X1(I) по отклонению от длстоверного или среднего
Private Sub turn(): Do:  n = n + 1: 'Studentkoef
   U = 0: U1 = 0: U2 = 0: For I = 1 To n: U = U + X1(I): Next I: U = U / n: For I = 1 To n: U1 = U1 + (U - X1(I)) ^ 2: Next I:   U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U:    If U2 <= T3 Then F0 = 0 Else F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then F1 = 0 Else F1 = 1
  Loop While F1 + F0 < 1
   n = n - 1: U9 = N1 - n
End Sub 'Вoзврат данных
Private Sub Command5_Click(): If W5 = 0 Then W5 = 1: Command5.Caption = "Clear text box": For I = 0 To 50: Text3(I).Text = "": Text1(I).Visible = False: Next I Else W5 = 0: Command5.Caption = "No Clear text"
End Sub 'Clear text
Private Sub Command6_Click(): 'Label2(0).Visible = True: 'Label2(0).Caption = "Подпрограмма еще не запущена"
End Sub 'FR

Private Sub Fisherkoef():   If P = 0.95 Then UU0 = 1.9572:  UU1 = 2.4444: UU2 = 2.1902:  UU3 = 4.642:   UU4 = 1.3997
   If P = 0.5 Then UU0 = 0.6769:   UU1 = 0.2285: UU2 = 0.009:   UU3 = 0.004:   UU4 = 0.005
   If P = 0.75 Then UU0 = 1.1533:  UU1 = 0.6063: UU2 = 0.594:   UU3 = 0.05:    UU4 = 0.005
   If P = 0.9 Then UU0 = 1.6406:   UU1 = 1.5102: UU2 = 1.8502:  UU3 = 0.3962:  UU4 = 0.9889
   If P = 0.98 Then UU0 = 2.387:   UU1 = 2.6764: UU2 = 9.8617:  UU3 = 6.06:    UU4 = 10.8308
   If P = 0.99 Then UU0 = 2.6821:  UU1 = 2.9491: UU2 = 16.0652: UU3 = 13.8666: UU4 = 28.1053
   If P = 0.999 Then UU0 = 3.4334: UU1 = 5.8655: UU2 = 46.1601: UU3 = 64.9996: UU4 = 515.15
   FK = (UU0 + UU1 / (n - 1) + UU2 / (n - 1) ^ 2 + UU3 / (n - 1) ^ 3 + UU4 / (n - 1) ^ 9) * 2.7
End Sub 'Расчет коэффициента Фишера
Private Sub Poz(): CurrentX = 5000: CurrentY = 350: Print "ТАБЛИЦА ЗНАЧЕНИЙ НАБЛЮДЕНИЙ ": For I = 1 To n
   If I < 11 Then Text1(I).Visible = True: Text1(I).Left = 5000: Text1(I).Top = 300 + I * 300:
   If I > 10 Then Text1(I).Visible = True: Text1(I).Left = 7000: Text1(I).Top = 300 + (I - 10) * 300:
   If I > 20 Then Text1(I).Visible = True: Text1(I).Left = 9000: Text1(I).Top = 300 + (I - 20) * 300:
   If I > 30 Then Text1(I).Visible = True: Text1(I).Left = 11000: Text1(I).Top = 300 + (I - 30) * 300:
   If I > 40 Then Text1(I).Visible = True: Text1(I).Left = 13000: Text1(I).Top = 300 + (I - 40) * 300:
   Next I
End Sub 'Cтрока таблицы
Private Sub Poz1(): CurrentX = 4000: CurrentY = 350: Print "ВЫБОРКА 1": CurrentX = 9000: CurrentY = 350: Print "ВЫБОРКА 2": For I = 1 To N1: Text1(I).Visible = True: Text1(I).Left = 5500: Text1(I).Top = I * 260 - 200: Next I: For I = 26 To 25 + n2: Text1(I).Visible = True: Text1(I).Left = 10500: Text1(I).Top = (I - 25) * 260 - 200: Next I
End Sub 'Вторая строка таблицы
Private Sub Command7_Click(): Clss: Label1.Visible = True: Label1.Caption = "1. Элиминирование при достижении срока (постановка 06 02 2017 - выполнение ).                                                               2. Запуск блока - АНАЛИЗ ВЫБОРОК (постановка 06 02 2017 - выполнение ).                                                                       3. Вставить раздел - работа по коду в учебных работах (постановка 12 02 2017 - выполнение )"
End Sub 'PLAN
Private Sub Command8_Click(): Clss: Label1.Visible = True: Label3.Visible = False: If W4 = 1 Then Label1.Caption = "   ТЕОРИЯ:    Результат измерения, включает n наблюдений,  Р- надежность измерения,  tnp - коэффициент Стьюдента. При Р=0.95 и n=5 tnp=2.78; n=4 tnp=3.18; n=3 tnp=4.76; n=2 tnp=12.2.  tnp выбирается автоматически.                            Измерения  представляются как показано в примере: символ измеряемой величины; математическое ожидание; неопределенность в абсолютном и (или) относительном виде; размерность. "
 If W4 = 1 Then Label1.Caption = Label1.Caption & "                                                                              ПОРЯДОК РАСЧЕТОВ:  1. Расчет среднеарифметического: X= (xi/n);  2. Расчет отклонения: di=Abs(X-xi);                      3. Расчет стандартного отклонения:...S=SQR(SUM(di^2)/(n-1)); 4. Расчет абсолютного значения доверительного интервала: DХ=S*tnp/n^0.5; 5. Расчет относительного значения доверительного интервала:.. DХ%=Х*100/X.                            ВЫПОЛНИТЬ САМОСТОЯТЕЛЬНО:   Задача 1.  Оцените результат измерения: CHCl: (0.1150, 0.1130, 0.1160, 0.1140, 0.1130 моль/л) а=0.1140 и r=1%.    Задача 2.  Оцените результат измерения: CHCl (0.1050, 0.1030, 0.1060, 0.1040, 0.1080 моль/л) а=0.1030 и r=1%."
 If W4 = 2 Then Label1.Caption = "      АНАЛИЗ ВЫБОРОК с рименением статистических критериев.                                                                                               1. Оценка однородности выборок (по значимости расхождения стандартных отклонений - S) с использованием критерия Фишера - F. Выборки сортируются по росту значения S. Выборки однородны если Smax/Smin меньше  Fтабл. В случае наличия более чем двух выборок анализ проводят с двумя выборками, имеющими крайние значения S. В данной программе Fтабл находится автоматически в зависимости от n1, n2 и P."
 If W4 = 2 Then Label1.Caption = Label1.Caption & "                                                                          2. Оценка равноточности выборок (значимость расхождения среднеарифметических) с использованием критерия Стьюдента (tnp). Выборки равноточны если ABS(X1-X2) /S*SQR(n1*n2/ (n1+n2)) менее  tтабл, где S=SQR((n1-1)*S1+(n2-1)*S2)/ (n1+n2-2)). В случае наличия более двух выборок анализ проводят с двумя выборками, имеющими крайние значения X. Далее выборки делят на равноточные и неравноточные. tтабл находится автоматически в зависимости от числа степеней свободы f = n1+n2-2 и P). Имеются две выборки: а) C(HCl) = (0.105, 0.103, 0.106, 0.104, 0.105 моль/л) и б) C(HCl) =  (0.102, 0.104, 0.105, 0.104, 0.101 моль/л). Выборки однородны поскольку 0.0016/0.0013 = 1.3 при  Fтабл.= 6.4. Выборки равноточны поскольку tnp = 2.3 при tтабл.= 2.4."
 If W4 = 2 Then Label1.Caption = Label1.Caption & "                                                                                   Задача 1. Необходимо установить однородность и равноточность двух выборок: а) C(HCl) =  (0.105, 0.103, 0.106, 0.104, 0.103 моль/л) и б) C(HCl) =  (0.105, 0.106, 0.105, 0.107, 0.108 моль/л).                                                                                     Задача 2. Необходимо установить однородность и равноточность двух выборок: а) C(HCl) =  (0.105, 0.103, 0.106, 0.104, 0.105 моль/л) и б) C(HCl) =  (0.109, 0.108, 0.109, 0.107, 0.108 моль/л)."
 If W4 = 3 Then Label1.Caption = "      РЕГРЕССИОННЫЙ АНАЛИЗ        Выберите один из двух вариантов: 1. Выбор из базы данных или ввод своих данных нажав кнопку ВВОД ДАННЫХ. Есть данные для наладки с заданными порешностями (меню BOOTSTRAP). Для изменения нормы погрешности нажмите кнопки S и < или >"
End Sub 'Help
Private Sub Command1_Click(): End
End Sub 'End
Private Sub Command2_Click(): Cls: Clss
End Sub 'Cls
Private Sub Clss(): Label1.Visible = False: 'Label2(0).Visible = False: Label3.Visible = False: Label1.Caption = " ": 'Label2(0).Caption = " ":   Label3.Caption = " ": For i = 0 To 50: Text1(i).Visible = False: Text2(i).Visible = False: Text3(i).Visible = False: Next i:  For i = 0 To 30: Command3(i).Visible = False: Next i: Command4.Visible = False: Cls
End Sub 'Cls
'ПАРАМЕТРЫ
'A, A1            - Константы в уравнении линейной регрессии У = А +В*Х
'K1, K2, K3, K4   - Начальное и конечное значение аргумента, функции на графике
'n, n1, n2, n3    - Число определений в выборке
'P, r             - Надежность данных и коэффициент корреляции
'S0,S1,S2,S3,S4   - Стандартное отклонение остаточное, А, В, X, Y
't1,Y,T2,T3,T4    - Коэффициент Стьюдента, Аналитический сигнал, Показатель точности (%), Показатель сходимости (%), Показатель воспроизводимости (%)
'T5, T6, T7       - Допустимая доля брака без снижения сортности, на 1 балл, 2 балла
'T8               - Достоверное, технологически необходимое значение парметра
'Сmin, Cmax       - Минимальное,Максимальное  значение диапазона градуировочной функции
'U, U1, U2, U9    - Среднеарифметическое. Координата точки на графике
'U1, U2           - Неопределенность результата измерения, oтносительная неопределенность результата измерения
'U7, U9           - Достовереное значение параметра, Число промахов (брака)
'X1(250),X2(250)  - Значения аргумента, Значения функции
'X3(250),X4(250)  - Значения аргумента2, Значения аргумента3, X5(250) - Резерв
'H0, H1, H2       - Символ измеряемой величины, Размерность измеряемой величины, Оценка систематической погрешности
'H3, H4, H5, H6   - Общая оценка результата измерения, Оценка случайной погрешности, Определение числа значащих цифр, Комментарии
'ИНДЕКСЫ
'Оперативные      - I, I1, I2, I3, I4, I5, I6 - Счетчики циклов
'Тактические      - Q0, Q1, Q2, Q3, Q4
'ФЛАГИ СОСТОЯНИЙ
'F0 = 1           - случайная погрешность значима и 0 незначима
'F1 = 1           - систематическая погрешность значима и 0 незначима
'F2 = 1           - есть достоверное (F2 = 1) и технологически необходимое значение (F2 = 2) иначе 0
'SS               - заданное относительное стандартное отклонение
'W1 = 1, 2, 3, 4  - Сосотояние при вводе данных (кнопки 1, 2 , 3, 4):
'W2 = 0           - Учебный процесс, 1 = производственный процесс
'W4 = 1, 2, 3, 4  - Анализ выборки, выборок, регрессия, корелляция
'W5 = 1           - Состояние обнуления техстов
'НЕОБХОДИМО СДЕЛАТЬ
'1. Проверка примеров. 2. Сдача блока "Выборка". 3.
'********************************************************************************************************************
Private Sub Tabl(): Clss: For I = 0 To n: Text1(I).Text = "": Text2(I).Text = "": Text3(I).Text = "": Text2(I).Alignment = 2: Text1(I).Left = 100: Text2(I).Left = 5000: Text3(I).Left = 9900: Text1(I).Width = 4500: Text2(I).Width = 4500: Text3(I).Width = 4500: Text1(I).Top = 100 + I * 300: Text2(I).Top = 100 + I * 300: Text3(I).Top = 100 + I * 300: Text1(I).Visible = True: Text2(I).Visible = True: Text3(I).Visible = True: Next I
End Sub '
Private Sub Tab2(): Clss: For I = 0 To 2: Command3(I).Left = 100: Command3(I).Width = 4500: Command3(I).Top = 100 + I * 540: Command3(I).Visible = True: Next I
End Sub '
Private Sub C1(): For I = 0 To 49: Text1(I).Visible = False: Text2(I).Visible = False: Text3(I).Visible = False: Next I
End Sub 'Очистка Textbox
Private Sub V1(): U = 0: U1 = 0: For I = 1 To N1: X1(I) = Val(Text1(I).Text): U = U + X1(I): Next I: U = U / N1: U3 = U: For I = 1 To N1: U1 = U1 + (U - X1(I)) ^ 2: Next I: U1 = Sqr(U1 / (N1 - 1)): U5 = U1: U = 0: U1 = 0:  For I = 1 To n2: X2(I) = Val(Text1(25 + I).Text): U = U + X2(I): Next I: U = U / n2: U4 = U: For I = 1 To n2: U1 = U1 + (U - X2(I)) ^ 2: Next I: U1 = Sqr(U1 / (n2 - 1)): U6 = U5 / U1: If U6 < 1 Then U6 = U1 / U5
   n = N1 + n2 - 2: 'Studentkoef: P = P / 100: Fisherkoef: P = P * 100:  If U6 <= FK Then H1 = ",  (выборки однородны)": H2 = " <= " Else H1 = ",  (выборки неоднородны)": H2 = " > "
   'Label2(0).Visible = True: 'Label2(0).Caption = "S1 = " & Format(U5, "0.00000") & ",   " & "S2 = " & Format(U1, "0.00000") & ",  F =  " & Format(U6, "0.0000") & ", " & " Fтабл. = " & Format(FK, "0.0000") & H1:  S0 = Sqr((n1 - 1) * U3 ^ 2 + (n2 - 1) * U4 ^ 2) / (n1 + n2 - 2): U14 = Abs(U3 - U4) / S0 * Sqr(n1 * n2 / (n1 + n2)): If U14 <= t1 Then H1 = "(выборки равноточны)": H2 = " <= " Else H1 = "(выборки неравноточны)": H2 = " > "
   Label3.Visible = True: Label3.Caption = "t =  " & Format(U14, "0.0000") & H2 & "tnp =  " & Format(t1, "0.00") & " ,     " & H1
End Sub 'Работа 4. Анализ выборок. Оценка по статистическим критериям
Private Sub List1_Click(): index = List1.ListIndex + 1
File_work.repeat_read_file (index)
End Sub 'повторное чтение файлов из списка ранее открытых файлов

Private Sub mnu_Clear_all_Click(): For I = 1 To MSFlexGrid1(tab_item).Cols - 1: For I1 = 1 To MSFlexGrid1(tab_item).Rows - 1
 MSFlexGrid1(tab_item).TextMatrix(I1, I) = ""
 Next I1: Next I
End Sub 'очистить все в таблице

Private Sub mnu_Clear_report_Click(): Label1.Caption = ""
End Sub 'очистка окна отчета
Private Sub mnu_Clear_report1_Click(): Label2.Caption = ""
End Sub 'очистить окно отчета 1

Private Sub mnu_Copy_graphic_Click()
Clipboard.Clear
Clipboard.SetData Picture1.Image
End Sub 'копировать график
Private Sub mnu_Copy_report_by_result_Click()
Clipboard.Clear
Clipboard.SetText Label1.Caption
End Sub 'копировать отчет по результату определения Xan в буфер обмена
Private Sub mnu_Copy_report_Click()
Clipboard.Clear
Clipboard.SetText Label2.Caption
End Sub 'копировать отчет в буфер обмена
Private Sub mnu_Delete_all_rows_Click(): MSFlexGrid1(tab_item).Rows = 1
End Sub 'удалить все строки
Private Sub mnu_Insert_col_Click(): insert_col1
End Sub 'добавить столбец, т.е. выборку
Private Sub mnu_Delete_col_Click(): Delete_col
End Sub 'удалить столбец, т.е. выборку
Private Sub mnu_Normalization_Click(index As Integer): On Error GoTo err
With MSFlexGrid1(0)
 n = .Rows - 1: For I = 1 To n: X1(I) = .TextMatrix(I, 1): X2(I) = .TextMatrix(I, 2):  X3(I) = .TextMatrix(I, 3): Next I
 Select Case index
  Case 0: reper = InputBox("Введите значение репера", "Окно ввода значений"): For I = 1 To n: X2(I) = X3(I) / reper * X2(I): Next I
  Case 1: For I = 1 To n: X2(I) = X2(I) / X3(I): Next I
 End Select
 File_work.poisk_granic_shkaly_grafika: Graphic.Experimental_curve
 If Me.mnu_update_table.Checked = True Then .Rows = n + 1: For I = 1 To n: .TextMatrix(I, 2) = X2(I): .TextMatrix(I, 3) = "": Next I
End With
err: If err.Number = 13 Then reper = 1: Exit Sub
 End Sub 'выбор нормализации
'************* КОМАНДЫ ДЛЯ РАБОТЫ С FlexGride *******************************
Private Sub insert_col1(): With MSFlexGrid1(tab_item)
.Cols = .Cols + 1: .TextMatrix(0, .Cols - 1) = "Выборка " & .Cols - 1: .ColWidth(.Cols - 1) = 1000: .FixedAlignment(.Cols - 1) = 3
End With
End Sub 'вставить столбец
Private Sub Delete_col(): With MSFlexGrid1(tab_item)
Dim slovo() As String
If .Cols < 3 Then Exit Sub
ReDim slovo(.Rows + 1, .Cols + 1)
For I = 1 To .Rows - 1: For I1 = 1 To .Cols - 1
slovo(I, I1) = .TextMatrix(I, I1)
Next I1: Next I
For I = 1 To .Rows - 1: For I1 = 1 To .Cols - 1
If I1 >= .ColSel Then .TextMatrix(I, I1) = slovo(I, I1 + 1)
Next I1: Next I
.Cols = .Cols - 1
End With
End Sub 'удалить столбец

Private Sub mnu_Unite_data_Click(): Picture1.Picture = LoadPicture(""): ReDim X1(N_ + 1): ReDim X2(N_ + 1)
With MSFlexGrid1(0)
.Rows = N_ + 1
For I = 1 To N_: X1(I) = X_(I): X2(I) = Y_(I): .TextMatrix(I, 0) = I: .TextMatrix(I, 1) = X1(I): .TextMatrix(I, 2) = X2(I): Next I
End With
n = N_: Cleen_picture = True: File_work.poisk_granic_shkaly_grafika: Graphic.Experimental_curve
End Sub 'объединить отображенные на графике данные и вновь отобразить

Private Sub mnu_update_table_Click(): With mnu_update_table
If .Checked = False Then .Checked = True Else .Checked = False
End With
End Sub 'поставить или убрать галочку обновления таблицы данных после нормировки
Private Sub mode_of_vyborka_Click(index As Integer): For I = 0 To 2: mode_of_vyborka(I).Checked = False: Next I: mode_of_vyborka(index).Checked = True
Select Case index
Case 0: For I = 0 To 3: Text2(I).Enabled = False: Label5(I).Enabled = False: Next I
Case 1: Text2(0).Enabled = True: Label5(0).Enabled = True: For I = 1 To 3: Text2(I).Enabled = False: Label5(I).Enabled = False: Next I
Case 2: For I = 0 To 3: Text2(I).Enabled = True: Label5(I).Enabled = True: Next I
End Select
End Sub 'выбор режима работы с выборками

Private Sub MSFlexGrid1_Click(index As Integer)
Dim slovo As String

With MSFlexGrid1(2)
 If .MouseCol = 0 Then Set_of_local_area_on_LIES Else Text4.Text = ""
 'Graphic.k1 = CSng(.TextMatrix(.RowSel, 3)): Graphic.k2 = CSng(.TextMatrix(.RowSel, 4)): Graphic.Experimental_curve
End With

End Sub
Private Sub Set_of_local_area_on_LIES()
 Dim dd                          As Single 'ЛОКАЛЬНЫЙ СЧЕТЧИК
 
 Dim flag_of_found_left_border   As Boolean  'флаг найденного левого участка
 Dim flag_of_found_right_border  As Boolean  'флаг найденного правого участка
 Dim N_left                      As Single   'номер массива данных, соответствующий левой границе выбранного участка спектра
 Dim N_right                     As Single   'номер массива данных, соответствующий правой границе выбранного участка спектра

flag_of_found_left_border = False: flag_of_found_right_border = False

Graphic.k1 = MSFlexGrid1(2).TextMatrix(MSFlexGrid1(2).RowSel, 2) - 0.3
Graphic.k2 = MSFlexGrid1(2).TextMatrix(MSFlexGrid1(2).RowSel, 2) + 0.3

Picture1.Cls
Graphic.Experimental_curve

Text4.Text = "K1=" & Graphic.k1 & "; K2=" & Graphic.k2
Text4.Text = Text4.Text & Chr(13) + Chr(10) & "K3=" & Graphic.K3 & "; K4=" & Graphic.K4

End Sub 'отображение на графике выбранного участка спектра ЛИЭС


Private Sub MSFlexGrid1_DblClick(index As Integer): Change_cell_text
'If SSTab1.Tab = 2 And MSFlexGrid1(2).MouseCol = 0 Then Text4.Text = MSFlexGrid1(2).MouseCol Else Text4.Text = ""

End Sub 'блок ответа на событие в виде двойного клика мышью на FlexGride
Private Sub Change_cell_text()
On Error GoTo err
With Text3(6)
RowSel_ = Form1.MSFlexGrid1(tab_item).RowSel: ColSel_ = Form1.MSFlexGrid1(tab_item).ColSel
Set .Container = Form1.Frame4(tab_item)
.Visible = True: .Width = MSFlexGrid1(tab_item).CellWidth: .Height = MSFlexGrid1(tab_item).CellHeight
.Text = Form1.MSFlexGrid1(tab_item).TextMatrix(RowSel_, ColSel_): .Visible = True:
.SetFocus: .Left = Form1.MSFlexGrid1(tab_item).Left + Form1.MSFlexGrid1(tab_item).CellLeft
.Top = Form1.MSFlexGrid1(tab_item).Top + Form1.MSFlexGrid1(tab_item).CellTop
End With
err: If err.Number = 381 Then Text3(6).Visible = False: Exit Sub
End Sub 'блок изменения ячейки таблицы
Private Sub MSFlexGrid1_KeyDown(index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo err
With Me.MSFlexGrid1(index)
If index = 1 And KeyCode = 107 And Shift = 2 Then insert_col1
If index = 1 And KeyCode = 109 And Shift = 2 Then Delete_col
If KeyCode = 107 Then Insert_Row
If KeyCode = 88 And Shift = 2 Then Delete_Row
If KeyCode = 46 And RowSel_ > 0 Then .TextMatrix(.RowSel, .ColSel) = ""
If KeyCode = 32 Then Change_cell_text
End With
err: If err.Number = 381 Then Exit Sub
End Sub 'команды клавиш для работы с таблицей данных
Private Sub MSFlexGrid1_LeaveCell(index As Integer): Enter_text_to_cell
End Sub 'исчезновение текстового поля при закреплении текста в ячейке
Private Sub Option1_Click(index As Integer): Select Case index
Case 0: mode_of_vyborka(2).Enabled = True
Case 1: mode_of_vyborka(2).Enabled = False: mode_of_vyborka(2).Checked = False
End Select
End Sub 'выбор режима научн/производст


Private Sub Text3_KeyDown(index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = 13 Then Enter_text_to_cell: MSFlexGrid1(tab_item).SetFocus
End Sub 'ввод текста в ячейку таблицы
Private Sub Enter_text_to_cell(): With Text3(6)
If .Visible = True Then MSFlexGrid1(tab_item).TextMatrix(RowSel_, ColSel_) = .Text
.Text = Replace(.Text, Chr(13) + Chr(10), ""): .Visible = False: MSFlexGrid1(tab_item).SetFocus
End With
With MSFlexGrid1(2)
'If .ColSel = 1 Then .TextMatrix(.RowSel, 3) = CSng(.TextMatrix(.RowSel, 1)) - 6 * 0.005: _
'.TextMatrix(.RowSel, 4) = CSng(.TextMatrix(.RowSel, 1)) + 6 * 0.005
End With
End Sub 'установка текста в ячейку
Private Sub MSFlexGrid1_MouseDown(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
With MSFlexGrid1(index)
RowSel_ = .RowSel: ColSel_ = .ColSel
If RowSel_ = 0 Then RowSel_ = 1
If ColSel_ = 0 Then ColSel_ = 1
End With
If Button = 2 Then PopupMenu mnuPopup_meny_for_grid
End Sub 'вызов контектного меню для FlexGride

'************* КОМАНДЫ ДЛЯ РАБОТЫ С ОКНОМ ГРАФИКИ *******************************
Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
 If Button = 1 And pressed_left_button = True Then X_begin_of_rect = X: Y_begin_of_rect = Y: pressed_left_button = False
 If Button = 2 Then PopupMenu mnuGraphic
 If Button = 4 Then Picture1.Picture = LoadPicture(""): k1 = K1_initial: k2 = K2_initial: K3 = K3_initial: K4 = K4_initial: _
 Picture1.Picture = Img: Peak_calc.automatic_initialization_of_values: Cleen_picture = False
End Sub
Private Sub Rect_draw(X As Single, Y As Single)
 Shape1.Visible = True:
 delta_X = X - X_begin_of_rect
 delta_Y = Y - Y_begin_of_rect
With Shape1
 If delta_X > 0 And delta_Y > 0 Then .Left = X_begin_of_rect: .Top = Y_begin_of_rect: _
 .Width = X - X_begin_of_rect: .Height = Y - Y_begin_of_rect
 End With
End Sub 'блок для рисования прямоугольника выделения участка на графике
Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
On Error GoTo err
If Button = 1 And Shift = 2 And pressed_left_button = False Then Rect_draw X, Y
xx = k2 - (9010 - X) * (k2 - k1) / 8300
YY = (6620 - Y) * (K4 - K3) / 6430 + K3
zapis_XX = Format(xx, "0.000"): zapis_YY = Format(YY, "0.000")
If Abs(xx) < 10 ^ -3 Or Abs(xx) > 10 ^ 3 Then stepen_xx = Int(Log(Abs(xx)) / 2.3028): zapis_XX = Format(xx / 10 ^ stepen_xx, "0.00") & "E" & stepen_xx
If Abs(YY) < 10 ^ -3 Or Abs(YY) > 10 ^ 3 Then stepen_YY = Int(Log(Abs(YY)) / 2.3028): zapis_YY = Format(YY / 10 ^ stepen_YY, "0.00") & "E" & stepen_YY
Label6(0).Caption = "X=" & zapis_XX & "; Y=" & zapis_YY
err: Exit Sub
End Sub
Private Sub pererisovka_grafika()
XX1 = k2 - (9010 - X_begin_of_rect) * (k2 - k1) / 8300
XX2 = k2 - (9010 - (X_begin_of_rect + Shape1.Width)) * (k2 - k1) / 8300
YY1 = (6620 - (Y_begin_of_rect + Shape1.Height)) * (K4 - K3) / 6430 + K3
YY2 = (6620 - Y_begin_of_rect) * (K4 - K3) / 6430 + K3
k1 = XX1: k2 = XX2: K3 = YY1: K4 = YY2:
Picture1.Picture = LoadPicture(""): Cleen_picture = True
Graphic.Experimental_curve
If tab_item = 2 Then Peak_calc.automatic_initialization_of_values
End Sub 'блок перерисовки графика после выделения конкретного участка

Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 And Shift = 2 And pressed_left_button = False Then pererisovka_grafika: pressed_left_button = True
With Shape1
.Width = 0: .Height = 0: .Visible = False
End With
End Sub
Private Sub mnu_Better_calculation_Click()
If mnu_Better_calculation.Checked = True Then mnu_Better_calculation.Checked = False Else mnu_Better_calculation.Checked = True
End Sub 'улучшенный расчет
Private Sub mnu_Choose_color_Click():
On Error GoTo err
If err.Number <> 32755 Then CommonDialog1.ShowColor: Cvet_tochek = CommonDialog1.Color: Rnd_cvet = False
err: If err.Number = 32755 Then Exit Sub
End Sub 'выбор цвета отображения точек
Private Sub mnu_Choose_iterations_Click(index As Integer)
For I = 0 To 4: mnu_Choose_iterations(I).Checked = False: Next I
mnu_Choose_iterations(index).Checked = True
End Sub 'выбор итерации для точности расчета пика
Private Sub Delete_Row(): On Error GoTo err
With MSFlexGrid1(tab_item)
If .Rows < 2 Then Exit Sub
.RemoveItem (.RowSel): For I = 1 To .Rows - 1: .TextMatrix(I, 0) = I: Next I
err: If err.Number = 30015 Then .Rows = 1: Exit Sub
End With
End Sub 'удалить выбранную строку
Private Sub mnu_Delete_Row_Click(): Delete_Row
End Sub 'удалить строку
Private Sub mnu_graphic_type_Click(index As Integer)
For I = 0 To 1: mnu_graphic_type(I).Checked = False: Next I
mnu_graphic_type(index).Checked = True
End Sub 'выбор типа графика
Private Sub Insert_Row(): With MSFlexGrid1(tab_item)
.Rows = MSFlexGrid1(tab_item).Rows + 1: RowSel_ = .Rows - 1
If tab_item = 2 Then Peak_calc.automatic_initialization_of_values
For I = 1 To .Rows - 1: .TextMatrix(I, 0) = I: Next I
End With
End Sub 'добавить строку
Private Sub mnu_Insert_Row_Click(): Insert_Row
End Sub 'добавить строку
Private Sub mnuClear_Click(): Picture1.Picture = LoadPicture(""): Cleen_picture = True: N_ = 0
End Sub 'очистка окна графики
Private Sub mnucopy_Click()
Clipboard.Clear
With MSFlexGrid1(tab_item)
For I = 0 To .Rows - 1: For I1 = 0 To .Cols - 1
 slovo = slovo & .TextMatrix(I, I1) & Chr(9)
Next I1: slovo = slovo & Chr(13) + Chr(10)
Next I
Clipboard.SetText slovo
End With
End Sub 'копирование всех данных из таблицы
Sub definition_of_mode()
End Sub 'условия установки режима
Private Sub metrology_mode()
Command3(4).ToolTipText = "Отобразить экспериментальные данные градуировочной кривой из таблицы"
For I = 5 To 8: Command3(I).Enabled = True: Next I
For I = 9 To 14: Command3(I).Enabled = False: Next I
mnu_graphic_type(1).Enabled = False
spectrum.Enabled = False
Norm.Enabled = True
mnu_Clear_all.Enabled = True: mnu_Delete_col.Enabled = True:
mnu_Insert_col.Enabled = True: mnu_Insert_row.Enabled = True
mnuDelete.Enabled = True

End Sub 'режим метрологии (линейная регрессия и выборка)
Private Sub LIES_mode()
Command3(4).ToolTipText = "Загрузить в таблицу расчетные линии"
For I = 5 To 8: Command3(I).Enabled = False: Next I
For I = 9 To 14: Command3(I).Enabled = True: Next I
spectrum.Enabled = True
Me.mnu_graphic_type(1).Enabled = True
Me.mnu_Delete_col.Enabled = False: Me.mnu_Insert_col.Enabled = False
spectrum.Enabled = True
Norm.Enabled = False
mnu_Clear_all.Enabled = False: mnu_Delete_col.Enabled = False:
mnu_Insert_col.Enabled = False: mnu_Insert_row.Enabled = False
mnuDelete.Enabled = False
'Load Form3
End Sub 'режим ЛИЭС
Private Sub mnuDelete_Click(): On Error GoTo err
If RowSel_ > 0 Then MSFlexGrid1(tab_item).TextMatrix(RowSel_, ColSel_) = ""
err: If err.Number = 381 Then Exit Sub
End Sub 'очистить ячейку
Private Sub SSTab1_Click(PreviousTab As Integer): tab_item = SSTab1.Tab: mode_number = tab_item
Select Case tab_item
Case 0: metrology_mode: Me.mnu_Delete_col.Enabled = False: Me.mnu_Insert_col.Enabled = False
Case 1: metrology_mode: Me.mnu_Delete_col.Enabled = True: Me.mnu_Insert_col.Enabled = True
Case 2: LIES_mode:
End Select

MSFlexGrid1(tab_item).SetFocus
Command3(5).Enabled = True

End Sub 'выбор режима работы

