.class public Main
.super java/lang/Object
.field static b LBoard;
.field static c LCursor;
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 3
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
iconst_0
istore 1
iconst_0
istore 2
iconst_1
istore 2
invokestatic Display.drawBackground()V
invokestatic Display.drawInitialTilemap()V
invokestatic Display.drawSideMenu()V
invokestatic Display.drawControls()V
invokestatic Display.showStartingScreen()I
istore 1
whileL1:
iload 2
ifeq whileL0
new Board
dup
iload 1
invokespecial Board.<init>(I)V
putstatic Main.b LBoard;
new Cursor
dup
getstatic Main.b LBoard;
invokespecial Cursor.<init>(LBoard;)V
putstatic Main.c LCursor;
invokestatic Main.run()I
istore 1
getstatic Main.b LBoard;
invokevirtual Board.dispose()V
getstatic Main.c LCursor;
invokevirtual Cursor.dispose()V
invokestatic Display.drawInitialTilemap()V
goto whileL1
whileL0:
return
.end method
.method public static run()I
.limit stack 10
.limit locals 4
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 3
whileL3:
iload 3
ifne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL2
whileL5:
iload 2
iconst_0
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL4
invokestatic OS/Keyboard.keyPressed()C
istore 2
goto whileL5
whileL4:
iload 2
bipush 70
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL6
getstatic Main.b LBoard;
getstatic Main.c LCursor;
invokevirtual Cursor.v()I
iconst_1
isub
getstatic Main.c LCursor;
invokevirtual Cursor.h()I
iconst_1
isub
invokevirtual Board.flagTile(II)V
getstatic Main.c LCursor;
invokevirtual Cursor.v()I
getstatic Main.c LCursor;
invokevirtual Cursor.h()I
getstatic Main.b LBoard;
getstatic Main.c LCursor;
invokevirtual Cursor.v()I
iconst_1
isub
getstatic Main.c LCursor;
invokevirtual Cursor.h()I
iconst_1
isub
invokevirtual Board.tileAt(II)I
invokestatic Display.drawCorrespondingCursorAt(III)V
goto ifL7
ifL6:
ifL7:
iload 2
sipush 128
if_icmpne jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL8
getstatic Main.b LBoard;
getstatic Main.c LCursor;
invokevirtual Cursor.v()I
iconst_1
isub
getstatic Main.c LCursor;
invokevirtual Cursor.h()I
iconst_1
isub
invokevirtual Board.revealTile(II)I
istore 1
goto ifL9
ifL8:
ifL9:
iload 2
bipush 32
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL10
getstatic Main.b LBoard;
getstatic Main.c LCursor;
invokevirtual Cursor.v()I
iconst_1
isub
getstatic Main.c LCursor;
invokevirtual Cursor.h()I
iconst_1
isub
invokevirtual Board.revealTile(II)I
istore 1
goto ifL11
ifL10:
ifL11:
iload 2
sipush 131
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL12
getstatic Main.c LCursor;
iconst_1
invokevirtual Cursor.move(I)V
goto ifL13
ifL12:
ifL13:
iload 2
bipush 87
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL14
getstatic Main.c LCursor;
iconst_1
invokevirtual Cursor.move(I)V
goto ifL15
ifL14:
ifL15:
iload 2
sipush 133
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL16
getstatic Main.c LCursor;
iconst_2
invokevirtual Cursor.move(I)V
goto ifL17
ifL16:
ifL17:
iload 2
bipush 83
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq ifL18
getstatic Main.c LCursor;
iconst_2
invokevirtual Cursor.move(I)V
goto ifL19
ifL18:
ifL19:
iload 2
sipush 130
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL20
getstatic Main.c LCursor;
iconst_3
invokevirtual Cursor.move(I)V
goto ifL21
ifL20:
ifL21:
iload 2
bipush 65
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL22
getstatic Main.c LCursor;
iconst_3
invokevirtual Cursor.move(I)V
goto ifL23
ifL22:
ifL23:
iload 2
sipush 132
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL24
getstatic Main.c LCursor;
iconst_0
invokevirtual Cursor.move(I)V
goto ifL25
ifL24:
ifL25:
iload 2
bipush 68
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL26
getstatic Main.c LCursor;
iconst_0
invokevirtual Cursor.move(I)V
goto ifL27
ifL26:
ifL27:
iload 2
bipush 82
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL28
iconst_1
ineg
istore 1
goto ifL29
ifL28:
ifL29:
iload 2
bipush 81
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL30
invokestatic OS/Sys.halt()V
goto ifL31
ifL30:
ifL31:
iload 1
iconst_1
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL32
iconst_1
istore 3
goto ifL33
ifL32:
ifL33:
iload 1
iconst_1
ineg
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL34
iconst_1
istore 3
goto ifL35
ifL34:
ifL35:
whileL37:
iload 2
iconst_0
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq whileL36
invokestatic OS/Keyboard.keyPressed()C
istore 2
goto whileL37
whileL36:
goto whileL3
whileL2:
iload 1
iconst_1
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq ifL38
invokestatic Display.showWinningScreen()I
istore 0
goto ifL39
ifL38:
invokestatic Display.showLoosingScreen()I
istore 0
ifL39:
iload 0
ireturn
.end method
.method public static modulo(II)I
.limit stack 10
.limit locals 4
iconst_0
istore 2
iconst_0
istore 3
iload 1
iconst_0
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL40
iconst_0
ireturn
ifL40:
iload 0
iload 1
idiv
istore 2
iload 2
iload 1
imul
istore 3
iload 0
iload 3
isub
ireturn
.end method
