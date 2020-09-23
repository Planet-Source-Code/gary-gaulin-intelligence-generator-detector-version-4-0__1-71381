VERSION 5.00
Begin VB.Form Generator 
   Caption         =   "Intelligence Generator/Detector - Version 4, 2008 by Gary Gaulin"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   15240
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   734
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1016
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CheckBox FwdCheck 
      Caption         =   "Fwd"
      Height          =   255
      Left            =   13440
      TabIndex        =   67
      ToolTipText     =   "Moving Forward?"
      Top             =   2340
      Width           =   735
   End
   Begin VB.PictureBox Graph 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3315
      Left            =   120
      ScaleHeight     =   221
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1001
      TabIndex        =   17
      Top             =   7140
      Width           =   15015
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6315
      Left            =   120
      ScaleHeight     =   421
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   629
      TabIndex        =   0
      Top             =   360
      Width           =   9435
   End
   Begin VB.HScrollBar ConfAvgsScroll 
      Height          =   255
      Left            =   11940
      TabIndex        =   33
      Top             =   6840
      Width           =   1215
   End
   Begin VB.CommandButton DocumentationCommand 
      Caption         =   "Documentation"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9780
      TabIndex        =   66
      Top             =   6660
      Width           =   1635
   End
   Begin VB.HScrollBar CircuitScroll 
      Height          =   255
      Left            =   8100
      TabIndex        =   65
      Top             =   6720
      Width           =   1455
   End
   Begin VB.CheckBox CircuitCheck 
      Caption         =   "Circuit"
      Height          =   255
      Left            =   7260
      TabIndex        =   64
      ToolTipText     =   "Displays the 6 sided neural ring that gives sense of where feeder is when out of field of view."
      Top             =   6720
      Width           =   855
   End
   Begin VB.CheckBox KeepSameCheck 
      Caption         =   "Keep Same Feeders"
      Height          =   255
      Left            =   120
      TabIndex        =   56
      ToolTipText     =   "Keeps same feeders in place instead of randomly placing them in new locations when all are emptied."
      Top             =   6720
      Width           =   2115
   End
   Begin VB.CheckBox SpTCheck 
      Caption         =   "SpT"
      Height          =   255
      Left            =   14400
      TabIndex        =   51
      ToolTipText     =   "Spinning Towards Feeder?"
      Top             =   2340
      Width           =   735
   End
   Begin VB.CheckBox TwFCheck 
      Caption         =   "TwF"
      Height          =   255
      Left            =   14400
      TabIndex        =   48
      ToolTipText     =   "Moving Towards Feeder?"
      Top             =   1320
      Width           =   735
   End
   Begin VB.CheckBox SeFCheck 
      Caption         =   "SeF"
      Height          =   255
      Left            =   14400
      TabIndex        =   47
      ToolTipText     =   "See Feeder?"
      Top             =   1080
      Width           =   735
   End
   Begin VB.CheckBox NeverFullCheck 
      Caption         =   "Never Full"
      Height          =   255
      Left            =   2460
      TabIndex        =   46
      Top             =   6720
      Width           =   1215
   End
   Begin VB.CheckBox SpRcheck 
      Caption         =   "SpR"
      Height          =   255
      Left            =   14400
      TabIndex        =   45
      ToolTipText     =   "Spinning To Right?"
      Top             =   2820
      Width           =   735
   End
   Begin VB.CheckBox SpLcheck 
      Caption         =   "SpL"
      Height          =   255
      Left            =   14400
      TabIndex        =   44
      ToolTipText     =   "Spinning To Left"
      Top             =   2580
      Width           =   735
   End
   Begin VB.CheckBox FdnCheck 
      Caption         =   "Fdn"
      Height          =   240
      Left            =   13440
      TabIndex        =   39
      ToolTipText     =   "Feeding?"
      Top             =   2820
      Width           =   735
   End
   Begin VB.HScrollBar FoodSupplyScroll 
      Height          =   255
      Left            =   9720
      TabIndex        =   36
      Top             =   1140
      Width           =   1815
   End
   Begin VB.Timer UpdateTimer 
      Left            =   0
      Top             =   2160
   End
   Begin VB.CommandButton ShowMemCommand 
      Caption         =   "Show Main Mem"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9780
      TabIndex        =   32
      Top             =   3300
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2835
      Left            =   9720
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   31
      Top             =   3660
      Width           =   5295
   End
   Begin VB.CheckBox ShowFoodMemCheck 
      Caption         =   "Monitor Food Mem"
      Height          =   255
      Left            =   11880
      TabIndex        =   30
      Top             =   3420
      Width           =   1935
   End
   Begin VB.HScrollBar FeedersScroll 
      Height          =   255
      Left            =   9720
      TabIndex        =   27
      Top             =   1500
      Width           =   1815
   End
   Begin VB.HScrollBar DrainRateScroll 
      Height          =   255
      Left            =   9720
      TabIndex        =   25
      Top             =   2700
      Width           =   1815
   End
   Begin VB.HScrollBar FeedRateScroll 
      Height          =   255
      Left            =   9720
      TabIndex        =   23
      Top             =   2460
      Width           =   1815
   End
   Begin VB.CheckBox AtFCheck 
      Caption         =   "AtF"
      Height          =   270
      Left            =   14400
      TabIndex        =   20
      ToolTipText     =   "At Feeder?"
      Top             =   1560
      Width           =   735
   End
   Begin VB.CheckBox FulCheck 
      Caption         =   "Ful"
      Height          =   270
      Left            =   13440
      TabIndex        =   16
      ToolTipText     =   "Full?"
      Top             =   2580
      Width           =   735
   End
   Begin VB.HScrollBar SpeedScroll 
      Height          =   255
      Left            =   9720
      TabIndex        =   12
      Top             =   2100
      Width           =   1815
   End
   Begin VB.CheckBox ChaseFeederCheck 
      Caption         =   "Chase Feeder"
      Height          =   270
      Left            =   3900
      TabIndex        =   11
      ToolTipText     =   "Click to use Mouse to move feeder around screen."
      Top             =   6720
      Width           =   1575
   End
   Begin VB.CheckBox FreezeCheck 
      Caption         =   "Hold Center"
      Height          =   270
      Left            =   5640
      TabIndex        =   10
      ToolTipText     =   "Stays in center of the screen so you can test the way it tracks the feeder."
      Top             =   6720
      Width           =   1335
   End
   Begin VB.CommandButton StepCommand 
      Caption         =   "STEP"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   11220
      TabIndex        =   9
      Top             =   240
      Width           =   1095
   End
   Begin VB.CommandButton ResetCommand 
      Caption         =   "RESET"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   12420
      TabIndex        =   8
      Top             =   240
      Width           =   1095
   End
   Begin VB.CommandButton StartCommand 
      Caption         =   "Start/Stop"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   9780
      TabIndex        =   7
      ToolTipText     =   "Will start and stop the simulation without restarting proram."
      Top             =   240
      Width           =   1335
   End
   Begin VB.Timer LightTimer 
      Left            =   0
      Top             =   1560
   End
   Begin VB.CheckBox StlCheck 
      Caption         =   "Stl"
      Height          =   270
      Left            =   13440
      TabIndex        =   5
      ToolTipText     =   "Stalled?"
      Top             =   2100
      Width           =   735
   End
   Begin VB.CheckBox RMFcheck 
      Caption         =   "RMF"
      Height          =   270
      Left            =   13440
      TabIndex        =   4
      ToolTipText     =   "Right Motor Forward"
      Top             =   1560
      Width           =   855
   End
   Begin VB.CheckBox RMRcheck 
      Caption         =   "RMR"
      Height          =   270
      Left            =   13440
      TabIndex        =   3
      ToolTipText     =   "Right Motor Reverse"
      Top             =   1800
      Width           =   855
   End
   Begin VB.CheckBox LMFcheck 
      Caption         =   "LMF"
      Height          =   270
      Left            =   13440
      TabIndex        =   2
      ToolTipText     =   "Left Motor Forward"
      Top             =   1080
      Width           =   855
   End
   Begin VB.CheckBox LMRcheck 
      Caption         =   "LMR"
      Height          =   270
      Left            =   13440
      TabIndex        =   1
      ToolTipText     =   "Left Motor Reverse"
      Top             =   1320
      Width           =   855
   End
   Begin VB.Timer LoopTimer 
      Enabled         =   0   'False
      Left            =   0
      Top             =   960
   End
   Begin VB.Label Label21 
      Caption         =   "% Full"
      Height          =   255
      Left            =   2220
      TabIndex        =   63
      Top             =   120
      Width           =   735
   End
   Begin VB.Label BadMemories 
      Alignment       =   1  'Right Justify
      Caption         =   "0000"
      Height          =   255
      Left            =   6420
      TabIndex        =   62
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label20 
      Caption         =   "Bad"
      Height          =   255
      Left            =   7080
      TabIndex        =   61
      ToolTipText     =   "Number that are at Confidence 0, things tried but did not work."
      Top             =   120
      Width           =   375
   End
   Begin VB.Label Label19 
      Caption         =   "Good"
      Height          =   255
      Left            =   5700
      TabIndex        =   60
      ToolTipText     =   "Confidence of 1 or more"
      Top             =   120
      Width           =   615
   End
   Begin VB.Label GoodMemories 
      Alignment       =   1  'Right Justify
      Caption         =   "0000"
      Height          =   255
      Left            =   5100
      TabIndex        =   59
      Top             =   120
      Width           =   555
   End
   Begin VB.Label Label18 
      Caption         =   "Memories"
      Height          =   255
      Left            =   3900
      TabIndex        =   58
      Top             =   120
      Width           =   975
   End
   Begin VB.Label TotalMemories 
      Alignment       =   1  'Right Justify
      Caption         =   "0000"
      Height          =   255
      Left            =   3120
      TabIndex        =   57
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "Age"
      Height          =   255
      Left            =   120
      TabIndex        =   55
      Top             =   120
      Width           =   375
   End
   Begin VB.Label Age 
      Caption         =   "0000"
      Height          =   255
      Left            =   600
      TabIndex        =   54
      Top             =   120
      Width           =   1275
   End
   Begin VB.Label Conf3sLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "0000"
      Height          =   255
      Left            =   7680
      TabIndex        =   53
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label7 
      Caption         =   "Confidence 3"
      Height          =   255
      Left            =   8340
      TabIndex        =   52
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Angle0Label 
      Alignment       =   1  'Right Justify
      Caption         =   "0"
      Height          =   255
      Left            =   14340
      TabIndex        =   50
      ToolTipText     =   "Spin Angle"
      Top             =   2100
      Width           =   255
   End
   Begin VB.Label Label1 
      Caption         =   "Ang"
      Height          =   255
      Left            =   14700
      TabIndex        =   49
      ToolTipText     =   "Spin Angle"
      Top             =   2100
      Width           =   495
   End
   Begin VB.Label FeedersLeftLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "25"
      Height          =   255
      Left            =   12060
      TabIndex        =   43
      Top             =   1740
      Width           =   315
   End
   Begin VB.Label Label16 
      Caption         =   "left"
      Height          =   255
      Left            =   12420
      TabIndex        =   42
      Top             =   1740
      Width           =   375
   End
   Begin VB.Label FeedersOutLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "25"
      Height          =   255
      Left            =   11400
      TabIndex        =   41
      Top             =   1740
      Width           =   375
   End
   Begin VB.Label Label10 
      Caption         =   "out"
      Height          =   255
      Left            =   11820
      TabIndex        =   40
      Top             =   1740
      Width           =   375
   End
   Begin VB.Label FoodSupplyLabel 
      Caption         =   "Label10"
      Height          =   255
      Left            =   12600
      TabIndex        =   38
      Top             =   1140
      Width           =   375
   End
   Begin VB.Label Label9 
      Caption         =   "Fd Supply "
      Height          =   255
      Left            =   11640
      TabIndex        =   37
      Top             =   1140
      Width           =   975
   End
   Begin VB.Label ConfAvgsLabel 
      Caption         =   "Label9"
      Height          =   255
      Left            =   14640
      TabIndex        =   35
      Top             =   6840
      Width           =   495
   End
   Begin VB.Label Label6 
      Caption         =   "Confidence Av ="
      Height          =   255
      Left            =   13200
      TabIndex        =   34
      ToolTipText     =   "Averaging amount, to smooth the Average Confidence line."
      Top             =   6840
      Width           =   1455
   End
   Begin VB.Label FeedersLabel 
      Caption         =   "25"
      Height          =   255
      Left            =   12420
      TabIndex        =   29
      Top             =   1500
      Width           =   375
   End
   Begin VB.Label Label13 
      Caption         =   "Feeders"
      Height          =   255
      Left            =   11640
      TabIndex        =   28
      Top             =   1500
      Width           =   975
   End
   Begin VB.Label Label12 
      Caption         =   "Drain Rate"
      Height          =   255
      Left            =   11640
      TabIndex        =   26
      ToolTipText     =   "How fast its food in reserve from overfeeding is used up, the critters metabolism rate."
      Top             =   2700
      Width           =   975
   End
   Begin VB.Label Label11 
      Caption         =   "Feed Rate"
      Height          =   255
      Left            =   11640
      TabIndex        =   24
      ToolTipText     =   "This changes how fast it can eat.  At max more food in reserve, more time dancing around playing not thinking about food."
      Top             =   2460
      Width           =   975
   End
   Begin VB.Label AvCnfLabel 
      Caption         =   "AvCnf"
      Height          =   255
      Left            =   14520
      TabIndex        =   22
      Top             =   600
      Width           =   855
   End
   Begin VB.Label Label8 
      Caption         =   "Av Cnf"
      Height          =   255
      Left            =   13800
      TabIndex        =   21
      Top             =   600
      Width           =   615
   End
   Begin VB.Label AddressLabel 
      Caption         =   "addr"
      Height          =   255
      Left            =   14520
      TabIndex        =   18
      Top             =   120
      Width           =   735
   End
   Begin VB.Label CnfLabel 
      Caption         =   "cnf"
      Height          =   255
      Left            =   14520
      TabIndex        =   19
      Top             =   360
      Width           =   615
   End
   Begin VB.Label Label2 
      Caption         =   "Cnf"
      Height          =   255
      Left            =   13800
      TabIndex        =   15
      Top             =   360
      Width           =   375
   End
   Begin VB.Label FullnessLabel 
      Alignment       =   1  'Right Justify
      Caption         =   "Full"
      Height          =   255
      Left            =   1740
      TabIndex        =   14
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label4 
      Caption         =   "Speed"
      Height          =   255
      Left            =   11640
      TabIndex        =   13
      Top             =   2100
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "Addr"
      Height          =   255
      Left            =   13800
      TabIndex        =   6
      Top             =   120
      Width           =   495
   End
