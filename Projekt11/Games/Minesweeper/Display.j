.class public Display
.super java/lang/Object
.method public static drawBackground()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 0
whileL1:
iload 0
bipush 16
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
iconst_0
istore 1
whileL3:
iload 1
bipush 32
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
iload 0
iload 1
invokestatic Display.drawDitherTile(II)V
iload 1
iconst_1
iadd
istore 1
goto whileL3
whileL2:
iload 0
iconst_1
iadd
istore 0
goto whileL1
whileL0:
return
.end method
.method public static drawInitialTilemap()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
iconst_1
invokestatic OS/Screen.setColor(Z)V
bipush 12
bipush 12
sipush 227
sipush 227
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
istore 0
whileL5:
iload 0
bipush 14
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq whileL4
iconst_1
istore 1
whileL7:
iload 1
bipush 14
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL6
iload 0
iload 1
invokestatic Display.drawBasicTile(II)V
iload 1
iconst_1
iadd
istore 1
goto whileL7
whileL6:
iload 0
iconst_1
iadd
istore 0
goto whileL5
whileL4:
return
.end method
.method public static drawControls()V
.limit stack 10
.limit locals 0
iconst_1
invokestatic OS/Screen.setColor(Z)V
bipush 12
sipush 230
sipush 499
sipush 255
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
bipush 13
sipush 231
sipush 498
sipush 254
invokestatic OS/Screen.drawRectangle(IIII)V
bipush 21
iconst_2
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 23
invokespecial OS/String.<init>(I)V
bipush 113
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 113
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 124
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 22
iconst_2
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 55
invokespecial OS/String.<init>(I)V
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 109
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 124
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 44
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 124
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 102
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
return
.end method
.method public static drawSideMenu()V
.limit stack 10
.limit locals 0
iconst_1
invokestatic OS/Screen.setColor(Z)V
sipush 230
bipush 12
sipush 499
sipush 227
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_0
invokestatic OS/Screen.setColor(Z)V
sipush 235
bipush 17
sipush 494
sipush 222
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public static clearSideMenu()V
.limit stack 10
.limit locals 0
iconst_0
invokestatic OS/Screen.setColor(Z)V
sipush 235
bipush 17
sipush 494
sipush 222
invokestatic OS/Screen.drawRectangle(IIII)V
return
.end method
.method public static showStartingScreen()I
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 1
invokestatic Display.clearSideMenu()V
bipush 8
bipush 32
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 28
invokespecial OS/String.<init>(I)V
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 77
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 119
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 10
bipush 33
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 26
invokespecial OS/String.<init>(I)V
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 91
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 75
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 93
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 11
bipush 33
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 26
invokespecial OS/String.<init>(I)V
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 91
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 93
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
whileL9:
iload 0
iconst_0
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq whileL8
iload 1
iconst_1
iadd
istore 1
invokestatic OS/Keyboard.keyPressed()C
istore 0
goto whileL9
whileL8:
whileL11:
iload 0
iconst_0
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq whileL10
invokestatic OS/Keyboard.keyPressed()C
istore 0
goto whileL11
whileL10:
iload 1
ireturn
.end method
.method public static showLoosingScreen()I
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 1
iconst_0
istore 0
invokestatic Display.clearSideMenu()V
bipush 8
bipush 32
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 28
invokespecial OS/String.<init>(I)V
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 87
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 79
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 77
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 87
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 79
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 77
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 33
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 10
bipush 33
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 26
invokespecial OS/String.<init>(I)V
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 91
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 75
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 93
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 11
bipush 33
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 26
invokespecial OS/String.<init>(I)V
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 91
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 93
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
whileL13:
iload 0
iconst_0
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq whileL12
iload 1
iconst_1
iadd
istore 1
invokestatic OS/Keyboard.keyPressed()C
istore 0
goto whileL13
whileL12:
whileL15:
iload 0
iconst_0
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq whileL14
invokestatic OS/Keyboard.keyPressed()C
istore 0
goto whileL15
whileL14:
iload 1
ireturn
.end method
.method public static showWinningScreen()I
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 1
iconst_0
istore 0
invokestatic Display.clearSideMenu()V
bipush 8
bipush 32
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 28
invokespecial OS/String.<init>(I)V
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 89
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 68
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 61
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 10
bipush 33
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 26
invokespecial OS/String.<init>(I)V
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 91
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 80
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 75
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 93
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 11
bipush 33
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 26
invokespecial OS/String.<init>(I)V
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 91
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 112
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 121
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 93
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 45
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
whileL17:
iload 0
iconst_0
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq whileL16
iload 1
iconst_1
iadd
istore 1
invokestatic OS/Keyboard.keyPressed()C
istore 0
goto whileL17
whileL16:
whileL19:
iload 0
iconst_0
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq whileL18
invokestatic OS/Keyboard.keyPressed()C
istore 0
goto whileL19
whileL18:
iload 1
ireturn
.end method
.method public static drawGameScreen(I)V
.limit stack 10
.limit locals 1
invokestatic Display.clearSideMenu()V
iconst_1
invokestatic OS/Screen.setColor(Z)V
sipush 240
bipush 32
sipush 256
bipush 48
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_3
bipush 35
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 20
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 98
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 104
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 67
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 117
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iconst_5
bipush 35
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 6
invokespecial OS/String.<init>(I)V
bipush 77
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 110
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 7
bipush 35
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 10
invokespecial OS/String.<init>(I)V
bipush 70
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 103
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 116
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
bipush 9
bipush 35
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 15
invokespecial OS/String.<init>(I)V
bipush 84
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 105
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 115
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 118
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 97
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 108
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 100
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
iconst_5
bipush 30
invokestatic OS/Output.moveCursor(II)V
iload 0
invokestatic OS/Output.printInt(I)V
bipush 7
bipush 30
invokestatic OS/Output.moveCursor(II)V
iconst_0
invokestatic OS/Output.printInt(I)V
bipush 9
bipush 30
invokestatic OS/Output.moveCursor(II)V
iconst_0
invokestatic OS/Output.printInt(I)V
return
.end method
.method public static drawCorrespondingTileAt(III)V
.limit stack 10
.limit locals 3
iload 2
bipush 10
if_icmpge jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL20
iload 0
iload 1
invokestatic Display.drawBasicTile(II)V
goto ifL21
ifL20:
iload 2
bipush 20
if_icmpge jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL22
iload 0
iload 1
invokestatic Display.drawFlagTile(II)V
goto ifL23
ifL22:
iload 2
bipush 20
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL24
iload 0
iload 1
invokestatic Display.drawEmptyTile(II)V
goto ifL25
ifL24:
iload 2
bipush 21
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL26
iload 0
iload 1
invokestatic Display.draw1Tile(II)V
goto ifL27
ifL26:
iload 2
bipush 22
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL28
iload 0
iload 1
invokestatic Display.draw2Tile(II)V
goto ifL29
ifL28:
iload 2
bipush 23
if_icmpne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq ifL30
iload 0
iload 1
invokestatic Display.draw3Tile(II)V
goto ifL31
ifL30:
iload 2
bipush 24
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq ifL32
iload 0
iload 1
invokestatic Display.draw4Tile(II)V
goto ifL33
ifL32:
iload 2
bipush 25
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL34
iload 0
iload 1
invokestatic Display.draw5Tile(II)V
goto ifL35
ifL34:
iload 2
bipush 26
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifeq ifL36
iload 0
iload 1
invokestatic Display.draw6Tile(II)V
goto ifL37
ifL36:
iload 2
bipush 27
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifeq ifL38
iload 0
iload 1
invokestatic Display.draw7Tile(II)V
goto ifL39
ifL38:
iload 2
bipush 28
if_icmpne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ifeq ifL40
iload 0
iload 1
invokestatic Display.draw8Tile(II)V
goto ifL41
ifL40:
iload 2
bipush 29
if_icmpne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ifeq ifL42
iload 0
iload 1
invokestatic Display.drawMineTile(II)V
goto ifL43
ifL42:
ifL43:
ifL41:
ifL39:
ifL37:
ifL35:
ifL33:
ifL31:
ifL29:
ifL27:
ifL25:
ifL23:
ifL21:
return
.end method
.method public static drawCorrespondingCursorAt(III)V
.limit stack 10
.limit locals 3
iload 2
bipush 20
if_icmpge jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
ifeq ifL44
iload 0
iload 1
invokestatic Display.drawCursorBasicTile(II)V
goto ifL45
ifL44:
iload 0
iload 1
invokestatic Display.drawCursorEmptyTile(II)V
ifL45:
return
.end method
.method public static drawArrowDownTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_0
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 960
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 832
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 15196
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 14196
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 13156
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 6152
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 3088
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 1568
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 832
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 384
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
iconst_0
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawArrowRightTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 4040
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 4024
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 3944
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 3792
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 3522
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 3070
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 2498
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 3266
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 3696
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 3896
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 3976
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 4040
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawLeftEdgeTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
sipush 1366
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
sipush 2731
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawTopEdgeTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawDitherTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
sipush 21846
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
sipush 21845
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawBasicTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 32767
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 32767
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 12295
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 16383
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 16383
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
bipush 7
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawFlagTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 32767
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 32767
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 12295
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 14839
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 14967
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 15255
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 15159
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 14583
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 15351
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 15351
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 8447
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 16383
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
bipush 7
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawEmptyTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawMineTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 257
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 9545
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 5009
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 3809
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 12073
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 8113
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 30685
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 8177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 11241
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 3809
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 5009
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 9545
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
sipush 257
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw1Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 1921
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 1137
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 1033
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 1145
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 7281
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 8201
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 16377
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw2Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 1985
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 6193
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 8201
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 8649
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 8777
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 4401
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 2177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 1121
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 6161
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 8201
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 16377
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw3Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 4065
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 4113
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 9097
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 9289
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 10033
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 4353
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 10033
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 9289
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 9097
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 4113
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 4065
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw4Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 3585
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 2433
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 2113
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 2849
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 2705
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 7049
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 8201
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 14585
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 2177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 2177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 3969
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw5Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 8177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 8201
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 16265
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 137
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 3849
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 4209
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 9089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 8761
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 9161
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 8201
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 8177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw6Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 8161
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 8209
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 12169
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 12361
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 1993
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 6153
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 9097
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 9289
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 10121
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 8209
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 8161
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw7Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 8177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 8201
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 9209
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 8705
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 4609
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 4353
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 2305
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 2177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 1153
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 1153
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 1921
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static draw8Tile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 4065
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 4113
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 9097
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 9289
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 9097
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 4113
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 9097
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 9289
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 9289
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 10185
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 4113
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
sipush 8177
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawCursorBasicTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
sipush 32767
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
sipush 32767
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
sipush 12295
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
sipush 16375
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 15287
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 15287
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 14039
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 13655
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 14039
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 15287
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 15287
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
sipush 16383
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
sipush 16383
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
bipush 7
ineg
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawCursorEmptyTile(II)V
.limit stack 10
.limit locals 3
iconst_0
istore 2
sipush 16384
iload 0
sipush 512
imul
iadd
iload 1
iadd
istore 2
iload 2
iconst_0
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 2
bipush 32
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 64
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
bipush 96
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 128
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 160
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 192
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 224
iadd
sipush 2337
invokestatic OS/Memory.poke(II)V
iload 2
sipush 256
iadd
sipush 2721
invokestatic OS/Memory.poke(II)V
iload 2
sipush 288
iadd
sipush 2337
invokestatic OS/Memory.poke(II)V
iload 2
sipush 320
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 352
iadd
sipush 1089
invokestatic OS/Memory.poke(II)V
iload 2
sipush 384
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 416
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 448
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 2
sipush 480
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawDebugTilemap(LBoard;)V
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
iconst_1
invokestatic OS/Screen.setColor(Z)V
bipush 12
bipush 12
sipush 227
sipush 227
invokestatic OS/Screen.drawRectangle(IIII)V
iconst_1
istore 1
whileL47:
iload 1
bipush 14
if_icmpge jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ifeq whileL46
iconst_1
istore 2
whileL49:
iload 2
bipush 14
if_icmpge jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
ifeq whileL48
iload 1
iload 2
aload 0
iload 1
iconst_1
isub
iload 2
iconst_1
isub
invokevirtual Board.tileAt(II)I
invokestatic Display.drawDebugTileAt(III)V
iload 2
iconst_1
iadd
istore 2
goto whileL49
whileL48:
iload 1
iconst_1
iadd
istore 1
goto whileL47
whileL46:
return
.end method
.method public static drawDebugTileAt(III)V
.limit stack 10
.limit locals 3
iload 2
iconst_0
if_icmpne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
ifeq ifL50
iload 0
iload 1
invokestatic Display.drawBasicTile(II)V
goto ifL51
ifL50:
iload 2
iconst_1
if_icmpne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
ifeq ifL52
iload 0
iload 1
invokestatic Display.draw1Tile(II)V
goto ifL53
ifL52:
iload 2
iconst_2
if_icmpne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
ifeq ifL54
iload 0
iload 1
invokestatic Display.draw2Tile(II)V
goto ifL55
ifL54:
iload 2
iconst_3
if_icmpne jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq ifL56
iload 0
iload 1
invokestatic Display.draw3Tile(II)V
goto ifL57
ifL56:
iload 2
iconst_4
if_icmpne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
ifeq ifL58
iload 0
iload 1
invokestatic Display.draw4Tile(II)V
goto ifL59
ifL58:
iload 2
iconst_5
if_icmpne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
ifeq ifL60
iload 0
iload 1
invokestatic Display.draw5Tile(II)V
goto ifL61
ifL60:
iload 2
bipush 6
if_icmpne jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
ifeq ifL62
iload 0
iload 1
invokestatic Display.draw6Tile(II)V
goto ifL63
ifL62:
iload 2
bipush 7
if_icmpne jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifeq ifL64
iload 0
iload 1
invokestatic Display.draw7Tile(II)V
goto ifL65
ifL64:
iload 2
bipush 8
if_icmpne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ifeq ifL66
iload 0
iload 1
invokestatic Display.draw8Tile(II)V
goto ifL67
ifL66:
iload 2
bipush 9
if_icmpne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
ifeq ifL68
iload 0
iload 1
invokestatic Display.drawMineTile(II)V
goto ifL69
ifL68:
iload 2
bipush 19
if_icmple jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
ifeq ifL70
iload 0
iload 1
invokestatic Display.drawEmptyTile(II)V
goto ifL71
ifL70:
ifL71:
ifL69:
ifL67:
ifL65:
ifL63:
ifL61:
ifL59:
ifL57:
ifL55:
ifL53:
ifL51:
return
.end method
