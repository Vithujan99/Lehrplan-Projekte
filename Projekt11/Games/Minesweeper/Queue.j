.class public Queue
.super java/lang/Object
.field storage LOS/Array;
.field head I
.field tail I
.method public <init>(I)V
.limit stack 10
.limit locals 2
aload 0
invokespecial java/lang/Object.<init>()V
aload 0
iconst_0
putfield Queue.head I
aload 0
iconst_0
putfield Queue.tail I
aload 0
new OS/Array
dup
iload 1
invokespecial OS/Array.<init>(I)V
putfield Queue.storage LOS/Array;
aload 0
iconst_0
putfield Queue.head I
aload 0
iconst_0
putfield Queue.tail I
return
.end method
.method public dispose()V
.limit stack 10
.limit locals 1
aload 0
getfield Queue.storage LOS/Array;
invokevirtual OS/Array.dispose()V
return
.end method
.method public pop()I
.limit stack 10
.limit locals 1
aload 0
aload 0
getfield Queue.head I
iconst_1
iadd
putfield Queue.head I
aload 0
getfield Queue.storage LOS/Array;
aload 0
getfield Queue.head I
iconst_1
isub
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public peek()I
.limit stack 10
.limit locals 1
aload 0
getfield Queue.storage LOS/Array;
aload 0
getfield Queue.head I
invokevirtual OS/Array.get(I)I
ireturn
.end method
.method public isEmpty()Z
.limit stack 10
.limit locals 1
aload 0
getfield Queue.head I
aload 0
getfield Queue.tail I
if_icmpne jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ireturn
.end method
.method public push(I)V
.limit stack 10
.limit locals 2
aload 0
getfield Queue.storage LOS/Array;
aload 0
getfield Queue.tail I
iload 1
invokevirtual OS/Array.set(II)V
aload 0
aload 0
getfield Queue.tail I
iconst_1
iadd
putfield Queue.tail I
return
.end method