End
Attribute VB_Name = "Generator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Intelligence Generator/Detector - 2006,2008 by Gary S. Gaulin
'Adapted from:  Heiserman, D. L., How to Build Your Own Self-Programming Robot, Blue Ridge Summit, PA, TAB Books, 1979

Option Explicit    'Only tells compiler to generate an error if variable added to program code not declared below as constant or dimensioned as a type of variable like number or text string.

Const MemSize = 1024
Const VisionColor = vbCyan
Const MFcolor = &H10E010
Const MRcolor = &H1010F0
Const MScolor = &H808080
Const FeederR = 20
Const FeedersDefault = 4
Const RobotSpeed = 6
Const TrackWidth = 24
Const TrackLength = 16
Const TrackRd = 200
Const TrackGr = 200
Const TrackBl = 200
Const WallRd = 220
Const WallGr = 170
Const WallBl = 255
Const EyeSize = 8
Const EyeSpace = 0.3
Const EyesForward = 1.7
Const WallThick = 6
Const WallThick2 = WallThick * 2
Const DrainRateDefault = 0.5
Const FeedRateDefault = 0.5
Const ChaseXY = FeederR * 3
Const PI = 3.14159265358979
Const Radian = PI * 2
Const WingAngle = Radian / 6
Const WingsOut = 18
Const SpinSteps = 12
Const SpinAngle = Radian / SpinSteps
Const FieldOfView = Radian / 6

