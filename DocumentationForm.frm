VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form DocumentationForm 
   AutoRedraw      =   -1  'True
   Caption         =   "Documentation"
   ClientHeight    =   7680
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11475
   LinkTopic       =   "Form1"
   ScaleHeight     =   7680
   ScaleWidth      =   11475
   StartUpPosition =   2  'CenterScreen
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   7515
      Left            =   60
      TabIndex        =   0
      Top             =   60
      Width           =   11355
      _ExtentX        =   20029
      _ExtentY        =   13256
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"DocumentationForm.frx":0000
   End
End
Attribute VB_Name = "DocumentationForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
   RichTextBox1.LoadFile App.Path & "\IntelligenceGenerator.rtf"
   DoEvents
   Me.Show
End Sub

