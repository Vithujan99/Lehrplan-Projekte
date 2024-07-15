.class public Random
.super java/lang/Object
.field static seed I
.method public static setSeed(I)V
.limit stack 10
.limit locals 1
iload 0
putstatic Random.seed I
return
.end method
.method public static rand()I
.limit stack 10
.limit locals 0
getstatic Random.seed I
sipush 20251
iadd
putstatic Random.seed I
getstatic Random.seed I
iconst_0
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq ifL0
getstatic Random.seed I
sipush 32767
isub
iconst_1
isub
putstatic Random.seed I
goto ifL1
ifL0:
ifL1:
getstatic Random.seed I
ireturn
.end method
.method public static randRange(I)I
.limit stack 10
.limit locals 3
iconst_0
istore 1
iconst_0
istore 2
iconst_1
istore 1
whileL3:
iload 1
iload 0
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
iload 1
iconst_2
imul
iconst_1
iadd
istore 1
goto whileL3
whileL2:
invokestatic Random.rand()I
iload 1
iand
istore 2
whileL5:
iload 2
iload 0
if_icmple jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq whileL4
invokestatic Random.rand()I
iload 1
iand
istore 2
goto whileL5
whileL4:
iload 2
ireturn
.end method