Dim AngPic
Dim CircuitR As Double
'Memory for 100 possible Food Sources
Dim FoodAt(100) As Long
'Memory for X,Y Locations of Food Sources, are not used to find feeder, is where program draws it.
Dim FoodAtX(100) As Long
Dim FoodAtY(100) As Long
Dim FeederNumberWas As Long
Dim ToF(100, 3) As Long
Dim SeF(100) As Long
Dim ClosestF, NextClosest, CloseDist As Long
Dim TwF(100) As Long
Dim TwV(100) As Long
Dim Ang(100, 1) As Double
Dim R, An, AngDiff As Double
Dim FwdWas As Long
Dim XLf, YLf, XRt, YRt, XCt, YCt As Long
Dim AngA(6), AngX(6), AngY(6), AngXmid(6), AngYmid(6) As Double
Dim StartStop As Long
Dim I, N, Tmem, Gmem, Bmem As Long
Dim Conf3 As Long
Dim Dzy, Spins As Long
Dim Fullness As Double
Dim LMF, LMR, RMF, RMR As Long
Dim RMRcolor, RMFcolor, LMRcolor, LMFcolor As Long
Dim AtF, AtFnum As Long
Dim SpRL(3) As Long
Dim Stl, Ful, Fdn, Fwd, SpL, SpR, SpT As Long
Dim SpLX, SpLY, SpRX, SpRY As Long
Dim SpLwas, SpRwas, SpTwas As Long
Dim WantsF As Long
Dim FoodSupply, FeedersOut As Long
Dim MouthX, MouthY As Long
Dim Rd, Gr, Bl, C As Long
Dim InFoodColor As Long
Dim EyeRd, EyeGr, EyeBl As Long
Dim Cf0, Cf01, Cf12, Cf23, Cf3 As Long
Dim Dist, AvDist As Double
Dim FeederNumber As Integer
Dim Feeders, F, F2 As Long
Dim Feeding As Integer
Dim FeedRate As Double
Dim DrainRate As Double
Dim ChaseXdir, ChaseYdir As Long
Dim Conf, AvConf, ConfAvgs As Double
Dim XgPix, YgPix, YgCtr As Long
Dim Ygraph(3, 10000) As Long
Dim YgScale(3) As Double
Dim XgScale, XgInc, XgStep As Double
Dim AngWas, AngLft, AngRgt, AngLR, A2 As Long
Dim S, S2 As String
Dim RobotA, RobotX, RobotY As Double
Dim RobotAsv, RobotXsv, RobotYsv As Double
Dim RobotXsv2, RobotYsv2 As Double
Dim RobotD, RobotDsv As Double
Dim BinStr, AddrStr As String
Dim DataString As String
Dim Mem(51200, 5) As Double
Dim BetaRobotMoves As Long
Dim Addr As Long
Dim X, Y, X1, Y1, X2, Y2, Xc, Yc As Double
Dim Xpix, Ypix, Xctr, Yctr As Long
Dim WallX1, WallX2, WallY1, WallY2 As Long
Dim FdrA, A, Ar, D, B As Double
Dim M, MM, MM2 As Double
Dim N2 As Double
Dim LightOnOff As Long
Dim StopProgram As Long
Dim RM, LM As Long

Private Sub CircuitScroll_Change()
  CircuitR = CircuitScroll
         Picture1.Cls
         Ang(WantsF, 0) = Ang(WantsF, 1)
    Call DrawFeeder
    Call DrawRobot
    Call DrawAnglesPicture
End Sub

Private Sub ConfAvgsScroll_Change()
    ConfAvgsLabel = 2 ^ (ConfAvgsScroll - 1)
    ConfAvgs = 2 ^ (ConfAvgsScroll - 1)
End Sub

Private Sub DocumentationCommand_Click()
  DocumentationForm.Show
End Sub

Private Sub DrainRateScroll_Change()
DrainRate = ((DrainRateScroll.Value / 100) * DrainRateDefault)
End Sub

Private Sub FeedersScroll_Change()
   Feeders = FeedersScroll.Value
   FeedersLabel = Feeders
     Call DrawFoodRandom
' Call ResetCommand_Click
End Sub

Private Sub FeedRateScroll_Change()
   FeedRate = ((FeedRateScroll.Value / 100) * FeedRateDefault)
End Sub

Private Sub FoodSupplyScroll_Change()
   FoodSupply = FoodSupplyScroll
   FoodSupplyLabel = FoodSupply
   For F = 1 To Feeders
      FoodAt(F) = FoodSupply
   Next F
End Sub

Private Sub Form_Load()
  RobotA = 0
   ShowFoodMemCheck = 0
   CircuitCheck = 0
 Call DrawAnglesPicture
   NeverFullCheck = 0
   StartStop = 1
     Xpix = Picture1.Width
     Ypix = Picture1.Height
     XgPix = Graph.Width
     YgPix = Graph.Height
     YgCtr = YgPix / 2
    FoodSupplyScroll.Min = 1
    FoodSupplyScroll.Max = 500
    FoodSupplyScroll.Value = 20
    ConfAvgsScroll.Min = 1
    ConfAvgsScroll.Max = 14
    ConfAvgsScroll.Value = 10
    CircuitScroll.Min = 30
    CircuitScroll.Max = 80
    CircuitScroll.Value = 50
    SpeedScroll.Min = 1
    SpeedScroll.Max = 1000
    SpeedScroll.Value = 16
    DrainRateScroll.Min = 1
    DrainRateScroll.Max = 200
    DrainRateScroll.Value = 50
    FeedRateScroll.Min = 1
    FeedRateScroll.Max = 200
    FeedRateScroll.Value = 100
    FeedersScroll.Min = 1
    FeedersScroll.Max = 25
    FeedersScroll.Value = FeedersDefault
     WallX1 = WallThick
     WallY1 = WallThick
     WallX2 = Xpix - WallThick
     WallY2 = Ypix - WallThick
 Call ResetCommand_Click
    UpdateTimer.Interval = 1000
    UpdateTimer.Enabled = True
    LightTimer.Interval = 500
    LightTimer.Enabled = True
    LoopTimer.Interval = 1
    LoopTimer.Enabled = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    DoEvents
    LoopTimer.Enabled = False
    LightTimer.Enabled = False
    UpdateTimer.Enabled = False
    DoEvents
End Sub

Private Sub LightTimer_Timer()
    If LightOnOff = 1 Then LightOnOff = 0 Else LightOnOff = 1
End Sub

Private Sub MoveRobot()
'Save position in case it hits Wall and must be moved back
      RobotXsv = RobotX
      RobotYsv = RobotY
      RobotAsv = RobotA
