VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "tabctl32.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "msflxgrd.ocx"
Begin VB.Form Form1 
   ClientHeight    =   8115
   ClientLeft      =   -90
   ClientTop       =   45
   ClientWidth     =   15540
   BeginProperty Font 
      Name            =   "Times New Roman"
      Size            =   9.75
      Charset         =   204
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8115
   ScaleWidth      =   15540
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   735
      Left            =   2280
      TabIndex        =   102
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
      TabPicture(0)   =   "TTM.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame4"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      TabCaption(1)   =   "Tab 1"
      TabPicture(1)   =   "TTM.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame6"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Tab 2"
      TabPicture(2)   =   "TTM.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame3"
      Tab(2).ControlCount=   1
      Begin VB.Frame Frame4 
         Caption         =   "Frame4"
         Height          =   1575
         Left            =   2640
         TabIndex        =   104
         Top             =   1320
         Width           =   1575
      End
      Begin VB.Frame Frame3 
         Caption         =   "Frame3"
         Height          =   495
         Left            =   -73680
         TabIndex        =   103
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Frame Frame6 
         Caption         =   "Frame6"
         Height          =   1455
         Left            =   -74920
         TabIndex        =   100
         Top             =   400
         Width           =   2415
         Begin VB.Label Label6 
            Caption         =   "Label6"
            Height          =   255
            Index           =   0
            Left            =   360
            TabIndex        =   101
            Top             =   600
            Visible         =   0   'False
            Width           =   615
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Frame2"
         Height          =   495
         Left            =   600
         TabIndex        =   99
         Top             =   1560
         Width           =   1095
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
         Size            =   14.25
         Charset         =   204
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
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
      Index           =   29
      Left            =   3120
      Style           =   1  'Graphical
      TabIndex        =   87
      Top             =   1800
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
      Index           =   28
      Left            =   -120
      Style           =   1  'Graphical
      TabIndex        =   86
      Top             =   1680
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
      Top             =   2760
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
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
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
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
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
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   11.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
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
      Left            =   480
      TabIndex        =   56
      Text            =   "Text3"
      Top             =   2640
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
      TabIndex        =   8
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
      Text            =   "TTM.frx":0054
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
   Begin VB.Label Label4 
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
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   204
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1095
      Left            =   2760
      TabIndex        =   2
      Top             =   7080
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public dd                       As Integer
Private pressed_left_button     As Boolean

'******** Переменные для рисования прямоугольника для выделения участка на графике *****************
Private X_begin_of_rect         As Single 'начальное положение по оси ОХ
Private Y_begin_of_rect         As Single 'начальное положение по оси ОY


Private Sub Form_Load(): r = 15: mode_number = 0: pressed_left_button = True
Me.Width = 16000: Me.Height = 9000: Me.Left = 0: Me.Top = 0
Intfc.SSTab_setup
Intfc.toolbar
Intfc.Picture_box
Intfc.label
Intfc.knopoki_granichnykh_usloviy
Intfc.Opened_files
File_data.Interface
MDIForm1.definition_of_mode
End Sub 'НАЧАЛЬНАЯ ЗАГРУЗКА

