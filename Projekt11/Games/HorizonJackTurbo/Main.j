.class public Main
.super java/lang/Object
.method public static main([Ljava/lang/String;)V
.limit stack 10
.limit locals 2
new OS/Sys
dup
invokespecial OS/Sys.<init>()V
pop
new Game
dup
invokespecial Game.<init>()V
astore 1
invokestatic Main.init()V
aload 1
invokevirtual Game.title()V
return
.end method
.method public static init()V
.limit stack 10
.limit locals 0
invokestatic Graphics.init()V
return
.end method