'Convert RMF,RMR and LMF,LMR 1's and 0's to 1 if Forward and -1 for Reverse
'When the some motor is going Forward and Reverse at the same time it equals 0 (stopped)
      RM = RMF - RMR
      LM = LMF - LMR
   If LM = 1 And RM = 1 Then Fwd = 1 Else Fwd = 0
   If RM = 1 And LM = 0 Then Fwd = 1
   If LM = 1 And RM = 0 Then Fwd = 1
   
   
   If FreezeCheck = 1 Then
      RobotX = Xpix / 2
      RobotY = Ypix / 2
   End If
   If RM = -1 Then
      If LM = 1 Then
         RobotA = RobotA + SpinAngle:  GoTo DoneMove
      End If
      If LM = -1 Then
         A = Radian / 2
         X = Cos(A + RobotA) * RobotSpeed
         Y = Sin(A + RobotA) * RobotSpeed
         RobotX = RobotX + X
         RobotY = RobotY + Y
         GoTo DoneMove
      End If
   End If
   
   If RM = 1 Then
      If LM = -1 Then
         RobotA = RobotA - SpinAngle:  GoTo DoneMove
      End If
      If LM = 1 Then
         A = 0
         X = Cos(A + RobotA) * RobotSpeed
         Y = Sin(A + RobotA) * RobotSpeed
         RobotX = RobotX + X
         RobotY = RobotY + Y
         GoTo DoneMove
      End If
   End If
      
   If LM = 0 And RM <> 0 Then
              A = Radian * 0.75
      X = Cos(A + RobotA) * TrackLength * 0.7
      Y = Sin(A + RobotA) * TrackLength * 0.7
      Xctr = RobotX + X
      Yctr = RobotY + Y
              A = (SpinAngle * -RM) + (Radian * 0.25)
      X = Cos(A + RobotA) * TrackLength * 0.7
      Y = Sin(A + RobotA) * TrackLength * 0.7
      RobotA = RobotA + SpinAngle * -RM
      RobotX = Xctr + X
      RobotY = Yctr + Y
      GoTo DoneMove
   End If
   
   If RM = 0 And LM <> 0 Then
              A = Radian * 0.25
      X = Cos(A + RobotA) * TrackLength * 0.7
      Y = Sin(A + RobotA) * TrackLength * 0.7
      Xctr = RobotX + X
      Yctr = RobotY + Y
              A = (SpinAngle * LM) + (Radian * 0.75)
      X = Cos(A + RobotA) * TrackLength * 0.7
      Y = Sin(A + RobotA) * TrackLength * 0.7
      RobotA = RobotA + SpinAngle * LM
      RobotX = Xctr + X
      RobotY = Yctr + Y
      GoTo DoneMove
   End If
   
DoneMove:
'Keep the robot angle within one Radian
     If RobotA > Radian Then RobotA = RobotA - Radian
     If RobotA < 0 Then RobotA = RobotA + Radian
End Sub

Sub CheckForStall()
'Check for Stalled (Against a Wall)
   If RobotX + TrackLength + WallThick2 > WallX2 Then GoTo Stalled
   If RobotX - TrackLength - WallThick2 < WallX1 Then GoTo Stalled
   If RobotY + TrackLength + WallThick2 > WallY2 Then GoTo Stalled
   If RobotY - TrackLength - WallThick2 < WallY1 Then GoTo Stalled
      Stl = 0
Exit Sub
Stalled:
      RobotX = RobotXsv
      RobotY = RobotYsv
      RobotA = RobotAsv
      Stl = 1
End Sub

Private Sub ChaseFeederCheck_Click()
    If ChaseFeederCheck = 1 Then
       FeederNumberWas = FeedersScroll    'Save the selected number of feeders to later restore
       FeederNumber = 1                   'Set number of feeders to one.
       FeedersScroll = 1
    Else
       FeedersScroll = FeederNumberWas
    End If
End Sub

'Reposition Feeder at Mouse
Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, Xm As Single, Ym As Single)
    If ChaseFeederCheck = 0 Then Exit Sub
       FoodAtX(FeederNumber) = Xm
       FoodAtY(FeederNumber) = Ym
       FoodAt(FeederNumber) = 100
End Sub

Private Sub StartCommand_Click()
        If StartStop = 0 Then
           StartStop = 1
           LoopTimer.Enabled = True
        Else
           StartStop = 0
           LoopTimer.Enabled = False
        End If
End Sub

Private Sub StepCommand_Click()
   StartStop = 0
   LoopTimer.Enabled = False
   Call LoopTimer_Timer
End Sub

Private Sub RandomAction()
'Sends Random data to Motor control.
   Randomize
'Rnd variable is random decimal point number from 0 to 1
NewRandomLM:
      LMF = Int(Rnd + 0.5)
      LMR = Int(Rnd + 0.5)
      LM = LMF - LMR
NewRandomRM:
      RMF = Int(Rnd + 0.5)
      RMR = Int(Rnd + 0.5)
      RM = RMF - RMR
End Sub

Private Function BinString(Bts, Nb) As String
    BinStr = ""
       N2 = Nb
  For B = 1 To Bts
       N2 = N2 / 2
    If N2 = Fix(N2) Then BinStr = "0 " + BinStr Else BinStr = "1 " + BinStr
       N2 = Fix(N2)
  Next B
      BinString = BinStr
End Function

Private Sub Text1_GotFocus()
   LoopTimer.Enabled = False
End Sub

Private Sub Text1_LostFocus()
   LoopTimer.Enabled = True
End Sub

Private Sub DrawRobot()
'Draw the Wing/Motors on Right Side
      Picture1.DrawWidth = TrackWidth
               A = RobotA + WingAngle
     X1 = Cos(A) * WingsOut
     Y1 = Sin(A) * WingsOut
               A = (RobotA + PI) - WingAngle
     X2 = Cos(A) * WingsOut
     Y2 = Sin(A) * WingsOut
   If RM = 0 Then RMFcolor = MScolor: RMRcolor = MScolor
   If RM = 1 Then RMFcolor = MFcolor: RMRcolor = MFcolor
   If RM = -1 Then RMFcolor = MRcolor: RMRcolor = MRcolor
      Picture1.PSet (X1 + RobotX, Y1 + RobotY), RMFcolor
      Picture1.PSet (X2 + RobotX, Y2 + RobotY), RMRcolor

'Draw the Wing/Motors on Left Side
              A = RobotA - WingAngle
     X1 = Cos(A) * WingsOut
     Y1 = Sin(A) * WingsOut
               A = (RobotA + PI) + WingAngle
     X2 = Cos(A) * WingsOut
     Y2 = Sin(A) * WingsOut
   If LM = 0 Then LMFcolor = MScolor: LMRcolor = MScolor
   If LM = 1 Then LMFcolor = MFcolor: LMRcolor = MFcolor
   If LM = -1 Then LMFcolor = MRcolor: LMRcolor = MRcolor
      Picture1.PSet (X1 + RobotX, Y1 + RobotY), LMFcolor
      Picture1.PSet (X2 + RobotX, Y2 + RobotY), LMRcolor

'Big red circle when Bumps Wall
 If Stl = 1 Then
      Picture1.DrawWidth = 20
      Picture1.Circle (RobotX, RobotY), TrackLength * 2.5, RGB(255, 0, 0)
 End If

'Draw the lines showing what the Robot can see
      Picture1.DrawWidth = 1
              A = RobotA + (FieldOfView / 2)
     X2 = Cos(A) * Xpix * 1.25
     Y2 = Sin(A) * Xpix * 1.25
          Picture1.Line (RobotX, RobotY)-(X2 + RobotX, Y2 + RobotY), VisionColor
              A = RobotA - (FieldOfView / 2)
     X2 = Cos(A) * Xpix * 1.25
     Y2 = Sin(A) * Xpix * 1.25
          Picture1.Line (RobotX, RobotY)-(X2 + RobotX, Y2 + RobotY), VisionColor
    
