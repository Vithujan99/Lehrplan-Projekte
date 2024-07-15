.class public Game
.super java/lang/Object
.field gameOver Z
.field score I
.field tick I
.field time I
.field key C
.method public <init>()V
.limit stack 10
.limit locals 1
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Game.gameOver Z
aload 0
iconst_0
putfield Game.score I
aload 0
iconst_0
putfield Game.tick I
aload 0
iconst_0
putfield Game.time I
aload 0
iconst_0
putfield Game.key C
aload 0
iconst_0
putfield Game.gameOver Z
aload 0
iconst_0
putfield Game.score I
aload 0
iconst_0
putfield Game.tick I
aload 0
iconst_0
putfield Game.time I
return
.end method
.method public title()V
.limit stack 10
.limit locals 1
iconst_0
invokestatic Graphics.drawTitle(I)V
iconst_0
invokestatic Graphics.present(I)V
whileL1:
aload 0
getfield Game.key C
ifne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
aload 0
aload 0
getfield Game.tick I
iconst_1
iadd
putfield Game.tick I
aload 0
invokestatic OS/Keyboard.keyPressed()C
putfield Game.key C
goto whileL1
whileL0:
aload 0
getfield Game.tick I
invokestatic Random.setSeed(I)V
aload 0
invokevirtual Game.start()V
return
.end method
.method public start()V
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
aload 0
iconst_0
putfield Game.tick I
iconst_2
invokestatic Random.randRange(I)I
istore 3
iconst_0
istore 2
iconst_1
iconst_1
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 6
invokespecial OS/String.<init>(I)V
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
whileL3:
aload 0
getfield Game.gameOver Z
ifne jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
iconst_0
istore 1
aload 0
invokestatic OS/Keyboard.keyPressed()C
putfield Game.key C
iconst_0
invokestatic Graphics.drawBase(I)V
aload 0
getfield Game.tick I
bipush 8
invokestatic Math2.modN(II)I
iconst_4
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq ifL4
iconst_0
invokestatic Graphics.drawRoad1(I)V
iconst_0
invokestatic Graphics.drawField1(I)V
goto ifL5
ifL4:
iconst_0
invokestatic Graphics.drawRoad2(I)V
iconst_0
invokestatic Graphics.drawField2(I)V
ifL5:
aload 0
getfield Game.tick I
iconst_4
invokestatic Math2.modN(II)I
iconst_2
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq ifL6
iconst_0
invokestatic Graphics.drawKerbs1(I)V
goto ifL7
ifL6:
iconst_0
invokestatic Graphics.drawKerbs2(I)V
ifL7:
aload 0
getfield Game.time I
bipush 8
invokestatic Math2.modN(II)I
iconst_0
if_icmpne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
ifeq ifL8
iload 3
iconst_0
if_icmpne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
ifeq ifL10
iconst_0
invokestatic Graphics.drawRoadblockLeftTiny(I)V
goto ifL11
ifL10:
ifL11:
iload 3
iconst_1
if_icmpne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
ifeq ifL12
iconst_0
invokestatic Graphics.drawRoadblockMiddleTiny(I)V
goto ifL13
ifL12:
ifL13:
iload 3
iconst_2
if_icmpne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
ifeq ifL14
iconst_0
invokestatic Graphics.drawRoadblockRightTiny(I)V
goto ifL15
ifL14:
ifL15:
goto ifL9
ifL8:
ifL9:
aload 0
getfield Game.time I
bipush 8
invokestatic Math2.modN(II)I
iconst_1
if_icmpne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
ifeq ifL16
iload 3
iconst_0
if_icmpne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
ifeq ifL18
iconst_0
invokestatic Graphics.drawRoadblockLeftSmall(I)V
goto ifL19
ifL18:
ifL19:
iload 3
iconst_1
if_icmpne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
ifeq ifL20
iconst_0
invokestatic Graphics.drawRoadblockMiddleSmall(I)V
goto ifL21
ifL20:
ifL21:
iload 3
iconst_2
if_icmpne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
ifeq ifL22
iconst_0
invokestatic Graphics.drawRoadblockRightSmall(I)V
goto ifL23
ifL22:
ifL23:
goto ifL17
ifL16:
ifL17:
aload 0
getfield Game.time I
bipush 8
invokestatic Math2.modN(II)I
iconst_2
if_icmpne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
ifeq ifL24
iload 3
iconst_0
if_icmpne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
ifeq ifL26
iconst_0
invokestatic Graphics.drawRoadblockLeftMedium(I)V
goto ifL27
ifL26:
ifL27:
iload 3
iconst_1
if_icmpne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
ifeq ifL28
iconst_0
invokestatic Graphics.drawRoadblockMiddleMedium(I)V
goto ifL29
ifL28:
ifL29:
iload 3
iconst_2
if_icmpne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
ifeq ifL30
iconst_0
invokestatic Graphics.drawRoadblockRightMedium(I)V
goto ifL31
ifL30:
ifL31:
goto ifL25
ifL24:
ifL25:
aload 0
getfield Game.time I
bipush 8
invokestatic Math2.modN(II)I
iconst_3
if_icmpne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
ifeq ifL32
iload 3
iconst_0
if_icmpne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
iload 2
ifne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
iand
ifeq ifL34
iconst_0
invokestatic Graphics.drawRoadblockLeftLarge(I)V
iconst_1
istore 2
aload 0
getfield Game.key C
sipush 130
if_icmpne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
ifeq ifL36
iconst_1
istore 1
aload 0
iconst_1
putfield Game.gameOver Z
goto ifL37
ifL36:
ifL37:
goto ifL35
ifL34:
ifL35:
iload 3
iconst_1
if_icmpne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
iload 2
ifne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
iand
ifeq ifL38
iconst_0
invokestatic Graphics.drawRoadblockMiddleLarge(I)V
iconst_1
istore 2
aload 0
getfield Game.key C
sipush 130
if_icmpne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
ifne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
aload 0
getfield Game.key C
sipush 132
if_icmpne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
ifne jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
iand
ifeq ifL40
iconst_1
istore 1
aload 0
iconst_1
putfield Game.gameOver Z
goto ifL41
ifL40:
ifL41:
goto ifL39
ifL38:
ifL39:
iload 3
iconst_2
if_icmpne jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
iload 2
ifne jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
iand
ifeq ifL42
iconst_0
invokestatic Graphics.drawRoadblockRightLarge(I)V
iconst_1
istore 2
aload 0
getfield Game.key C
sipush 132
if_icmpne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
ifeq ifL44
iconst_1
istore 1
aload 0
iconst_1
putfield Game.gameOver Z
goto ifL45
ifL44:
ifL45:
goto ifL43
ifL42:
ifL43:
iconst_2
invokestatic Random.randRange(I)I
istore 3
goto ifL33
ifL32:
ifL33:
aload 0
getfield Game.key C
sipush 130
if_icmpne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
iload 1
ifne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
iand
ifeq ifL46
iconst_0
invokestatic Graphics.drawCarLeft(I)V
iconst_1
istore 1
goto ifL47
ifL46:
ifL47:
aload 0
getfield Game.key C
sipush 132
if_icmpne jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
iload 1
ifne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
iand
ifeq ifL48
iconst_0
invokestatic Graphics.drawCarRight(I)V
iconst_1
istore 1
goto ifL49
ifL48:
ifL49:
aload 0
getfield Game.key C
sipush 130
if_icmpne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
ifne jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
aload 0
getfield Game.key C
sipush 132
if_icmpne jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
ifne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
iand
iload 1
ifne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
iand
ifeq ifL50
iconst_0
invokestatic Graphics.drawCarMiddle(I)V
iconst_1
istore 1
goto ifL51
ifL50:
ifL51:
aload 0
getfield Game.key C
sipush 140
if_icmpne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
ifeq ifL52
aload 0
iconst_1
putfield Game.gameOver Z
iconst_1
istore 1
goto ifL53
ifL52:
ifL53:
iconst_1
bipush 7
invokestatic OS/Output.moveCursor(II)V
aload 0
getfield Game.time I
invokestatic OS/Output.printInt(I)V
aload 0
getfield Game.tick I
bipush 32
invokestatic Math2.modN(II)I
iconst_0
if_icmpne jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
ifeq ifL54
aload 0
aload 0
getfield Game.time I
iconst_1
iadd
putfield Game.time I
iconst_0
istore 2
goto ifL55
ifL54:
ifL55:
aload 0
aload 0
getfield Game.tick I
iconst_1
iadd
putfield Game.tick I
aload 0
getfield Game.tick I
sipush 32767
if_icmpne jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
ifeq ifL56
aload 0
bipush 7
putfield Game.tick I
goto ifL57
ifL56:
ifL57:
sipush 2048
invokestatic Graphics.present(I)V
goto whileL3
whileL2:
aload 0
aload 0
getfield Game.time I
putfield Game.score I
invokestatic OS/Screen.clearScreen()V
bipush 10
bipush 25
invokestatic OS/Output.moveCursor(II)V
new OS/String
dup
bipush 7
invokespecial OS/String.<init>(I)V
bipush 83
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 99
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 111
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 114
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 101
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 58
invokevirtual OS/String.appendChar(C)LOS/String;
bipush 32
invokevirtual OS/String.appendChar(C)LOS/String;
invokestatic OS/Output.printString(LOS/String;)V
aload 0
getfield Game.score I
invokestatic OS/Output.printInt(I)V
return
.end method
