.class public Cursor
.super java/lang/Object
.field h I
.field v I
.field b LBoard;
.method public <init>(LBoard;)V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Cursor.h I
aload 0
iconst_0
putfield Cursor.v I
aload 0
bipush 7
putfield Cursor.h I
aload 0
bipush 7
putfield Cursor.v I
aload 0
aload 1
putfield Cursor.b LBoard;
iconst_0
aload 0
getfield Cursor.h I
invokestatic Display.drawArrowDownTile(II)V
aload 0
getfield Cursor.v I
iconst_0
invokestatic Display.drawArrowRightTile(II)V
aload 0
getfield Cursor.v I
aload 0
getfield Cursor.h I
invokestatic Display.drawCursorBasicTile(II)V
iconst_2
bipush 15
invokestatic Display.drawBasicTile(II)V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
iconst_0
aload 0
getfield Cursor.h I
invokestatic Display.drawTopEdgeTile(II)V
aload 0
getfield Cursor.v I
iconst_0
invokestatic Display.drawLeftEdgeTile(II)V
return
.end method
.method public position()I
.limit stack 10
.limit locals 1
aload 0
getfield Cursor.v I
bipush 16
imul
aload 0
getfield Cursor.h I
iadd
ireturn
.end method
.method public v()I
.limit stack 10
.limit locals 1
aload 0
getfield Cursor.v I
ireturn
.end method
.method public h()I
.limit stack 10
.limit locals 1
aload 0
getfield Cursor.h I
ireturn
.end method
.method public move(I)V
.limit stack 10
.limit locals 2
iconst_0
aload 0
getfield Cursor.h I
invokestatic Display.drawTopEdgeTile(II)V
aload 0
getfield Cursor.v I
iconst_0
invokestatic Display.drawLeftEdgeTile(II)V
aload 0
getfield Cursor.v I
aload 0
getfield Cursor.h I
aload 0
getfield Cursor.b LBoard;
aload 0
getfield Cursor.v I
iconst_1
isub
aload 0
getfield Cursor.h I
iconst_1
isub
invokevirtual Board.tileAt(II)I
invokestatic Display.drawCorrespondingTileAt(III)V
iload 1
iconst_0
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
aload 0
getfield Cursor.h I
bipush 13
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
aload 0
aload 0
getfield Cursor.h I
iconst_1
iadd
putfield Cursor.h I
goto ifL3
ifL2:
ifL3:
goto ifL1
ifL0:
iload 1
iconst_1
if_icmpne jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
aload 0
getfield Cursor.v I
iconst_1
if_icmple jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL6
aload 0
aload 0
getfield Cursor.v I
iconst_1
isub
putfield Cursor.v I
goto ifL7
ifL6:
ifL7:
goto ifL5
ifL4:
iload 1
iconst_2
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL8
aload 0
getfield Cursor.v I
bipush 13
if_icmpge jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL10
aload 0
aload 0
getfield Cursor.v I
iconst_1
iadd
putfield Cursor.v I
goto ifL11
ifL10:
ifL11:
goto ifL9
ifL8:
aload 0
getfield Cursor.h I
iconst_1
if_icmple jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL12
aload 0
aload 0
getfield Cursor.h I
iconst_1
isub
putfield Cursor.h I
goto ifL13
ifL12:
ifL13:
ifL9:
ifL5:
ifL1:
iconst_0
aload 0
getfield Cursor.h I
invokestatic Display.drawArrowDownTile(II)V
aload 0
getfield Cursor.v I
iconst_0
invokestatic Display.drawArrowRightTile(II)V
aload 0
getfield Cursor.v I
aload 0
getfield Cursor.h I
aload 0
getfield Cursor.b LBoard;
aload 0
getfield Cursor.v I
iconst_1
isub
aload 0
getfield Cursor.h I
iconst_1
isub
invokevirtual Board.tileAt(II)I
invokestatic Display.drawCorrespondingCursorAt(III)V
iconst_2
bipush 15
aload 0
getfield Cursor.b LBoard;
aload 0
getfield Cursor.v I
iconst_1
isub
aload 0
getfield Cursor.h I
iconst_1
isub
invokevirtual Board.tileAt(II)I
invokestatic Display.drawCorrespondingTileAt(III)V
return
.end method