'Get Eye Color
  If SeF(WantsF) = 1 Then
     EyeRd = 255: EyeGr = 255: EyeBl = 255
  Else
     EyeRd = WallRd: EyeGr = WallGr: EyeBl = WallBl
  End If
     
 'Draw the body of the critter with a large circle.
          Picture1.FillStyle = 0
          Picture1.FillColor = RGB(EyeRd, EyeGr, EyeBl)
          C = ((100 - Fullness) * 7)
       If C < 0 Then C = 0
       If C > 255 Then C = 255
          Picture1.DrawWidth = 41
          Picture1.PSet (RobotX, RobotY), vbBlack
          Picture1.DrawWidth = 37
          Picture1.PSet (RobotX, RobotY), RGB(C, 255 - C, 255 - C)
          Picture1.DrawWidth = 24
          Picture1.PSet (RobotX, RobotY), RGB(EyeRd, EyeGr, EyeBl)
          
'Draw the Eyes and if pointed at Feeder then color it
          Picture1.DrawWidth = 3
          Picture1.FillStyle = 0
          Picture1.FillColor = RGB(EyeRd, EyeGr, EyeBl)
     X1 = Cos(RobotA - EyeSpace) * TrackLength * EyesForward
     Y1 = Sin(RobotA - EyeSpace) * TrackLength * EyesForward
     X2 = Cos(RobotA + EyeSpace) * TrackLength * EyesForward
     Y2 = Sin(RobotA + EyeSpace) * TrackLength * EyesForward
          Picture1.Circle (X1 + RobotX, Y1 + RobotY), EyeSize, RGB(0, 0, 0)
          Picture1.Circle (X2 + RobotX, Y2 + RobotY), EyeSize, RGB(0, 0, 0)
          Picture1.DrawWidth = 6
          Picture1.PSet (X1 + RobotX, Y1 + RobotY), RGB(255 * LightOnOff, 0, 0)
          Picture1.PSet (X2 + RobotX, Y2 + RobotY), RGB(255 * LightOnOff, 0, 0)
          Picture1.DrawWidth = 1
    If WantsF > 9 Then X = 19 Else X = 15
       Y = 9
          Picture1.PSet (RobotX - X, RobotY - Y), RGB(Rd, Gr, Bl)
          Picture1.Print Str(WantsF)
          
'If feeding draw the Mouth eating with a red spot in the middle
          Rd = EyeRd
          Gr = EyeGr
          Bl = EyeBl
    If AtF = 1 Then Picture1.DrawWidth = 22: Picture1.PSet (MouthX, MouthY), RGB(255, 0, 0)
    
    If Fdn = 1 Then
          Rd = 255: Gr = 255: Bl = 255
          Picture1.DrawWidth = 12: Picture1.PSet (MouthX, MouthY), vbWhite  'RGB(255, 0, 0)
    End If
   
'Draw the four main Walls it cannot pass through
          Picture1.FillStyle = 1
          Picture1.DrawWidth = WallThick * 2
          Picture1.Line (WallX1, WallY1)-(WallX2, WallY1), RGB(WallRd, WallGr, WallBl)
          Picture1.Line (WallX2, WallY1)-(WallX2, WallY2), RGB(WallRd, WallGr, WallBl)
          Picture1.Line (WallX2, WallY2)-(WallX1, WallY2), RGB(WallRd, WallGr, WallBl)
          Picture1.Line (WallX1, WallY2)-(WallX1, WallY1), RGB(WallRd, WallGr, WallBl)
End Sub


Private Sub DrawFeeder()
  
'Calculate MouthX, MouthY
        MouthX = RobotX + (Cos(RobotA) * TrackLength * (EyesForward / 1.8))
        MouthY = RobotY + (Sin(RobotA) * TrackLength * (EyesForward / 1.8))
  
  If ShowFoodMemCheck = 1 Then
          S = "Showing Food Sources Memory" & vbCrLf
      S = S + "-----------------------------------------" & vbCrLf
      S = S & "Fd  Amt  Ang  ToF   SeF  TwF  TwV" & vbCrLf
  End If
        AtF = 0
        AtFnum = 0
  For F = 1 To Feeders
'Calculate Angle between critter and feeder
        X = FoodAtX(F) - RobotX
        Y = FoodAtY(F) - RobotY
        A = 0
    If X <> 0 Then A = Atn(Y / X)
     If A < 0 Then A = A + (Radian / 2)
     If Y < 0 Then A = A + (Radian / 2)
                   A = RobotA - A
        An = A + (Radian / 6 / 2)
     If A < 0 Then A = -A
     If A > Radian / 2 Then A = Radian - A
     If A < 0 Then A = -A
     If An > Radian Then An = An - Radian
     If An < 0 Then An = An + Radian
                         Ang(F, 1) = Ang(F, 0)
                         Ang(F, 0) = Fix(An / (Radian / 6))
     If FoodAt(F) = 0 Or Ang(F, 0) <> 0 Then SeF(F) = 0 Else SeF(F) = 1
'Calculate change in closeness, such as could be derived by brightness change of feeder light.
         ToF(F, 3) = ToF(F, 2)
         ToF(F, 2) = ToF(F, 1)
         ToF(F, 1) = ToF(F, 0)
         ToF(F, 0) = Sqr(((RobotX - FoodAtX(F)) ^ 2) + ((RobotY - FoodAtY(F)) ^ 2))
         TwV(F) = (ToF(F, 0) - ToF(F, 1))
         TwF(F) = 0
      If TwV(F) < -2 And FoodAt(F) > 0 Then TwF(F) = 1

'Check to see if MOUTH is at Feeder
       X = MouthX - FoodAtX(F)
       Y = MouthY - FoodAtY(F)
    If X < 0 Then X = -X
    If Y < 0 Then Y = -Y
    If X < FeederR And Y < FeederR Then
           AtFnum = F
           AtF = 1
    End If
'Draw the feeder on the screen
      Picture1.DrawWidth = 2
      Picture1.FillStyle = 0
      C = 127 * (F / Feeders)
      Rd = 128
      Gr = 255 - C
      Bl = C + 128
      If SeF(F) = 1 Then Rd = 255: Gr = 255: Bl = 0
      If WantsF = F Then Rd = 255: Gr = 250: Bl = 250
      Picture1.FillColor = RGB(Rd, Gr, Bl)
      Picture1.Circle (FoodAtX(F), FoodAtY(F)), FeederR, RGB(0, 0, 0)
      Picture1.Print " "; F
      Picture1.FillStyle = 1
      B = 255 * (FoodAt(F) / FoodSupply)
      If B < 0 Then B = 0
  If LightOnOff = 0 Then
      Rd = B
      Gr = B
      Bl = 0
  Else
      Rd = B
      Gr = 0
      Bl = 0
  End If
         Picture1.DrawWidth = 24
         Picture1.PSet (FoodAtX(F), FoodAtY(F)), RGB(Rd, Gr, Bl)
   If FoodAt(F) > 0 And FoodAt(F) < FoodSupply Then
         Picture1.DrawWidth = 1
      If RobotY - FoodAtY(F) > 0 Then
         Picture1.PSet (FoodAtX(F) - 15, FoodAtY(F) - 42), vbWhite
      Else
         Picture1.PSet (FoodAtX(F) - 15, FoodAtY(F) + 26), vbWhite
      End If
         Picture1.Print Format(FoodAt(F), "000")
   End If
