.class public Math2
.super java/lang/Object
.method public static modN(II)I
.limit stack 10
.limit locals 2
iload 0
iload 1
iconst_1
isub
iand
ireturn
.end method
.method public static mod(II)I
.limit stack 10
.limit locals 2
whileL1:
iload 0
iload 1
iconst_1
isub
if_icmple jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
iload 0
iload 1
isub
istore 0
goto whileL1
whileL0:
iload 0
ireturn
.end method
