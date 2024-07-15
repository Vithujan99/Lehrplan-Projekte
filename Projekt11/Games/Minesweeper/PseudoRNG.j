.class public PseudoRNG
.super java/lang/Object
.method public static nextRandom(I)I
.limit stack 10
.limit locals 2
iconst_0
istore 1
sipush 16645
iload 0
imul
sipush 10139
iadd
sipush 7140
invokestatic Main.modulo(II)I
istore 1
iload 1
iconst_0
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
iload 1
sipush 32767
iadd
istore 1
goto ifL1
ifL0:
ifL1:
iload 1
ireturn
.end method