EndDraw:
      If ShowFoodMemCheck = 1 Then S = S & Format(F, "00") & "  " & Format(FoodAt(F), "000") & "  " & Format(Ang(F, 0), "00") & "   " & Format(ToF(F, 0), "000") & "   " & SeF(F) & "    " & TwF(F) & "   " & Str(TwV(F)) & vbCrLf
  Next F
        If ShowFoodMemCheck = 1 Then Text1.Text = S
        AtFCheck = AtF
End Sub

Private Sub ResetCommand_Click()
        LoopTimer.Enabled = False
  Erase Mem      'This wipes out its mind, brain at starting state when born.
        Text1 = ""
   Randomize
  Erase ToF
   Age = 0
   AvConf = 1
   FeedersOut = 0
     Call DrawFoodRandom
                      WantsF = Fix(Feeders / 2) + 1
     RobotX = FoodAtX(WantsF)
     RobotY = FoodAtY(WantsF)
     RobotA = Radian * Rnd
     RobotDsv = FeederR
   Stl = 0
   AtFnum = 0
   Ful = 0
   Fullness = 90
'Initialize Graphs
      XgScale = 1
  Call ClearGraph
      YgScale(0) = YgPix / 300
      YgScale(1) = YgPix / 3
      YgScale(2) = YgPix / 200
      XgInc = 0
      Ygraph(0, 0) = YgPix * 0.66666666
      Ygraph(1, 0) = YgPix * 0.66666666
      Ygraph(2, 0) = YgPix
   LoopTimer.Enabled = True
End Sub

Private Sub DrawGraphSmall()
          XgInc = XgInc + XgScale
       If XgInc > XgPix - 2 Then Call ClearGraph: Call ShrinkGraph
   If Fix(XgInc) <> Fix(XgInc - XgScale) Then
       
       Ygraph(0, XgInc) = ((300 - Fullness) * YgScale(0))
       Ygraph(1, XgInc) = ((3 - AvConf) * YgScale(1))
       Ygraph(2, XgInc) = ((200 - (Conf3 * 0.66)) * YgScale(2))
    If Ygraph(2, XgInc) < 0 Then Ygraph(2, XgInc) = 0
       
       Graph.Line ((XgInc - 1), Ygraph(0, XgInc - 1))-(XgInc, Ygraph(0, XgInc)), RGB(255, 0, 0)
       Graph.Line ((XgInc - 1), Ygraph(1, XgInc - 1))-(XgInc, Ygraph(1, XgInc)), RGB(255, 0, 255)
       Graph.Line ((XgInc - 1), Ygraph(2, XgInc - 1))-(XgInc, Ygraph(2, XgInc)), RGB(0, 100, 255)
   End If
End Sub

Private Sub ClearGraph()
         Graph.Cls
         Graph.Print "Red = 0-300% Full,  Violet = 0-3 Av. Confidence,  Blue = 0-300 Conf 3's in Memory"
         Graph.Line (0, YgPix * 0.33333333)-(XgPix, YgPix * 0.33333333), RGB(0, 255, 0)
         Graph.Line (0, YgPix * 0.66666666)-(XgPix, YgPix * 0.66666666), RGB(0, 255, 0)
End Sub

Private Sub ShrinkGraph()
       XgScale = XgScale / 2
  For X = 1 To XgInc + 1
       Ygraph(0, X / 2) = Ygraph(0, X)
       Ygraph(1, X / 2) = Ygraph(1, X)
       Ygraph(2, X / 2) = Ygraph(2, X)
  Next X
       XgInc = XgInc / 2
  For X = 1 To XgInc - 1
         Graph.Line (X - 1, Ygraph(0, X - 1))-(X, Ygraph(0, X)), RGB(255, 0, 0)
         Graph.Line (X - 1, Ygraph(1, X - 1))-(X, Ygraph(1, X)), RGB(255, 0, 255)
         Graph.Line (X - 1, Ygraph(2, X - 1))-(X, Ygraph(2, X)), RGB(0, 100, 255)
  Next X
  
End Sub

Private Sub UpdateTimer_Timer()
'Find Confidence 3's
      Conf3 = 0
      Tmem = 0
      Gmem = 0
      Bmem = 0
      MM2 = MemSize * 6
  For MM = 0 To MM2
    If Mem(MM, 5) = 1 Then
       Tmem = Tmem + 1
       If Mem(MM, 0) = 3 Then Conf3 = Conf3 + 1
       If Mem(MM, 4) = 0 Then Bmem = Bmem + 1
       If Mem(MM, 4) >= 1 Then Gmem = Gmem + 1
    End If
  Next MM
  TotalMemories = Tmem
  GoodMemories = Gmem
  BadMemories = Bmem
  Conf3sLabel = Conf3
End Sub

Private Sub FindClosest()
   FeedersOut = 0
   CloseDist = 10000000
   ClosestF = 0
   For I = 1 To Feeders
       If FoodAt(I) = 0 Then FeedersOut = FeedersOut + 1
       If ToF(I, 0) < CloseDist And FoodAt(I) > 0 Then CloseDist = ToF(I, 0): ClosestF = I
   Next I
     FeedersOutLabel = FeedersOut
     FeedersLeftLabel = Feeders - FeedersOut
  If Val(FeedersLeftLabel) = 0 Then Call DrawFoodRandom: Call FindClosest: WantsF = ClosestF
End Sub


Private Sub ShowMemCommand_Click()
   ShowFoodMemCheck = 0
       S = "Main Memory of Intelligence Generator" & vbCrLf
       S = S & Date & "  " & Time & vbCrLf
       S = S & "-----------------------------------------------" & vbCrLf
       S = S & "           ADDRESS                  DATA " & vbCrLf
       
       S = S & "-----------------------------------------------" & vbCrLf
       S = S & "       An  Tf  Fd  St   RF  LF      RF  LF" & vbCrLf
       S = S & "Addr     Sf  Sp  Fu   RR  LR      RR  LR   Cf" & vbCrLf
       Cf0 = 0
       Cf01 = 0
       Cf12 = 0
       Cf23 = 0
       Cf3 = 0
      
      MM2 = MemSize * 6
  For N = 0 To MM2
    If Mem(N, 0) + Mem(N, 1) + Mem(N, 2) + Mem(N, 3) + Mem(N, 4) > 0 Then
       If Mem(N, 0) = 0 Then Cf0 = Cf0 + 1
       If Mem(N, 0) > 0 And Mem(N, 0) < 1 Then Cf01 = Cf01 + 1
       If Mem(N, 0) >= 1 And Mem(N, 0) < 2 Then Cf12 = Cf12 + 1
       If Mem(N, 0) >= 2 And Mem(N, 0) < 3 Then Cf23 = Cf23 + 1
       If Mem(N, 0) = 3 Then Cf3 = Cf3 + 1
       S2 = Mem(N, 4) & " " & Mem(N, 3) & " " & Mem(N, 2) & " " & Mem(N, 1) & "  " & Mem(N, 0) & vbCrLf
       S2 = BinString(4, N) & "    " & S2
       M = Fix(N / 16)
       S2 = Format(N, "00000") & "  " & Fix(N / (MemSize)) & " " & BinString(6, M) & " " & S2
       S = S & S2
    End If
  Next N
       S = S & "-----------------------------------------------" & vbCrLf
       S = S & "Conf 3     " & Cf3 & vbCrLf
       S = S & "Conf 2 <3  " & Cf23 & vbCrLf
       S = S & "Conf 1 <2  " & Cf12 & vbCrLf
       S = S & "Conf   <1  " & Cf01 & vbCrLf
       S = S & "Conf 0     " & Cf0 & vbCrLf
       S = S & "-----------------------------------------------" & vbCrLf
       
       Text1 = S
End Sub

