.class public Board
.super java/lang/Object
.field minesTotal I
.field flagsTotal I
.field tilesUncovered I
.field m LOS/Array;
.method public <init>(I)V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Board.minesTotal I
aload 0
iconst_0
putfield Board.flagsTotal I
aload 0
iconst_0
putfield Board.tilesUncovered I
aload 0
iconst_0
putfield Board.minesTotal I
aload 0
iconst_0
putfield Board.flagsTotal I
aload 0
iconst_0
putfield Board.tilesUncovered I
aload 0
new OS/Array
dup
sipush 169
invokespecial OS/Array.<init>(I)V
putfield Board.m LOS/Array;
aload 0
iload 1
invokevirtual Board.placeMines(I)V
aload 0
invokevirtual Board.calculateProximityNumbers()V
aload 0
getfield Board.minesTotal I
invokestatic Display.drawGameScreen(I)V
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield Board.m LOS/Array;
invokevirtual OS/Array.dispose()V
return
.end method
.method public tileAt(II)I
.limit stack 10
.limit locals 4
iconst_0
istore 3
iload 1
bipush 13
imul
iload 2
iadd
istore 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public placeMines(I)V
.limit stack 10
.limit locals 8
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
iload 1
istore 5
iconst_0
istore 6
whileL1:
iload 6
bipush 20
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
iload 5
invokestatic PseudoRNG.nextRandom(I)I
istore 5
iload 5
bipush 13
invokestatic Main.modulo(II)I
istore 2
iload 5
invokestatic PseudoRNG.nextRandom(I)I
istore 5
iload 5
bipush 13
invokestatic Main.modulo(II)I
istore 3
iload 2
bipush 13
imul
iload 3
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq ifL2
goto ifL3
ifL2:
aload 0
aload 0
getfield Board.minesTotal I
iconst_1
iadd
putfield Board.minesTotal I
ifL3:
aload 0
getfield Board.m LOS/Array;
iload 4
bipush 9
invokevirtual OS/Array.set(II)V
iload 6
iconst_1
iadd
istore 6
goto whileL1
whileL0:
return
.end method
.method public calculateProximityNumbers()V
.limit stack 10
.limit locals 5
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 1
whileL5:
iload 1
bipush 13
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq whileL4
iconst_0
istore 2
whileL7:
iload 2
bipush 13
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL6
iload 1
iconst_0
if_icmple jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL8
iload 1
iconst_1
isub
bipush 13
imul
iload 2
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL10
iload 3
iconst_1
iadd
istore 3
goto ifL11
ifL10:
ifL11:
goto ifL9
ifL8:
ifL9:
iload 1
iconst_0
if_icmple jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL12
iload 2
iconst_0
if_icmple jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL14
iload 1
iconst_1
isub
bipush 13
imul
iload 2
iadd
iconst_1
isub
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq ifL16
iload 3
iconst_1
iadd
istore 3
goto ifL17
ifL16:
ifL17:
goto ifL15
ifL14:
ifL15:
goto ifL13
ifL12:
ifL13:
iload 1
iconst_0
if_icmple jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL18
iload 2
bipush 12
if_icmpge jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL20
iload 1
iconst_1
isub
bipush 13
imul
iload 2
iadd
iconst_1
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL22
iload 3
iconst_1
iadd
istore 3
goto ifL23
ifL22:
ifL23:
goto ifL21
ifL20:
ifL21:
goto ifL19
ifL18:
ifL19:
iload 1
bipush 12
if_icmpge jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL24
iload 1
iconst_1
iadd
bipush 13
imul
iload 2
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL26
iload 3
iconst_1
iadd
istore 3
goto ifL27
ifL26:
ifL27:
goto ifL25
ifL24:
ifL25:
iload 1
bipush 12
if_icmpge jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL28
iload 2
iconst_0
if_icmple jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL30
iload 1
iconst_1
iadd
bipush 13
imul
iload 2
iadd
iconst_1
isub
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL32
iload 3
iconst_1
iadd
istore 3
goto ifL33
ifL32:
ifL33:
goto ifL31
ifL30:
ifL31:
goto ifL29
ifL28:
ifL29:
iload 1
bipush 12
if_icmpge jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
ifeq ifL34
iload 2
bipush 12
if_icmpge jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
ifeq ifL36
iload 1
iconst_1
iadd
bipush 13
imul
iload 2
iadd
iconst_1
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq ifL38
iload 3
iconst_1
iadd
istore 3
goto ifL39
ifL38:
ifL39:
goto ifL37
ifL36:
ifL37:
goto ifL35
ifL34:
ifL35:
iload 2
iconst_0
if_icmple jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
ifeq ifL40
iload 1
bipush 13
imul
iload 2
iadd
iconst_1
isub
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
ifeq ifL42
iload 3
iconst_1
iadd
istore 3
goto ifL43
ifL42:
ifL43:
goto ifL41
ifL40:
ifL41:
iload 2
bipush 12
if_icmpge jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifeq ifL44
iload 1
bipush 13
imul
iload 2
iadd
iconst_1
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
ifeq ifL46
iload 3
iconst_1
iadd
istore 3
goto ifL47
ifL46:
ifL47:
goto ifL45
ifL44:
ifL45:
iload 1
bipush 13
imul
iload 2
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ifeq ifL48
goto ifL49
ifL48:
aload 0
getfield Board.m LOS/Array;
iload 4
iload 3
invokevirtual OS/Array.set(II)V
ifL49:
iconst_0
istore 3
iload 2
iconst_1
iadd
istore 2
goto whileL7
whileL6:
iload 1
iconst_1
iadd
istore 1
goto whileL5
whileL4:
return
.end method
.method public revealTile(II)I
.limit stack 10
.limit locals 6
iconst_0
istore 3
iconst_0
istore 4
iconst_0
istore 5
iload 1
bipush 13
imul
iload 2
iadd
istore 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
ifeq ifL50
aload 0
iload 1
iload 2
invokevirtual Board.destroyConnectedTiles(II)V
iconst_2
bipush 15
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
iconst_1
istore 5
iconst_0
istore 4
goto ifL51
ifL50:
ifL51:
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpge jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
ifeq ifL52
iload 5
ifne jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
ifeq ifL54
aload 0
getfield Board.m LOS/Array;
iload 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 20
iadd
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
invokestatic Display.drawCursorEmptyTile(II)V
iconst_2
bipush 15
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
aload 0
aload 0
getfield Board.tilesUncovered I
iconst_1
iadd
putfield Board.tilesUncovered I
iconst_1
istore 5
iconst_0
istore 4
goto ifL55
ifL54:
ifL55:
goto ifL53
ifL52:
ifL53:
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
ifeq ifL56
iload 5
ifne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
ifeq ifL58
aload 0
getfield Board.m LOS/Array;
iload 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 20
iadd
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
aload 0
invokevirtual Board.revealMines()V
iconst_1
ineg
ireturn
ifL58:
ifL56:
bipush 9
bipush 30
invokestatic OS/Output.moveCursor(II)V
aload 0
getfield Board.tilesUncovered I
invokestatic OS/Output.printInt(I)V
aload 0
getfield Board.tilesUncovered I
sipush 169
aload 0
getfield Board.minesTotal I
isub
if_icmpne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
ifeq ifL60
iconst_1
istore 4
goto ifL61
ifL60:
ifL61:
iload 4
ireturn
.end method
.method public flagTile(II)V
.limit stack 10
.limit locals 4
iconst_0
istore 3
iload 1
bipush 13
imul
iload 2
iadd
istore 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 9
if_icmple jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
ifeq ifL62
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 20
if_icmpge jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
ifeq ifL64
aload 0
getfield Board.m LOS/Array;
iload 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 10
isub
invokevirtual OS/Array.set(II)V
iconst_2
bipush 15
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
aload 0
aload 0
getfield Board.flagsTotal I
iconst_1
isub
putfield Board.flagsTotal I
goto ifL65
ifL64:
ifL65:
goto ifL63
ifL62:
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 10
if_icmpge jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
ifeq ifL66
aload 0
getfield Board.m LOS/Array;
iload 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 10
iadd
invokevirtual OS/Array.set(II)V
iconst_2
bipush 15
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
aload 0
aload 0
getfield Board.flagsTotal I
iconst_1
iadd
putfield Board.flagsTotal I
goto ifL67
ifL66:
ifL67:
ifL63:
bipush 7
bipush 30
invokestatic OS/Output.moveCursor(II)V
aload 0
getfield Board.flagsTotal I
invokestatic OS/Output.printInt(I)V
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
return
.end method
.method public revealMines()V
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
iconst_0
istore 1
whileL69:
iload 1
bipush 13
if_icmpge jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
ifeq whileL68
iconst_0
istore 2
whileL71:
iload 2
bipush 13
if_icmpge jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifeq whileL70
iload 1
bipush 13
imul
iload 2
iadd
istore 3
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
ifeq ifL72
aload 0
getfield Board.m LOS/Array;
iload 3
bipush 29
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
goto ifL73
ifL72:
ifL73:
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
bipush 19
if_icmpne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
ifeq ifL74
aload 0
getfield Board.m LOS/Array;
iload 3
bipush 29
invokevirtual OS/Array.set(II)V
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
aload 0
getfield Board.m LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
goto ifL75
ifL74:
ifL75:
iload 2
iconst_1
iadd
istore 2
goto whileL71
whileL70:
iload 1
iconst_1
iadd
istore 1
goto whileL69
whileL68:
return
.end method
.method public destroyConnectedTiles(II)V
.limit stack 10
.limit locals 8
iconst_0
istore 4
iconst_0
istore 5
iconst_0
istore 6
iconst_0
istore 7
new Queue
dup
sipush 338
invokespecial Queue.<init>(I)V
astore 3
iload 1
bipush 13
imul
iload 2
iadd
istore 6
aload 3
iload 1
invokevirtual Queue.push(I)V
aload 3
iload 2
invokevirtual Queue.push(I)V
whileL77:
aload 3
invokevirtual Queue.isEmpty()Z
ifne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
ifeq whileL76
aload 3
invokevirtual Queue.pop()I
istore 4
aload 3
invokevirtual Queue.pop()I
istore 5
iload 4
bipush 13
imul
iload 5
iadd
istore 6
aload 0
getfield Board.m LOS/Array;
iload 6
invokevirtual OS/Array.get(I)I
iconst_0
if_icmpne jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
ifeq ifL78
iconst_1
istore 7
goto ifL79
ifL78:
ifL79:
aload 0
getfield Board.m LOS/Array;
iload 6
invokevirtual OS/Array.get(I)I
bipush 20
if_icmpne jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
ifeq ifL80
iconst_1
istore 7
goto ifL81
ifL80:
ifL81:
iload 7
iconst_1
if_icmpne jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
ifeq ifL82
iload 4
iconst_0
if_icmple jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
ifeq ifL84
aload 0
iload 4
iconst_1
isub
iload 5
aload 3
invokevirtual Board.destroyHelper(IILQueue;)V
goto ifL85
ifL84:
ifL85:
iload 4
bipush 12
if_icmpge jump86
iconst_1
goto jump87
jump86:
iconst_0
jump87:
ifeq ifL86
aload 0
iload 4
iconst_1
iadd
iload 5
aload 3
invokevirtual Board.destroyHelper(IILQueue;)V
goto ifL87
ifL86:
ifL87:
iload 5
iconst_0
if_icmple jump88
iconst_1
goto jump89
jump88:
iconst_0
jump89:
ifeq ifL88
aload 0
iload 4
iload 5
iconst_1
isub
aload 3
invokevirtual Board.destroyHelper(IILQueue;)V
goto ifL89
ifL88:
ifL89:
iload 5
bipush 12
if_icmpge jump90
iconst_1
goto jump91
jump90:
iconst_0
jump91:
ifeq ifL90
aload 0
iload 4
iload 5
iconst_1
iadd
aload 3
invokevirtual Board.destroyHelper(IILQueue;)V
goto ifL91
ifL90:
ifL91:
goto ifL83
ifL82:
ifL83:
aload 0
getfield Board.m LOS/Array;
iload 6
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpge jump92
iconst_1
goto jump93
jump92:
iconst_0
jump93:
ifeq ifL92
aload 0
getfield Board.m LOS/Array;
iload 6
aload 0
getfield Board.m LOS/Array;
iload 6
invokevirtual OS/Array.get(I)I
bipush 20
iadd
invokevirtual OS/Array.set(II)V
aload 0
aload 0
getfield Board.tilesUncovered I
iconst_1
iadd
putfield Board.tilesUncovered I
goto ifL93
ifL92:
ifL93:
iconst_0
istore 7
iload 4
iconst_1
iadd
iload 5
iconst_1
iadd
aload 0
getfield Board.m LOS/Array;
iload 6
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
goto whileL77
whileL76:
aload 3
invokevirtual Queue.dispose()V
iload 1
bipush 13
imul
iload 2
iadd
istore 6
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
aload 0
getfield Board.m LOS/Array;
iload 6
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingCursorAt(III)V
return
.end method
.method public destroyHelper(IILQueue;)V
.limit stack 10
.limit locals 5
iconst_0
istore 4
iload 1
bipush 13
imul
iload 2
iadd
istore 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 9
if_icmpge jump94
iconst_1
goto jump95
jump94:
iconst_0
jump95:
ifeq ifL94
aload 3
iload 1
invokevirtual Queue.push(I)V
aload 3
iload 2
invokevirtual Queue.push(I)V
aload 0
getfield Board.m LOS/Array;
iload 4
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
bipush 20
iadd
invokevirtual OS/Array.set(II)V
aload 0
aload 0
getfield Board.tilesUncovered I
iconst_1
iadd
putfield Board.tilesUncovered I
iload 1
iconst_1
iadd
iload 2
iconst_1
iadd
aload 0
getfield Board.m LOS/Array;
iload 4
invokevirtual OS/Array.get(I)I
invokestatic Display.drawCorrespondingTileAt(III)V
goto ifL95
ifL94:
ifL95:
return
.end method
