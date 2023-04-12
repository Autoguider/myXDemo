 $regfile = "m328pdef.dat"                                   ' ATMega328p
$crystal = 12288000                                         ' 12,288 MHz

$hwstack = 90                                               ' default use 32 for the hardware stack
$swstack = 60                                               ' default use 10 for the SW stack
$framesize = 40
$baud = 19200

Dim Bb,bbb,J  As Byte , I As Integer , S As String *10        'dim used variables
Dim S_Container(10) as byte at S Overlay


Declare Sub Teststr(byval b As Byte , BYVAL Dl() As String)


S = "1234"
bbb =1
goto main

Sub Teststr(byval b As Byte ,BYref Dl() As String)


 Dl(b) = Dl(b) + "add"     'works

 'printbin D1(1)     'not working
 'printbin D1(1)     'not working
 'printbin D1        'not working

 'for j=1 to 4
 'printbin D1(j)
 'next

 print D1(1)
 b=b+1
End Sub


main:

for i=1 to 120
Bb = Bb +1
call Teststr(1,S())

next i
:end