Private Sub DrawFoodRandom()
   For F = 1 To Feeders
         FoodAt(F) = FoodSupply
   Next F
   If KeepSameCheck = 1 Then Exit Sub
   For F = 1 To Feeders
       F2 = 1
NewRandom:
         FoodAtX(F) = ((Xpix * 0.8) * Rnd) + (Xpix * 0.1)
         FoodAtY(F) = ((Ypix * 0.7) * Rnd) + (Ypix * 0.15)
CheckForOnTop:
         N = Fix(Sqr(((FoodAtX(F) - FoodAtX(F2)) ^ 2) + ((FoodAtY(F) - FoodAtY(F2)) ^ 2)))
      If F <> F2 Then
         If N < (FeederR * 2) Then F2 = 1: GoTo NewRandom
      End If
      If F2 < F Then F2 = F2 + 1: GoTo CheckForOnTop
   Next F
         Call DrawFeeder
         FeedersOut = 0
End Sub

Private Sub RunMotors()
        Age = Age + 1
        FwdWas = Fwd
   Call MoveRobot
   Call FindClosest
        Picture1.Cls
        Picture1.CurrentX = 16
        Picture1.CurrentY = 12
 If Fdn = 0 Then
   If Fullness > 200 Then
      Picture1.Print " Over Full"
   Else
      If Ful = 0 Then Picture1.Print "Hungry" Else Picture1.Print "Not Hungry"
   End If
 Else
   Picture1.Print "Feeding"
 End If
        Picture1.CurrentX = 16
 If Stl = 1 Then Picture1.Print "OUCH!!"
   Call DrawFeeder
'Save the 6 positions for hexagonal angle memory.
     I = -1
  For A = 0 To Radian + (Radian / 6 / 2) + 0.001 Step Radian / 6
     I = I + 1
''Draw corners of hexagonal.
     X = Xc + (Cos((A - RobotA) - (Radian / 6 / 2)) * R)
     Y = Yc - (Sin((A - RobotA) - (Radian / 6 / 2)) * R)
     AngA(I) = A - RobotA
     AngX(I) = X
     AngY(I) = Y
     X = Xc - 6 + (Cos(A - RobotA) * R * 1.1)
     Y = Yc - (Sin(A - RobotA) * R * 1.1) - 8
     AngXmid(I) = X
     AngYmid(I) = Y
  Next A

'Check to see if the Angle moved towards 0
                                                      SpLwas = SpL
                                                      SpRwas = SpR
                                                      SpTwas = SpT
                                                      SpL = 0
                                                      SpR = 0
                                                      SpT = 0
                              AngDiff = Ang(WantsF, 1) - Ang(WantsF, 0)
    If Ang(WantsF, 0) = 2 And Ang(WantsF, 1) = 3 Then SpT = 1: SpL = 1
    If Ang(WantsF, 0) = 1 And Ang(WantsF, 1) = 2 Then SpT = 1: SpL = 1
    If Ang(WantsF, 0) = 0 And Ang(WantsF, 1) = 1 Then SpT = 1: SpL = 1
    If Ang(WantsF, 0) = 0 And Ang(WantsF, 1) = 5 Then SpT = 1: SpR = 1
    If Ang(WantsF, 0) = 5 And Ang(WantsF, 1) = 4 Then SpT = 1: SpR = 1
    If Ang(WantsF, 0) = 4 And Ang(WantsF, 1) = 3 Then SpT = 1: SpR = 1
                                           SpTCheck = SpT

    If AtF = 1 Then
       If FoodAt(AtFnum) > 0 Then
              Fdn = 1
          If Val(Fullness) < 90 Then Fullness = 90
              FoodAt(AtFnum) = FoodAt(AtFnum) - 1
          If FoodAt(AtFnum) < 0 Then FoodAt(AtFnum) = 0
              Fullness = Fullness + FeedRate + DrainRate
              FullnessLabel = Fix(Fullness)
       Else
              Fdn = 0
       End If
    Else
              Fdn = 0
    End If
              Fullness = Val(Fullness) - DrainRate
  
  If NeverFullCheck = 1 Then
     If Fullness > 99 Then Fullness = 99
  End If

    If Val(Fullness) < 100 Then Ful = 0 Else Ful = 1
                          
                           Call CheckForStall
                           Call DrawRobot
                           Call DrawGraphSmall
  If CircuitCheck = 1 Then Call DrawAnglesPicture
        AvConf = (AvConf * (1 - (1 / ConfAvgs))) + (Mem(Addr, 0) * (1 / ConfAvgs))
End Sub

Private Sub ShowSettings()
        FullnessLabel = Fix(Fullness)
        AddressLabel = Addr
        AvCnfLabel = Format(AvConf, "0.0000")
        CnfLabel = Mem(Addr, 0)
           LMFcheck = LMF
           LMRcheck = LMR
           RMFcheck = RMF
           RMRcheck = RMR
           StlCheck = Stl
           FulCheck = Ful
           FdnCheck = Fdn
           TwFCheck = TwF(WantsF)
           SeFCheck = SeF(WantsF)
           SpLcheck = SpL
           SpRcheck = SpR
           Angle0Label = Ang(WantsF, 0)
           AtFCheck = AtF
           FwdCheck = Fwd
End Sub

Private Sub DrawAnglesPicture()
'Draws the 6 Neuron Ring into picture so it can be seen functioning.
'SpL is active when Spinning Left
'SpR is active when Spinning Right
'SpT becomes active when Spinning Towards direction object of interest (shown with blue pointer).
'Ang is relative to where it wants to go.  Ang 0 is when destination is straight ahead.
'What is in the ring at the time, more or less determines what direction it wants to go.
    If CircuitCheck = 0 Then Exit Sub
   Set AngPic = Picture1
        Xc = RobotX
        Yc = RobotY
       AngPic.PSet (Xc, Yc), vbBlue
    
   R = CircuitR
    SpLX = Xc
    SpLY = Yc + (R * 3)
    SpRX = Xc
    SpRY = Yc - (R * 3)
  
  For I = 0 To 5
'Draw corners of hexagonal.
    AngPic.DrawWidth = 10
    AngPic.PSet (AngX(I), AngY(I)), vbBlack
'Print the Number of the Angle 0-5 on screen
    AngPic.DrawWidth = 1
    AngPic.PSet (AngXmid(I), AngYmid(I)), vbWhite
    AngPic.Print Format(I)
  Next I
      
'Locate two outerpoints for connections, a Left side on the 1-3 side and right is 5-3.
     XLf = Xc + (Cos(RobotA - (Radian / 4)) * R * 2.5)
     YLf = Yc + (Sin(RobotA - (Radian / 4)) * R * 2.5)
     XRt = Xc + (Cos(RobotA + (Radian / 4)) * R * 2.5)
     YRt = Yc + (Sin(RobotA + (Radian / 4)) * R * 2.5)
     
     XCt = Xc + (Cos(RobotA + (Radian / 2)) * R * 2.2)
     YCt = Yc + (Sin(RobotA + (Radian / 2)) * R * 2.2)
                                                                                                            
'Draw Connections
       AngPic.DrawWidth = 1
       AngPic.Line (AngX(1), AngY(1))-(XLf, YLf), vbBlack
       AngPic.Line (AngX(2), AngY(2))-(XLf, YLf), vbBlack
       AngPic.Line (AngX(3), AngY(3))-(XLf, YLf), vbBlack
       AngPic.Line (AngX(4), AngY(4))-(XRt, YRt), vbBlack
       AngPic.Line (AngX(5), AngY(5))-(XRt, YRt), vbBlack
       AngPic.Line (AngX(0), AngY(0))-(XRt, YRt), vbBlack
       AngPic.DrawWidth = 16
       AngPic.PSet (XCt, YCt), vbBlack