Private Sub Label6_MouseDown(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 And Opened_file(Count_of_opened_files) <> "" Then _
Cvet_tochek = Label6(index).ForeColor: File_work.repeat_read_file (index)
If Button = 2 Then CommonDialog1.ShowColor: Label6(index).ForeColor = CommonDialog1.Color:
End Sub 'выбор цвета отображения точек

Private Sub mnuT_Click(index As Integer): Clss: W4 = 1: For i = 0 To 2: BC: Next i: Command3(0).Caption = "Представление результата измерения": Command3(1).Caption = "Оценка измерения по двухбальной шкале": Command3(2).Caption = "Оценка измерения по четырехбальной шкале"
End Sub 'АНАЛИЗ ВЫБОРКИ
Private Sub mnuSp_Click(index As Integer): Clss: W4 = 2: For i = 0 To 1: BC: Next i: Command3(0).Caption = "Анализ выборок по статистическим критериям": Command3(1).Caption = "Анализ выборок по технологическим критериям"
End Sub 'АНАЛИЗ ВЫБОРОК

Private Sub mnuTer_Click(index As Integer):
Clss: W4 = 3: Label3.Visible = False: Label2(0).Visible = True: Label2(0).Caption = "ВЫБОР НАПРАВЛЕНИЯ РАБОТ":
For i = 41 To 49: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i:
Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n:
BS: CurrentX = 11200: CurrentY = 7050: Print "Рабочий диапазон":
For i = 10800 To 11100 Step 35: Q1 = i: Q2 = 7200: Circle (Q1, Q2), 30, QBColor(12): Next i:
CurrentX = 11200: CurrentY = 6750: Print "Линия регрессии":
For i = 10800 To 11100 Step 35: Q1 = i: Q2 = 6850: Circle (Q1, Q2), 3, QBColor(10): Next i:
CurrentX = 11200: CurrentY = 6900: Print "Линия доверительной границы":
For i = 10800 To 11100 Step 35: Q1 = i: Q2 = 7050: Circle (Q1, Q2), 3, QBColor(4): Next i:
sortirovka:   Studentkoef:   Regression:    Diapazon
End Sub 'РЕГРЕССИОННЫЙ АНАЛИЗ

Private Sub DM_Click(index As Integer):
End Sub 'МНОГОМЕРНЫЕ ЗАДАЧИ
Private Sub BC(): Command3(i).Left = 100: Command3(i).Top = 100 + i * 540: Command3(i).Width = 4500: Command3(i).Visible = True
End Sub 'COMMAND BOXES

Private Sub BSS(): T7 = Val(Text3(41).Text): T6 = Val(Text3(42).Text):  T5 = Val(Text3(43).Text): T3 = Val(Text3(44).Text): T8 = Val(Text3(45).Text): H1 = Text3(46).Text: H0 = Text3(47).Text: n = Val(Text3(48).Text): P = Val(Text3(49).Text): n1 = n: n5 = n: For i = 1 To n: X1(i) = i * 1000 / n: X2(i) = i * 1000 / n + (0.5 - Rnd) * T3 * T8 / 100: Next i: For i = 1 To n: Q1 = 14500 - (K2 - X1(i)) * 8300 / (K2 - K1): Q2 = 6500 - (X2(i) - K3) * 6430 / (K4 - K3): Circle (Q1, Q2), 50, QBColor(0): Next i: Grafic: Grafictext
End Sub 'ЛИН. РЕГРЕССИОННЫЙ АНАЛИЗ чтение граничных условий
Private Sub BS1(): Command4.Visible = True: For i = 46 To 49: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: CurrentX = 1900: CurrentY = 3750: Print "P% = 50, 75, 90, 95, 99, 99.9": CurrentX = 1900: CurrentY = 4050: Print "n (>1, <50)": CurrentX = 1900: CurrentY = 4450: Print "cимвол": CurrentX = 1900: CurrentY = 4850: Print "размерность": Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n
End Sub '
Private Sub BS2(): For i = 0 To 50: Text3(i).Text = "": Text1(i).Visible = False: Text1(i).Text = i: Next i
End Sub 'cls text box1
Private Sub BS3(): Label3.Visible = False: For i = 1 To 50: Text1(i).Visible = False: Next i
End Sub 'cls text box2
Private Sub BS4(): For i = 1 To n: Text1(i).Visible = False: Next i: P = Val(Text3(49).Text): n = Val(Text3(48).Text): H0 = Text3(47).Text: H1 = Text3(46).Text: n1 = n: Poz: Label2(0).Caption = "ПОСЛЕ ВВОДА ДАННЫХ НАЖМИТЕ ЕЩЕ РАЗ СТАРТ": For i = 1 To n: Text1(i).Visible = True: X1(i) = Val(Text1(i).Text): Next i
End Sub 'cls text box2
Private Sub BS5(): For i = 3 To 4: Command3(i).Width = 3500: Command3(i).Top = -1200 + i * 540: Command3(i).Visible = True: Next i: Command3(4).Caption = "Производственный процесс": Command3(3).Caption = "Учебный процесс"
End Sub 'cls text box2
Private Sub BS6(): For i = 44 To 45: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: CurrentX = 1900: CurrentY = 5250: Print "достоверное значение": CurrentX = 1900: CurrentY = 5650: Print "показатель сходимости, %": Text3(44).Text = T3: Text3(45).Text = T8
End Sub '
Private Sub BS7(): For i = 44 To 45: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: CurrentX = 1900: CurrentY = 5250: Print "технологическое значение": CurrentX = 1900: CurrentY = 5650: Print "допуск": Text3(44).Text = T3: Text3(45).Text = T8
End Sub '
Private Sub BS8(): For i = 41 To 43: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i: Text3(43).Text = T5:: Text3(42).Text = T6:: Text3(41).Text = T7: CurrentX = 1900: CurrentY = 6100: Print "допустимая доля промахов*10": CurrentX = 1900: CurrentY = 6500: Print "снижение на один балл*10": CurrentX = 1900: CurrentY = 6900: Print "снижение на два балла*10"
End Sub '
Private Sub BS9(): For i = 41 To 43: Text3(i).Left = 100: Text3(i).Top = 4800 - (i - 46) * 400: Text3(i).Visible = True: Next i:  Text3(43).Text = T5:: Text3(42).Text = T6:: Text3(41).Text = T7: CurrentX = 1900: CurrentY = 6100: Print "допустимая доля брака*10": CurrentX = 1900: CurrentY = 6500: Print "снижение на один балл*10": CurrentX = 1900: CurrentY = 6900: Print "снижение на два балла*10"
End Sub '

Private Sub Command3_Click(index As Integer): 'Clss: label2(0).Visible = True: label2(0).Caption = "ВВОД ГРАНИЧНЫХ УСЛОВИЙ И СТАРТ": Command8.Visible = True
 'If Index = 0 And W4 = 1 And W5 = 0 Then W1 = 0: F2 = 0: BS1: For I = 1 To n: Text1(I).Visible = True: X1(I) = Val(Text1(I).Text): Next I: Poz: Studentkoef: MO: Label3.Visible = True: Label3.Caption = "При значении числа < 1 набор числа с использованием точки, а не запятой"
 'If Index = 0 And W4 = 1 And W5 = 1 Then W1 = 0: F2 = 0: BS1: BS2
' If Index = 1 Or Index = 2 And W4 = 1 Then W1 = 1: For I = 3 To 4: Command3(I).Width = 3500: Command3(I).Top = -1200 + I * 540: Command3(I).Visible = True: Next I: Command3(4).Caption = "Производственный процесс": Command3(3).Caption = "Учебный процесс"
 'If Index = 3 And W4 = 1 And W1 = 1 Then F2 = 1: BS1: BS6
' If Index = 4 And W4 = 1 And W1 = 1 Then F2 = 2: BS1: BS7
 'If Index = 2 And W4 = 1 Then W1 = 2: Picture1.CurrentX = 500: Picture1.CurrentY = 500: Picture1.Print "DSD" ' Grafictext:
 
If index = 2 Then Command3_2_schetchik:  File_work.read_file (Count_of_opened_files): Command3_2:
If index = 3 Then Save_files.save_file
  
 If index = 5 Then W1 = 2: test
 If index = 6 Then Picture1.Cls
 If index = 9 Then Peak_calc.show_calculated_peak
' If Index = 4 And W4 = 1 And W1 = 2 Then F2 = 2: BS1: BS7: BS9
 'If Index = 0 And W4 = 2 And W5 = 0 Then W1 = 0: F2 = 0: n = 2: n1 = 15: n2 = 15: Command4.Visible = True: For I = 44 To 49: Text3(I).Left = 100: Text3(I).Top = 4800 - (I - 46) * 400: Text3(I).Visible = True: Next I: CurrentX = 1900: CurrentY = 3750: Print "P% = 50, 75, 90, 95, 99, 99.9": CurrentX = 1900: CurrentY = 4120: Print "n = число выборок": CurrentX = 1900: CurrentY = 4450: Print "cимвол": CurrentX = 1900: CurrentY = 4850: Print "размерность": Text3(44).Text = n2: Text3(45).Text = n1: Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n: CurrentX = 1900: CurrentY = 5250: Print "число n1 выборки 1 (n1<26)": CurrentX = 1900: CurrentY = 5650: Print "число n2 выборки 2 (n2<26)": Command4.Visible = True: Label3.Visible = True: Label3.Caption = "При значении числа < 1 набор числа с использованием точки, а не запятой": Poz1: V1
 'If Index = 0 And W4 = 3 And W5 = 0 Then Label3.Visible = False: label2(0).Visible = True: label2(0).Caption = "ВЫБОР НАПРАВЛЕНИЯ РАБОТ": For I = 41 To 49: Text3(I).Left = 100: Text3(I).Top = 4800 - (I - 46) * 400: Text3(I).Visible = True: Next I: Text3(46).Text = H1: Text3(47).Text = H0: Text3(48).Text = n: Text3(49).Text = P: Text3(47).Text = H0: Text3(48).Text = n: BS: CurrentX = 11200: CurrentY = 6000: Print "Рабочий диапазон": For I = 10800 To 11100 Step 35: Q1 = I: Q2 = 6150: Circle (Q1, Q2), 30, QBColor(12): Next I: CurrentX = 11200: CurrentY = 5700: Print "Линия регрессии": For I = 10800 To 11100 Step 35: Q1 = I: Q2 = 5800: Circle (Q1, Q2), 3, QBColor(10): Next I: CurrentX = 11200: CurrentY = 5850: Print "Линия доверительной границы": For I = 10800 To 11100 Step 35: Q1 = I: Q2 = 6000: Circle (Q1, Q2), 3, QBColor(4): Next I
' If Index = 2 And W4 = 3 And W5 = 0 Then Sortirovka:    Studentkoef:   Regression:   Diapazon
End Sub 'ГРАНИЧНЫЕ УСЛОВИЯ
Private Sub Command3_2_schetchik()
Count_of_opened_files = Count_of_opened_files + 1:
If Count_of_opened_files > 5 Then Erase Opened_file(): Count_of_opened_files = 1
Cvet_tochek = Label6(Count_of_opened_files).ForeColor
End Sub 'счетчик открытых файлов
Private Sub Command3_2()
'****** Небольшой блок присвоения label имени открытого файла ***********
Dim dd As Integer
dd = 0
For i = 1 To Len(Opened_file(Count_of_opened_files))
slovo = Mid(Opened_file(Count_of_opened_files), i, 1)
If slovo = "\" Then dd = i
Next i
Label6(Count_of_opened_files).Caption = Right(Opened_file(Count_of_opened_files), Len(Opened_file(Count_of_opened_files)) - dd)
End Sub 'блок для первичного открытия файлов


Private Sub Command4_Click(): BS3: If W4 = 1 And W1 = 0 Then BS4
 If W4 = 1 And W1 > 0 Then T3 = Val(Text3(44).Text): T8 = Val(Text3(45).Text): H1 = Text3(46).Text: H0 = Text3(47).Text: n = Val(Text3(48).Text): P = Val(Text3(49).Text): n1 = n: Poz: Label2(0).Caption = "ПОСЛЕ ВВОДА ДАННЫХ НАЖМИТЕ ЕЩЕ РАЗ СТАРТ": For i = 1 To n: X1(i) = Text1(i).Visible = True: X1(i) = Val(Text1(i).Text): Next i: Label2(0).Visible = True: Label3.Visible = True
 If W4 = 1 And W1 = 2 Then T5 = Val(Text3(43).Text): T6 = Val(Text3(42).Text): T7 = Val(Text3(41).Text)
 If W4 = 1 And n < 2 Then Label3.Visible = True: Label3.Caption = "Число наблюдений должно быть более 1"
 If W4 = 1 And n > 1 Then Studentkoef: MO
 If W4 = 2 Then n1 = Val(Text3(44).Text): n2 = Val(Text3(45).Text): P = Val(Text3(49).Text): Poz1: For i = 1 To n1: X1(i) = Val(Text1(i).Text): Next i: For i = 1 To n2: X1(i) = Val(Text1(25 + i).Text): Next i: V1
 If W4 = 3 And W5 = 0 Then BSS: sortirovka:   Studentkoef:   Regression:    Diapazon
End Sub 'START
Private Sub MO(): U = 0: U1 = 0: U2 = 0: For i = 1 To n: U = U + X1(i): Next i: U = U / n: For i = 1 To n: U1 = U1 + (U - X1(i)) ^ 2: Next i: U1 = Sqr(U1 / (n - 1)) * t1 / Sqr(n)
 U2 = U1 * 100 / U: H4 = "": H2 = "": Label2(0).Caption = "": Label3.Caption = ""
 If U > 100 And T3 > 1 Then H5 = "0.0" Else H5 = "0.00"
 If U < 1 Then H5 = "0.00000" Else If U < 0.01 Then H5 = ""
 If W1 = 0 Then F2 = 0: Label2(0).Visible = True: Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1
 H3 = "   Оценка ОТЛИЧНО": If T3 < U2 Then H3 = " Оценка ДВА": H4 = ". Случайная погрешность значима"
 If T3 < Abs(T8 - U) * 100 / T8 Then H3 = " Оценка ДВА": H2 = ". Систематичесая погрешность значима"
 If W1 = 1 And F2 = 1 Then Label3.Caption = H3 & H4 & H2: Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1
 If W1 = 1 And F2 = 2 Then Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1: MOT
 If W1 = 2 And F2 = 1 Then MOT1
 If W1 = 2 And F2 = 2 Then Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1: MOT: Label1.Visible = True: Label1.Caption = " Для изменения сортности необходимо изменить граничные условия"
 End Sub 'ОЦЕНКА И ПРЕДСТАВЛЕНИЕ РЕЗУЛЬТАТА ИЗМЕРЕНИЯ
Private Sub MOT(): If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H3 = "Надежность измерения обеспечена" Else H3 = "Надежность измерения не обеспечена"
 If (U + U1) <= (T8 + T3) And (U - U1) >= (T8 - T3) Then H4 = "Параметр объекта соответствует требованиям (оценка отлично)" Else H4 = "Параметр объекта не соответствует требованиям (оценка два)"
 If U > (T8 + T3) Then H2 = "Значение параметра выше нормы" Else If U < (T8 - T3) Then H2 = "Значение параметра ниже нормы"
 Label3.Caption = H3 & ".  " & H4 & ".  " & H2
End Sub 'Оценка по двухбалльной шкале
Private Sub MOT1(): Label1.Visible = True: Label2(0).Visible = True: If U2 <= T3 And Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "Оценка ОТЛИЧНО": Label1.Caption = "": H6 = "": Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ".  Достоверное значение =   " & T8 & " " & H1 & ". " & " r = " & T3 & "%.  " & H6 Else Skriterii5
End Sub 'Оценка по четырехбалльной шкале
Private Sub MO1(): U = 0: U1 = 0: U2 = 0: For i = 1 To n: U = U + X1(i): Next i: U = U / n: For i = 1 To n: U1 = U1 + (U - X1(i)) ^ 2: Next i:  U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U: If F2 = 1 Then U7 = T8 Else U7 = U
End Sub 'Расчет среднего и выбор достоверного значения, есло его нет, то вместо него матожидание
Private Sub OC(): If U2 <= T3 Then H3 = "   Оценка ОТЛИЧНО": H4 = "  Случайная погрешность незначима": F0 = 0 Else H3 = "": H4 = "  Случайная погрешность значима": F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "   Оценка ОТЛИЧНО": H2 = "  Систематическая погрешность незначима": F1 = 0 Else H3 = "": H2 = "  Систематическая погрешность значима": F1 = 1
End Sub 'Оценка значимости случайной и систематической погрешностей
Private Sub Skriterii5(): T5 = T5 / 10: T6 = T6 / 10: T7 = T7 / 10: U9 = Int(T5 * n): n1 = n: If U9 < 10 Then H3 = "   Оценка хорошо": U9 = 1
 Sort
 n = n - U9
 For i = 1 To n + U9: Text1(i).Text = X1(i): Next i
 For I2 = 1 To U9
    turn
    Text3(48).Text = n: Studentkoef
    MO1
    OC
    If n1 < 10 Then H3 = "   Оценка ХОРОШО"
  If n1 - n = 1 Then H6 = "": H6 = "Обнаружен промах (его доля не выше нормы) - " & X1(n + 1)
  If n1 - n > 1 Then H6 = "": H6 = "Обнаружены промахи (их доля не выше нормы) - ": For i = 1 To (n1 - n): H6 = H6 & ",  " & X1(n + i): Next i
  If n1 - n > 0 Then Label1.Caption = "": Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ". Достоверное значение = " & T8 & "  " & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
Next I2:
  n = n1
  If F1 = 1 Or F0 = 1 Then Skriterii4
End Sub 'Сортировка по отклонению наблюдений
Private Sub Skriterii4(): U9 = Int(T6 * n): n1 = n: Sort
 n = n - U9:
 For i = 1 To n + U9: Text1(i).Text = X1(i): Next i
 For I2 = 1 To U9
    turn
    Text3(48).Text = n: Studentkoef
    MO1
     If U2 <= T3 Then H3 = "   Оценка ХОРОШО": H4 = "  Случайная погрешность незначима": F0 = 0 Else H3 = "": H4 = "  Случайная погрешность значима": F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "   Оценка ХОРОШО": H2 = "  Систематическая погрешность незначима": F1 = 0 Else H3 = "": H2 = "  Систематическая погрешность значима": F1 = 1
  If n1 - n = 1 Then H6 = "": H6 = "Обнаружен промах (его доля не выше нормы) - " & X1(n + 1)
  If n1 - n > 1 Then H6 = "": H6 = "Обнаружены промахи (их доля не выше нормы) - ": For i = 1 To (n1 - n): H6 = H6 & ",  " & X1(n + i): Next i
  If n1 - n > 0 Then Label1.Caption = "": Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ". Достоверное значение = " & T8 & "  " & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
Next I2:
  n = n1
  If F1 = 1 Or F0 = 1 Then Skriterii3
End Sub 'Сортировка по отклонению наблюдений
Private Sub Skriterii3(): U9 = Int(T7 * n): n1 = n: Sort
 n = n - U9:
 For i = 1 To n + U9: Text1(i).Text = X1(i): Next i
 For I2 = 1 To U9
    turn
    Text3(48).Text = n: Studentkoef
    MO1
     If U2 <= T3 Then H3 = "   Оценка УДОВЛЕТВОРИТЕЛЬНО. ": H4 = "  Случайная погрешность незначима": F0 = 0 Else H3 = "": H4 = "  Случайная погрешность значима": F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then H3 = "   Оценка УДОВЛЕТВОРИТЕЛЬНО. ": H2 = "  Систематическая погрешность незначима": F1 = 0 Else H3 = "": H2 = "  Систематическая погрешность значима": F1 = 1
  If n1 - n = 1 Then H6 = "": H6 = "Обнаружен промах (его доля не выше нормы) - " & X1(n + 1)
  If n1 - n > 1 Then H6 = "": H6 = "Обнаружены промахи (их доля не выше нормы) - ": For i = 1 To (n1 - n): H6 = H6 & ",  " & X1(n + i): Next i
  If n1 - n > 0 Then Label1.Caption = "": Label2(0).Caption = H0 & " = " & Format(U, H5) & " +- " & Format(U1, H5) & " (" & Format(U2, "0.0") & "%" & "), " & H1 & ". " & " n = " & n & "," & " tnp = " & Format(t1, "0.00"): Label3.Caption = H3 & ". Достоверное значение = " & T8 & "  " & H1 & ". " & " r = " & T3 & "%.  " & H6 & ". " & H4 & ". " & H2
Next I2:
  n = n1
  If F1 = 1 Or F0 = 1 Then Label2(0).Caption = "   Оценка ДВA": Label3.Visible = False
End Sub 'Сортировка по отклонению наблюдений
Private Sub Sort(): For I1 = 1 To U9:   For i = 1 To n - 1: U4 = Abs(U - X1(i)): U5 = Abs(U - X1(i + 1)): If U4 > U5 Then U4 = X1(i + 1): X1(i + 1) = X1(i): X1(i) = U4
   Next i: Next I1
End Sub 'Сортировка данных в конец базы X1(I) по отклонению от длстоверного или среднего
Private Sub turn(): Do:  n = n + 1: Studentkoef
   U = 0: U1 = 0: U2 = 0: For i = 1 To n: U = U + X1(i): Next i: U = U / n: For i = 1 To n: U1 = U1 + (U - X1(i)) ^ 2: Next i:   U1 = Sqr(U1 / (n - 1)): U1 = U1 * t1 / Sqr(n):   U2 = U1 * 100 / U:    If U2 <= T3 Then F0 = 0 Else F0 = 1
   If Abs(T8 - U) * 100 / T8 <= T3 Then F1 = 0 Else F1 = 1
  Loop While F1 + F0 < 1
   n = n - 1: U9 = n1 - n
End Sub 'Вoзврат данных
Private Sub Command5_Click(): If W5 = 0 Then W5 = 1: Command5.Caption = "Clear text box": For i = 0 To 50: Text3(i).Text = "": Text1(i).Visible = False: Next i Else W5 = 0: Command5.Caption = "No Clear text"
End Sub 'Clear text
Private Sub Command6_Click(): Label2(0).Visible = True: Label2(0).Caption = "Подпрограмма еще не запущена"
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
Private Sub Poz(): CurrentX = 5000: CurrentY = 350: Print "ТАБЛИЦА ЗНАЧЕНИЙ НАБЛЮДЕНИЙ ": For i = 1 To n
   If i < 11 Then Text1(i).Visible = True: Text1(i).Left = 5000: Text1(i).Top = 300 + i * 300:
   If i > 10 Then Text1(i).Visible = True: Text1(i).Left = 7000: Text1(i).Top = 300 + (i - 10) * 300:
   If i > 20 Then Text1(i).Visible = True: Text1(i).Left = 9000: Text1(i).Top = 300 + (i - 20) * 300:
   If i > 30 Then Text1(i).Visible = True: Text1(i).Left = 11000: Text1(i).Top = 300 + (i - 30) * 300:
   If i > 40 Then Text1(i).Visible = True: Text1(i).Left = 13000: Text1(i).Top = 300 + (i - 40) * 300:
   Next i
End Sub 'Cтрока таблицы
Private Sub Poz1(): CurrentX = 4000: CurrentY = 350: Print "ВЫБОРКА 1": CurrentX = 9000: CurrentY = 350: Print "ВЫБОРКА 2": For i = 1 To n1: Text1(i).Visible = True: Text1(i).Left = 5500: Text1(i).Top = i * 260 - 200: Next i: For i = 26 To 25 + n2: Text1(i).Visible = True: Text1(i).Left = 10500: Text1(i).Top = (i - 25) * 260 - 200: Next i
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
Private Sub Clss(): Label1.Visible = False: Label2(0).Visible = False: Label3.Visible = False: Label1.Caption = " ": Label2(0).Caption = " ":   Label3.Caption = " ": For i = 0 To 50: Text1(i).Visible = False: Text2(i).Visible = False: Text3(i).Visible = False: Next i:  For i = 0 To 30: Command3(i).Visible = False: Next i: Command4.Visible = False: Cls
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
Private Sub Tabl(): Clss: For i = 0 To n: Text1(i).Text = "": Text2(i).Text = "": Text3(i).Text = "": Text2(i).Alignment = 2: Text1(i).Left = 100: Text2(i).Left = 5000: Text3(i).Left = 9900: Text1(i).Width = 4500: Text2(i).Width = 4500: Text3(i).Width = 4500: Text1(i).Top = 100 + i * 300: Text2(i).Top = 100 + i * 300: Text3(i).Top = 100 + i * 300: Text1(i).Visible = True: Text2(i).Visible = True: Text3(i).Visible = True: Next i
End Sub '
Private Sub Tab2(): Clss: For i = 0 To 2: Command3(i).Left = 100: Command3(i).Width = 4500: Command3(i).Top = 100 + i * 540: Command3(i).Visible = True: Next i
End Sub '
Private Sub C1(): For i = 0 To 49: Text1(i).Visible = False: Text2(i).Visible = False: Text3(i).Visible = False: Next i
End Sub 'Очистка Textbox
Private Sub V1(): U = 0: U1 = 0: For i = 1 To n1: X1(i) = Val(Text1(i).Text): U = U + X1(i): Next i: U = U / n1: U3 = U: For i = 1 To n1: U1 = U1 + (U - X1(i)) ^ 2: Next i: U1 = Sqr(U1 / (n1 - 1)): U5 = U1: U = 0: U1 = 0:  For i = 1 To n2: X2(i) = Val(Text1(25 + i).Text): U = U + X2(i): Next i: U = U / n2: U4 = U: For i = 1 To n2: U1 = U1 + (U - X2(i)) ^ 2: Next i: U1 = Sqr(U1 / (n2 - 1)): U6 = U5 / U1: If U6 < 1 Then U6 = U1 / U5
   n = n1 + n2 - 2: Studentkoef: P = P / 100: Fisherkoef: P = P * 100:  If U6 <= FK Then H1 = ",  (выборки однородны)": H2 = " <= " Else H1 = ",  (выборки неоднородны)": H2 = " > "
   Label2(0).Visible = True: Label2(0).Caption = "S1 = " & Format(U5, "0.00000") & ",   " & "S2 = " & Format(U1, "0.00000") & ",  F =  " & Format(U6, "0.0000") & ", " & " Fтабл. = " & Format(FK, "0.0000") & H1:  S0 = Sqr((n1 - 1) * U3 ^ 2 + (n2 - 1) * U4 ^ 2) / (n1 + n2 - 2): U14 = Abs(U3 - U4) / S0 * Sqr(n1 * n2 / (n1 + n2)): If U14 <= t1 Then H1 = "(выборки равноточны)": H2 = " <= " Else H1 = "(выборки неравноточны)": H2 = " > "
   Label3.Visible = True: Label3.Caption = "t =  " & Format(U14, "0.0000") & H2 & "tnp =  " & Format(t1, "0.00") & " ,     " & H1
End Sub 'Работа 4. Анализ выборок. Оценка по статистическим критериям
Sub test():
Calc_regr.test
End Sub

'************* КОМАНДЫ ДЛЯ РАБОТЫ С FlexGride *******************************
Private Sub MSFlexGrid1_DblClick()
File_data.FlexGrid_DblClick
End Sub

Private Sub MSFlexGrid1_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 46 Then row_ = Form1.MSFlexGrid1.RowSel: _
col_ = Form1.MSFlexGrid1.ColSel: _
Form1.MSFlexGrid1.TextMatrix(row_, col_) = ""
End Sub 'очистить ячейку

Private Sub MSFlexGrid1_LeaveCell()
If Text3(6).Visible = True Then MSFlexGrid1.TextMatrix(MSFlexGrid1.RowSel, MSFlexGrid1.ColSel) = Text3(6).Text
Text3(6).Visible = False
End Sub
Private Sub MSFlexGrid1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then PopupMenu MDIForm1.mnuPopup_meny_for_grid
End Sub 'вызов контектного меню для FlexGride

'************* КОМАНДЫ ДЛЯ РАБОТЫ С ОКНОМ ГРАФИКИ *******************************
Private Sub Picture1_DblClick(): Picture1.Cls
File_work.poisk_granic_shkaly_grafika
Graphic.Experimental_curve
End Sub 'отображение графика в исходном виде
Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
 If Button = 1 And pressed_left_button = True Then X_begin_of_rect = X: Y_begin_of_rect = Y: pressed_left_button = False
 If Button = 2 Then PopupMenu MDIForm1.mnuGraphic
End Sub
Private Sub Rect_draw(X As Single, Y As Single)
 Shape1.Visible = True:
 delta_X = X - X_begin_of_rect
 delta_Y = Y - Y_begin_of_rect

 If delta_X > 0 And delta_Y > 0 Then Shape1.Left = X_begin_of_rect: Shape1.Top = Y_begin_of_rect: _
 Shape1.Width = X - X_begin_of_rect: Shape1.Height = Y - Y_begin_of_rect:
End Sub 'блок для рисования прямоугольника выделения участка на графике
Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 And pressed_left_button = False Then Rect_draw X, Y
xx = K2 - (9010 - X) * (K2 - K1) / 8300
YY = (6620 - Y) * (K4 - K3) / 6430 + K3
Label1.Caption = "X=" & xx & Chr(13) + Chr(10) & "Y=" & YY
End Sub
Private Sub pererisovka_grafika()
XX1 = K2 - (9010 - X_begin_of_rect) * (K2 - K1) / 8300
XX2 = K2 - (9010 - (X_begin_of_rect + Shape1.Width)) * (K2 - K1) / 8300
YY1 = (6620 - (Y_begin_of_rect + Shape1.Height)) * (K4 - K3) / 6430 + K3
YY2 = (6620 - Y_begin_of_rect) * (K4 - K3) / 6430 + K3
K1 = XX1: K2 = XX2: K3 = YY1: K4 = YY2:
Picture1.Cls
Graphic.Experimental_curve
If mode_number = 1 Then Peak_calc.automatic_initialization_of_values
End Sub 'блок перерисовки графика после выделения конкретного участка

Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 And pressed_left_button = False Then pererisovka_grafika: pressed_left_button = True
Shape1.Width = 0: Shape1.Height = 0: Shape1.Visible = False

End Sub