'Draw the back connections
    If SpL = 1 Then X1 = AngX(3): Y1 = AngY(3): X2 = XLf: Y2 = YLf
    If SpL = 1 Then X1 = AngX(0): Y1 = AngY(0): X2 = XRt: Y2 = YRt
    If SpT = 0 Then C = vbBlack Else C = vbRed
    
       AngPic.DrawWidth = 12
       AngPic.PSet (XLf, YLf), vbBlack
       AngPic.Print "  SpL"
       AngPic.PSet (XRt, YRt), vbBlack
       AngPic.Print "  SpR"
       AngPic.PSet (XCt, YCt), vbBlack
       AngPic.Print "  SpT"
       AngPic.DrawWidth = 1
       AngPic.Line (XCt, YCt)-(XRt, YRt), vbBlack
       AngPic.Line (XCt, YCt)-(XLf, YLf), vbBlack
       AngPic.DrawWidth = 7
           C = vbBlack
    If SpR = 1 Then
           C = vbRed
       AngPic.Line (XCt, YCt)-(XRt, YRt), vbRed
       AngPic.Line (AngX(Ang(WantsF, 0)), AngY(Ang(WantsF, 0)))-(XRt, YRt), vbRed
       AngPic.DrawWidth = 5
       AngPic.Circle (XRt, YRt), R / 2.7, vbRed
       AngPic.Circle (XCt, YCt), R / 2.7, vbRed
       AngPic.DrawWidth = 16
       AngPic.PSet (XRt, YRt), vbRed
       AngPic.PSet (XCt, YCt), vbRed
       AngPic.DrawWidth = 20
       AngPic.PSet (AngX(Ang(WantsF, 0)), AngY(Ang(WantsF, 0))), vbRed
    End If
    If SpL = 1 Then
           C = vbRed
       AngPic.Line (XCt, YCt)-(XLf, YLf), vbRed
       AngPic.Line (AngX(Ang(WantsF, 1)), AngY(Ang(WantsF, 1)))-(XLf, YLf), vbRed
       AngPic.DrawWidth = 5
       AngPic.Circle (XLf, YLf), R / 2.7, vbRed
       AngPic.Circle (XCt, YCt), R / 2.7, vbRed
       AngPic.DrawWidth = 16
       AngPic.PSet (XLf, YLf), vbRed
       AngPic.PSet (XCt, YCt), vbRed
       AngPic.DrawWidth = 20
       AngPic.PSet (AngX(Ang(WantsF, 1)), AngY(Ang(WantsF, 1))), vbRed
    End If
'Draw lines to show hexagonal.
   For I = 0 To 5
       AngPic.DrawWidth = 1
       AngPic.Line (AngX(I), AngY(I))-(AngX(I + 1), AngY(I + 1)), vbBlack  '''RGB(200, 200, 0)
   Next I
'Draw rays showing field of vision
       AngPic.DrawWidth = 1
     X = Xc + (Cos(AngA(0) - (Radian / 12)) * Yc)
     Y = Yc - (Sin(AngA(0) - (Radian / 12)) * Yc)
       AngPic.Line (Xc, Yc)-(X, Y), VisionColor
     X = Xc + (Cos(AngA(1) - (Radian / 12)) * Yc)
     Y = Yc - (Sin(AngA(1) - (Radian / 12)) * Yc)
       AngPic.Line (Xc, Yc)-(X, Y), VisionColor
'Draw Angle pointer.
     A = (Radian * (Ang(WantsF, 0)) / 6)
     X = Xc + (Cos(A - RobotA) * R * 0.8)
     Y = Yc - (Sin(A - RobotA) * R * 0.8)
       AngPic.DrawWidth = 14
       AngPic.Line (Xc, Yc)-(X, Y), vbWhite
       AngPic.DrawWidth = 8
       AngPic.Line (Xc, Yc)-(X, Y), vbBlue
'Draw highlights of moving pointer
       AngPic.DrawWidth = 1
   If SpT = 1 Then
   If SpR = 1 Then D = -(Radian / 24) Else D = (Radian / 24)
     For I = 1 To 4
       A = A + D
       X = Xc + (Cos(A - RobotA) * R * 0.84)
       Y = Yc - (Sin(A - RobotA) * R * 0.84)
       AngPic.DrawWidth = 6 - (I + 1)
       AngPic.Line (Xc, Yc)-(X, Y), RGB(255, 0, 255)
     Next I
   End If
       AngPic.Refresh
       AngPic.DrawWidth = 10
       AngPic.PSet (Xc, Yc), vbBlack
End Sub


'Intelligence Generating Loop
'This is all there is to the actual loop that generates the intellignce.
'The "Speed" timer sets the interval at which the below subroutine is repeatedly called.
Private Sub LoopTimer_Timer()
   Call ShowSettings
'Make the closest feeder the one Ring Memory "sees"
      WantsF = ClosestF
'Run the motors for a very short amount of time.  One frame.
      Call RunMotors
'Behavior is described by the following If..Then.. statements that change current +-Confidence in actions.
         Conf = -1                    'Decrement memory confidence unless set otherwise.
   If Ful = 0 Then                    'If Ful=0 then it's hungry, Ful=1 when hungry.
      If SeF(WantsF) = 0 And SpT = 1 And Fwd = 1 Then Conf = 1          'Spinning Towards food it can't see increases confidence.
      If SeF(WantsF) = 1 And TwF(WantsF) = 1 And Fwd = 1 Then Conf = 1
   Else
         Conf = 1                     'When Not Hungry (Ful=1) it can be more confident in actions.
   End If
      If Fdn = 1 Then Conf = 1        'If now feeding then confidence in last action increases.
      If Stl = 1 Then Conf = -3       'Hit the wall and is stalled out, no confidence at all remains.
'Adjust Memory Confidence, making sure it stays between 0 to 3.
                            Mem(Addr, 0) = Mem(Addr, 0) + Conf
   If Mem(Addr, 0) > 3 Then Mem(Addr, 0) = 3
   If Mem(Addr, 0) < 0 Then Mem(Addr, 0) = 0
'Sense Environment by combining input sensors into a unique binary type Address to describe it.
'You can experiment with what is remembered this way.  Add a "* 2048" addition to Addr value for larger memory.
'Or put a comment character "'" in front of any of the following to cancel the sense from being saved in main memory.
                                Addr = LMF + (LMR * 2) + (RMF * 4) + (RMR * 8)  'Motor Settings
                                Addr = Addr + (Stl * 16)                'Stall = 1 if hits wall
                                Addr = Addr + (Ful * 32)                'Full = 1 if fed, not hungry.
                                Addr = Addr + (Fwd * 64)                'Forward
                                Addr = Addr + (SeF(WantsF) * 128)       'Sees/smells Food
                                Addr = Addr + (TwF(WantsF) * 256)       'Towards (closer to) feeder.
                                Addr = Addr + (SpT * 512)               'Spin Towards feeder
                                Addr = Addr + (Ang(WantsF, 0) * 1024)   '6 Neuron Ring Angle of feeder.
'Retreive new Motor settings from Memory (Output Action)
                      LMF = Mem(Addr, 1)
                      LMR = Mem(Addr, 2)
                      RMF = Mem(Addr, 3)
                      RMR = Mem(Addr, 4)
'Or if Conf = 0 then take a guess what to do next by loading random motor settings.
   If Mem(Addr, 0) = 0 Then Mem(Addr, 0) = 1: Call RandomAction
                            Mem(Addr, 1) = LMF
                            Mem(Addr, 2) = LMR
                            Mem(Addr, 3) = RMF
                            Mem(Addr, 4) = RMR
                            Mem(Addr, 5) = 1
End Sub


