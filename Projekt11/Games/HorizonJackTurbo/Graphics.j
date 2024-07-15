.class public Graphics
.super java/lang/Object
.field static buffer LOS/Array;
.method public static init()V
.limit stack 10
.limit locals 0
new OS/Array
dup
sipush 8192
invokespecial OS/Array.<init>(I)V
putstatic Graphics.buffer LOS/Array;
return
.end method
.method public static present(I)V
.limit stack 10
.limit locals 4
iconst_0
istore 1
iconst_0
istore 2
iconst_0
istore 3
sipush 16384
istore 1
iload 0
istore 3
whileL1:
iload 3
sipush 8192
if_icmpge jump0
iconst_1
goto jump1
jump0:
iconst_0
jump1:
ifeq whileL0
iload 1
iload 3
iadd
getstatic Graphics.buffer LOS/Array;
iload 3
invokevirtual OS/Array.get(I)I
invokestatic OS/Memory.poke(II)V
iload 3
iconst_1
iadd
istore 3
goto whileL1
whileL0:
invokestatic Graphics.clearBuffer()V
return
.end method
.method public static clearBuffer()V
.limit stack 10
.limit locals 1
iconst_0
istore 0
iconst_0
istore 0
whileL3:
iload 0
sipush 8192
if_icmpge jump2
iconst_1
goto jump3
jump2:
iconst_0
jump3:
ifeq whileL2
getstatic Graphics.buffer LOS/Array;
iload 0
iconst_0
invokevirtual OS/Array.set(II)V
iload 0
iconst_1
iadd
istore 0
goto whileL3
whileL2:
return
.end method
.method public static printCursorPositions()V
.limit stack 10
.limit locals 2
iconst_0
istore 0
iconst_0
istore 1
iconst_0
istore 0
whileL5:
iload 0
bipush 23
if_icmpge jump4
iconst_1
goto jump5
jump4:
iconst_0
jump5:
ifeq whileL4
iload 0
iconst_0
invokestatic OS/Output.moveCursor(II)V
iload 0
bipush 10
invokestatic Math2.mod(II)I
invokestatic OS/Output.printInt(I)V
iload 0
iconst_1
iadd
istore 0
goto whileL5
whileL4:
iconst_0
istore 1
whileL7:
iload 1
bipush 64
if_icmpge jump6
iconst_1
goto jump7
jump6:
iconst_0
jump7:
ifeq whileL6
iconst_0
iload 1
invokestatic OS/Output.moveCursor(II)V
iload 1
bipush 10
invokestatic Math2.mod(II)I
invokestatic OS/Output.printInt(I)V
iload 1
iconst_1
iadd
istore 1
goto whileL7
whileL6:
return
.end method
.method public static drawTitle(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 3116
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3117
iadd
sipush 1009
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3118
iadd
sipush 16376
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3119
iadd
sipush 31712
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3120
iadd
sipush 136
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3121
iadd
sipush 7937
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3122
iadd
sipush 32641
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3123
iadd
sipush 8065
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3148
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3149
iadd
sipush 1009
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3150
iadd
sipush 32764
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3151
iadd
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3152
iadd
sipush 132
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3153
iadd
sipush 1793
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3154
iadd
sipush 16129
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3155
iadd
sipush 8131
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3180
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3181
iadd
sipush 32271
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3182
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3183
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3184
iadd
sipush 131
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3185
iadd
sipush 769
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3186
iadd
sipush 7681
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3187
iadd
sipush 4039
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3212
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3213
iadd
sipush 32271
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3214
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3215
iadd
iconst_3
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3216
iadd
iconst_3
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3217
iadd
sipush 257
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3218
iadd
sipush 1537
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3219
iadd
sipush 4039
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3244
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3245
iadd
sipush 15879
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3246
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3247
iadd
sipush 513
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3248
iadd
bipush 67
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3249
iadd
sipush 129
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3250
iadd
sipush 513
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3251
iadd
sipush 4039
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3276
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3277
iadd
sipush 16889
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3278
iadd
sipush 2017
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3279
iadd
sipush 4034
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3280
iadd
sipush 32705
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3281
iadd
sipush 16191
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3282
iadd
sipush 528
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3283
iadd
sipush 4047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3308
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3309
iadd
sipush 24829
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3310
iadd
sipush 2017
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3311
iadd
sipush 8130
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3312
iadd
sipush 16322
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3313
iadd
sipush 7967
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3314
iadd
sipush 520
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3315
iadd
sipush 1999
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3340
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3341
iadd
sipush 24707
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3342
iadd
sipush 31775
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3343
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3344
iadd
sipush 8130
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3345
iadd
sipush 7951
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3346
iadd
sipush 31992
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3347
iadd
sipush 2015
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3372
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3373
iadd
sipush 24577
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3374
iadd
sipush 31759
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3375
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3376
iadd
sipush 2018
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3377
iadd
sipush 7943
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3378
iadd
sipush 31992
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3379
iadd
sipush 2015
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3404
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3405
iadd
sipush 12289
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3406
iadd
sipush 31759
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3407
iadd
sipush 32767
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3408
iadd
sipush 993
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3409
iadd
sipush 3971
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3410
iadd
sipush 31992
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3411
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3412
iadd
sipush 3584
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3436
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3437
iadd
sipush 12289
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3438
iadd
sipush 15367
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3439
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3440
iadd
sipush 481
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3441
iadd
sipush 3969
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3442
iadd
sipush 31992
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3443
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3444
iadd
sipush 3584
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3468
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3469
iadd
sipush 12290
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3470
iadd
sipush 15879
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3471
iadd
sipush 8175
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3472
iadd
sipush 32543
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3473
iadd
sipush 3968
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3474
iadd
sipush 15480
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3475
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3476
iadd
sipush 3840
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3500
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3501
iadd
sipush 12352
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3502
iadd
sipush 16889
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3503
iadd
sipush 1007
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3504
iadd
sipush 16271
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3505
iadd
sipush 3968
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3506
iadd
sipush 15996
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3507
iadd
sipush 1022
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3508
iadd
sipush 3840
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3532
iadd
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3533
iadd
sipush 6272
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3534
iadd
sipush 16889
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3535
iadd
sipush 30769
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3536
iadd
sipush 8143
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3537
iadd
sipush 1920
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3538
iadd
sipush 15996
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3539
iadd
sipush 8190
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3540
iadd
sipush 1792
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3563
iadd
sipush 512
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3564
iadd
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3565
iadd
sipush 6208
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3566
iadd
sipush 24825
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3567
iadd
sipush 28729
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3568
iadd
sipush 2031
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3569
iadd
sipush 4032
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3570
iadd
sipush 8062
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3571
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3572
iadd
sipush 1920
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3595
iadd
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3596
iadd
sipush 32767
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3597
iadd
sipush 6208
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3598
iadd
sipush 8191
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3599
iadd
sipush 28796
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3600
iadd
sipush 32743
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3601
iadd
bipush 49
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3602
iadd
sipush 7999
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3603
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3604
iadd
sipush 1025
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3605
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3635
iadd
sipush 504
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3636
iadd
sipush 448
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3662
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3663
iadd
bipush 121
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3664
iadd
sipush 8177
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3665
iadd
sipush 7711
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3666
iadd
sipush 2044
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3667
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3668
iadd
sipush 32288
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3669
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3694
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3695
iadd
bipush 121
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3696
iadd
bipush 113
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3697
iadd
sipush 7711
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3698
iadd
sipush 3588
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3699
iadd
sipush 32767
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3700
iadd
sipush 16160
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3701
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3726
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3727
iadd
bipush 125
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3728
iadd
bipush 113
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3729
iadd
sipush 3871
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3730
iadd
sipush 2034
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3731
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3732
iadd
sipush 7184
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3733
iadd
bipush 28
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3758
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3759
iadd
sipush 195
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3760
iadd
sipush 1996
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3761
iadd
sipush 3840
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3762
iadd
sipush 249
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3763
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3764
iadd
sipush 6160
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3765
iadd
bipush 28
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3790
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3791
iadd
sipush 195
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3792
iadd
sipush 966
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3793
iadd
sipush 28928
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3794
iadd
bipush 29
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3796
iadd
sipush 28536
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3797
iadd
bipush 28
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3822
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3823
iadd
bipush 97
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3824
iadd
sipush 999
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3825
iadd
sipush 4352
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3826
iadd
bipush 31
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3827
iadd
sipush 32767
ifne jump8
iconst_1
goto jump9
jump8:
iconst_0
jump9:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3828
iadd
sipush 28473
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3829
iadd
bipush 14
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3854
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3855
iadd
bipush 113
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3856
iadd
sipush 483
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3857
iadd
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3858
iadd
sipush 31712
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3859
iadd
sipush 2560
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3860
iadd
sipush 26425
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3861
iadd
bipush 14
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3886
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3887
iadd
sipush 32719
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3888
iadd
sipush 481
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3889
iadd
sipush 32640
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3890
iadd
sipush 30720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3891
iadd
sipush 192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3892
iadd
sipush 6372
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3893
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3918
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3919
iadd
sipush 32712
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3920
iadd
sipush 241
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3921
iadd
sipush 8064
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3922
iadd
sipush 15360
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3923
iadd
sipush 400
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3924
iadd
sipush 1124
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3925
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3950
iadd
sipush 30720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3951
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3952
iadd
sipush 240
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3953
iadd
sipush 8128
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3954
iadd
sipush 16896
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3955
iadd
sipush 28279
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3956
iadd
sipush 4062
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3982
iadd
sipush 30720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3983
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3984
iadd
sipush 248
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3985
iadd
sipush 15296
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3986
iadd
sipush 25088
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3987
iadd
sipush 32371
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3988
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4014
iadd
sipush 15360
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4015
iadd
sipush 24590
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4016
iadd
bipush 120
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4017
iadd
sipush 12736
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4018
iadd
sipush 8448
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4019
iadd
sipush 2245
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4020
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4045
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4046
iadd
sipush 15361
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4047
iadd
sipush 24582
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4048
iadd
bipush 124
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4049
iadd
sipush 29152
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4050
iadd
sipush 12544
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4051
iadd
sipush 31545
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4052
iadd
bipush 28
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4077
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4078
iadd
sipush 7681
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4079
iadd
sipush 12295
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4080
iadd
bipush 60
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4081
iadd
sipush 25056
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4082
iadd
sipush 12544
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4083
iadd
sipush 15165
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4109
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4110
iadd
sipush 3585
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4111
iadd
sipush 12291
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4112
iadd
bipush 30
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4113
iadd
sipush 7712
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4114
iadd
sipush 14464
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4115
iadd
sipush 415
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4141
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4142
iadd
sipush 28673
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4143
iadd
sipush 14339
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4144
iadd
sipush 994
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4145
iadd
sipush 16141
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4146
iadd
sipush 15488
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4147
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4173
iadd
sipush 32767
ifne jump10
iconst_1
goto jump11
jump10:
iconst_0
jump11:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4174
iadd
sipush 14337
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4175
iadd
sipush 7169
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4176
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4177
iadd
sipush 16269
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4178
iadd
sipush 15487
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4179
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4206
iadd
sipush 15361
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4207
iadd
sipush 7169
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4208
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4209
iadd
sipush 16272
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4210
iadd
sipush 451
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4242
iadd
sipush 224
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4274
iadd
sipush 224
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4973
iadd
sipush 8128
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4976
iadd
sipush 32256
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5005
iadd
sipush 16320
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5008
iadd
sipush 32512
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5009
iadd
bipush 24
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5010
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5037
iadd
sipush 31168
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5040
iadd
sipush 26368
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5041
iadd
bipush 28
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5042
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5069
iadd
sipush 29120
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5072
iadd
sipush 896
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5073
iadd
bipush 28
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5074
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5101
iadd
sipush 29120
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5102
iadd
sipush 898
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5103
iadd
sipush 1544
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5104
iadd
sipush 1793
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5105
iadd
sipush 897
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5106
iadd
sipush 1039
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5107
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5133
iadd
sipush 30912
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5134
iadd
sipush 386
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5135
iadd
sipush 515
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5136
iadd
sipush 3841
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5137
iadd
sipush 385
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5138
iadd
sipush 1039
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5139
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5165
iadd
sipush 16352
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5166
iadd
sipush 12466
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5167
iadd
sipush 25443
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5168
iadd
sipush 7680
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5169
iadd
sipush 12530
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5170
iadd
sipush 29297
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5197
iadd
sipush 8160
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5198
iadd
sipush 249
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5199
iadd
sipush 15420
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5200
iadd
sipush 15360
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5201
iadd
sipush 14578
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5202
iadd
sipush 28728
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5229
iadd
sipush 224
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5230
iadd
sipush 32519
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5231
iadd
sipush 1800
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5232
iadd
sipush 30720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5233
iadd
sipush 7418
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5234
iadd
sipush 12344
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5261
iadd
sipush 224
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5262
iadd
sipush 903
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5263
iadd
sipush 7968
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5264
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5265
iadd
sipush 7289
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5266
iadd
sipush 14392
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5293
iadd
bipush 96
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5294
iadd
sipush 26375
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5295
iadd
sipush 6940
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5296
iadd
sipush 14720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5297
iadd
sipush 2169
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5298
iadd
sipush 14392
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5325
iadd
bipush 112
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5326
iadd
sipush 32515
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5327
iadd
sipush 258
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5328
iadd
sipush 16320
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5329
iadd
sipush 193
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5330
iadd
sipush 2024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5331
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5357
iadd
sipush 32656
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5358
iadd
sipush 15875
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5359
iadd
sipush 32382
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5360
iadd
sipush 8064
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5361
iadd
sipush 450
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5362
iadd
sipush 4068
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5363
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawBase(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
iconst_0
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
iconst_1
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
bipush 31
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
bipush 32
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
bipush 33
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
bipush 63
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
bipush 64
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
bipush 65
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
bipush 95
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
bipush 96
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
bipush 97
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
bipush 127
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 128
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 129
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 159
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 160
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 161
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 191
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 192
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 193
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 223
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 224
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 225
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 255
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 256
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 257
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 287
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 288
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 318
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 319
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 320
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 350
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 351
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 352
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 382
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 383
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 384
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 414
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 415
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 416
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 446
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 447
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 448
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 478
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 479
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 480
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 510
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 511
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 512
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 542
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 543
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 544
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 574
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 575
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 576
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 577
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 607
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 608
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 609
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 639
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 640
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 641
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 671
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 672
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 673
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 703
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 704
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 705
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 735
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 736
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 737
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 767
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 768
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 769
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 799
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 800
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 801
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 831
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 832
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 833
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 863
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 864
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 894
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 895
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 896
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 926
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 927
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 928
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 958
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 959
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 960
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 990
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 991
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 992
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1022
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1023
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1024
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1054
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1055
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1056
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1086
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1087
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1088
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1118
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1119
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1120
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1150
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1151
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1152
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1153
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1183
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1184
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1185
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1215
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1216
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1217
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1247
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1248
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1249
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1279
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1280
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1281
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1311
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1312
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1313
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1343
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1344
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1345
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1375
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1376
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1377
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1407
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1408
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1409
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1439
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1440
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1470
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1471
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1472
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1502
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1503
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1504
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1534
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1535
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1536
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1566
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1567
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1568
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1598
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1599
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1600
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1630
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1631
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1632
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1662
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1663
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1664
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1694
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1695
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1696
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1726
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1727
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1728
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1729
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1759
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1760
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1761
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1791
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1792
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1793
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1823
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1824
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1825
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1855
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1856
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1857
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1887
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1888
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1889
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1919
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1920
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1921
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1951
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1952
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1953
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1983
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1984
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 1985
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2015
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2016
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2046
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2047
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2048
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2078
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2079
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2080
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2110
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2111
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2112
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2142
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2143
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2144
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2174
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2175
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2176
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2206
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2207
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2208
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2238
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2239
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2240
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2270
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2271
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2272
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2302
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2303
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2304
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2305
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2335
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2336
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2337
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2367
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2368
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2369
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2399
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2400
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2401
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2431
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2432
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2433
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2463
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2464
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2465
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2495
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2496
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2497
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2510
iadd
sipush 8192
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2527
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2528
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2529
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2542
iadd
sipush 8192
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2559
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2560
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2561
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2574
iadd
sipush 8192
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2591
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2592
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2606
iadd
sipush 8192
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2622
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2623
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2624
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2638
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2654
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2655
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2656
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2670
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2686
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2687
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2688
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2702
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2718
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2719
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2720
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2734
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2750
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2751
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2752
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2766
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2782
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2783
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2784
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2798
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2814
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2815
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2816
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2830
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2835
iadd
sipush 1088
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2840
iadd
sipush 4352
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2846
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2847
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2848
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2861
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2862
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2867
iadd
sipush 3168
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2872
iadd
sipush 12672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2878
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2879
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2880
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2881
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2892
iadd
sipush 32767
ifne jump12
iconst_1
goto jump13
jump12:
iconst_0
jump13:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2893
iadd
sipush 511
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2894
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2899
iadd
sipush 4064
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2904
iadd
sipush 16256
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2911
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2912
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2913
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2924
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2925
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2926
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2931
iadd
sipush 4064
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2936
iadd
sipush 16256
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2943
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2944
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2945
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2956
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2957
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2958
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2963
iadd
sipush 7264
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2968
iadd
sipush 29056
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2975
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2976
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2977
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2978
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2988
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2989
iadd
sipush 853
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2990
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 2995
iadd
sipush 15472
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3000
iadd
sipush 3648
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3007
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3008
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3009
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3010
iadd
sipush 4092
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3020
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3021
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3022
iadd
sipush 10240
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3027
iadd
sipush 27768
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3032
iadd
sipush 20000
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3033
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3039
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3040
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3041
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3042
iadd
sipush 30720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3052
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3053
iadd
sipush 853
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3054
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3059
iadd
sipush 13204
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3064
iadd
sipush 12720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3065
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3071
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3072
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3073
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3074
iadd
sipush 32767
ifne jump14
iconst_1
goto jump15
jump14:
iconst_0
jump15:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3075
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3076
iadd
sipush 224
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3078
iadd
sipush 192
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3084
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3085
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3086
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3091
iadd
sipush 9114
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3092
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3096
iadd
sipush 29080
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3097
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3103
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3104
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3105
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3107
iadd
sipush 2032
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3108
iadd
sipush 1976
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3110
iadd
sipush 992
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3116
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3117
iadd
sipush 853
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3118
iadd
sipush 10240
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3123
iadd
sipush 32763
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3124
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3128
iadd
bipush 20
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3129
iadd
bipush 13
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3133
iadd
bipush 124
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3135
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3136
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3137
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3139
iadd
sipush 15360
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3140
iadd
sipush 3086
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3142
iadd
sipush 7736
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3148
iadd
sipush 12304
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3149
iadd
sipush 1023
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3150
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3154
iadd
sipush 32767
ifne jump16
iconst_1
goto jump17
jump16:
iconst_0
jump17:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3155
iadd
sipush 28653
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3156
iadd
bipush 6
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3160
iadd
sipush 16458
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3161
iadd
bipush 25
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3165
iadd
sipush 999
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3166
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3167
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3168
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3171
iadd
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3172
iadd
sipush 10237
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3173
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3174
iadd
sipush 4081
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3180
iadd
sipush 12304
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3181
iadd
sipush 3925
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3182
iadd
sipush 1040
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3186
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3187
iadd
sipush 13202
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3188
iadd
bipush 14
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3191
iadd
sipush 32767
ifne jump18
iconst_1
goto jump19
jump18:
iconst_0
jump19:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3192
iadd
sipush 12731
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3193
iadd
bipush 59
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3196
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3197
iadd
sipush 4159
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3198
iadd
bipush 7
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3199
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3200
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3203
iadd
bipush 16
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3204
iadd
sipush 28675
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3205
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3206
iadd
sipush 32767
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3207
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3212
iadd
sipush 12624
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3213
iadd
sipush 8191
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3214
iadd
sipush 9232
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3215
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3216
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3218
iadd
sipush 12288
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3219
iadd
sipush 13205
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3220
iadd
bipush 27
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3223
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3224
iadd
sipush 12716
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3225
iadd
bipush 111
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3228
iadd
sipush 14336
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3229
iadd
sipush 16128
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3230
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3231
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3232
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3235
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3236
iadd
sipush 16369
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3237
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3238
iadd
sipush 32767
ifne jump20
iconst_1
goto jump21
jump20:
iconst_0
jump21:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3239
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3244
iadd
sipush 12624
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3245
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3246
iadd
sipush 1360
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3247
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3248
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3249
iadd
bipush 60
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3250
iadd
sipush 26624
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3251
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3252
iadd
bipush 51
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3255
iadd
sipush 24576
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3256
iadd
sipush 12710
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3257
iadd
sipush 205
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3260
iadd
sipush 3840
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3261
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3262
iadd
bipush 7
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3263
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3264
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3266
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3267
iadd
sipush 2049
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3268
iadd
bipush 63
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3269
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3271
iadd
bipush 126
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3275
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3276
iadd
sipush 12623
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3277
iadd
sipush 16213
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3278
iadd
sipush 1040
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3279
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3280
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3281
iadd
bipush 60
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3282
iadd
sipush 9216
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3283
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3284
iadd
bipush 102
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3287
iadd
sipush 28672
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3288
iadd
sipush 12711
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3289
iadd
sipush 409
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3292
iadd
sipush 480
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3293
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3294
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3295
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3296
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3298
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3299
iadd
sipush 6145
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3300
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3301
iadd
iconst_4
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3303
iadd
sipush 1020
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3307
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3308
iadd
sipush 12303
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3309
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3310
iadd
sipush 9232
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3311
iadd
sipush 1544
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3312
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3313
iadd
bipush 60
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3314
iadd
sipush 30208
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3315
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3316
iadd
sipush 510
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3319
iadd
sipush 10240
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3320
iadd
sipush 12709
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3321
iadd
sipush 2041
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3324
iadd
bipush 60
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3325
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3326
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3327
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3328
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3330
iadd
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3331
iadd
sipush 30721
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3332
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3333
iadd
bipush 12
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3335
iadd
sipush 8176
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3339
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3340
iadd
sipush 12303
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3341
iadd
sipush 16213
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3342
iadd
sipush 1360
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3343
iadd
sipush 23036
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3344
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3345
iadd
bipush 126
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3346
iadd
sipush 7040
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3347
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3348
iadd
sipush 818
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3351
iadd
sipush 28160
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3352
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3353
iadd
sipush 3273
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3356
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3357
iadd
sipush 32767
ifne jump22
iconst_1
goto jump23
jump22:
iconst_0
jump23:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3358
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3359
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3360
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3362
iadd
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3363
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3364
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3367
iadd
sipush 32736
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3370
iadd
sipush 2016
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3371
iadd
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3372
iadd
sipush 12621
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3373
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3374
iadd
sipush 1025
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3375
iadd
sipush 1641
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3376
iadd
sipush 2043
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3377
iadd
bipush 127
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3378
iadd
sipush 7904
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3379
iadd
sipush 20457
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3380
iadd
sipush 3810
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3383
iadd
sipush 31616
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3384
iadd
sipush 16292
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3385
iadd
sipush 15241
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3387
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3388
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3390
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3391
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3392
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3394
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3395
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3396
iadd
sipush 16382
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3399
iadd
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3402
iadd
sipush 4080
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3403
iadd
sipush 132
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3404
iadd
sipush 12621
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3405
iadd
sipush 171
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3406
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3407
iadd
sipush 1537
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3408
iadd
sipush 1227
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3409
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3410
iadd
sipush 5048
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3411
iadd
sipush 20457
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3412
iadd
sipush 15266
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3415
iadd
sipush 20192
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3416
iadd
sipush 16292
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3417
iadd
sipush 4471
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3419
iadd
sipush 30720
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3422
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3423
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3424
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3425
iadd
sipush 32767
ifne jump24
iconst_1
goto jump25
jump24:
iconst_0
jump25:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3426
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3427
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3428
iadd
sipush 16376
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3431
iadd
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3432
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3434
iadd
sipush 4080
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3435
iadd
sipush 30852
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3436
iadd
sipush 4429
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3437
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3438
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3439
iadd
sipush 22935
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3440
iadd
sipush 1227
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3441
iadd
sipush 219
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3442
iadd
sipush 4558
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3443
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3444
iadd
sipush 28450
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3447
iadd
sipush 18232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3448
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3449
iadd
sipush 17271
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3450
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3451
iadd
sipush 3584
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3454
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3455
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3456
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3457
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3458
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3459
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3460
iadd
sipush 8160
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3463
iadd
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3464
iadd
sipush 31793
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3465
iadd
sipush 975
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3466
iadd
sipush 8176
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3467
iadd
sipush 30868
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3468
iadd
sipush 4109
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3469
iadd
sipush 171
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3470
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3471
iadd
sipush 1537
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3472
iadd
sipush 2043
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3473
iadd
sipush 32513
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3474
iadd
sipush 4403
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3475
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3476
iadd
sipush 1758
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3477
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3479
iadd
sipush 17614
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3480
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3481
iadd
sipush 7031
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3482
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3483
iadd
sipush 960
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3487
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3488
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3489
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3490
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3491
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3492
iadd
sipush 3968
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3495
iadd
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3496
iadd
sipush 31793
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3497
iadd
sipush 975
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3498
iadd
sipush 8176
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3499
iadd
sipush 30865
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3500
iadd
sipush 4109
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3501
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3502
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3503
iadd
sipush 1025
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3504
iadd
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3505
iadd
sipush 7937
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3506
iadd
sipush 4414
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3507
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3508
iadd
sipush 28962
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3509
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3510
iadd
sipush 32767
ifne jump26
iconst_1
goto jump27
jump26:
iconst_0
jump27:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3511
iadd
sipush 17659
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3512
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3513
iadd
sipush 15223
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3514
iadd
bipush 29
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3515
iadd
bipush 120
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3519
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3520
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3521
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3522
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3523
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3524
iadd
sipush 3840
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3526
iadd
bipush 64
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3527
iadd
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3528
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3529
iadd
sipush 7217
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3530
iadd
sipush 6833
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3531
iadd
sipush 129
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3532
iadd
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3533
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3534
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3535
iadd
sipush 1025
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3536
iadd
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3537
iadd
sipush 30939
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3538
iadd
sipush 4391
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3539
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3540
iadd
sipush 11998
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3541
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3542
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3543
iadd
sipush 17565
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3544
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3545
iadd
sipush 17545
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3546
iadd
bipush 127
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3547
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3551
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3552
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3553
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3554
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3555
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3556
iadd
sipush 1920
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3558
iadd
bipush 96
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3559
iadd
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3560
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3561
iadd
sipush 7217
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3562
iadd
sipush 24591
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3563
iadd
sipush 30849
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3564
iadd
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3565
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3566
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3567
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3568
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3569
iadd
sipush 12289
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3570
iadd
sipush 4389
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3571
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3572
iadd
sipush 4386
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3573
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3574
iadd
sipush 15360
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3575
iadd
sipush 17559
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3576
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3577
iadd
sipush 17545
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3578
iadd
sipush 7172
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3579
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3583
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3584
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3585
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3587
iadd
sipush 4092
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3588
iadd
sipush 1920
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3590
iadd
bipush 56
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3591
iadd
bipush 64
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3592
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3593
iadd
sipush 7217
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3594
iadd
sipush 25921
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3595
iadd
sipush 30721
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3596
iadd
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3597
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3598
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3599
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3600
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3601
iadd
sipush 32255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3602
iadd
sipush 4388
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3603
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3604
iadd
sipush 4386
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3605
iadd
sipush 2041
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3606
iadd
sipush 2112
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3607
iadd
sipush 17553
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3608
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3609
iadd
sipush 17545
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3610
iadd
sipush 16356
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3615
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3616
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3617
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3619
iadd
sipush 3584
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3620
iadd
sipush 960
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3622
iadd
bipush 60
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3623
iadd
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3624
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3625
iadd
sipush 7169
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3626
iadd
sipush 24577
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3627
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3628
iadd
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3629
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3630
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3631
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3632
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3633
iadd
sipush 20479
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3634
iadd
sipush 4388
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3635
iadd
sipush 19561
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3636
iadd
sipush 4386
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3637
iadd
bipush 55
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3638
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3639
iadd
sipush 17553
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3640
iadd
sipush 12708
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3641
iadd
sipush 17545
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3642
iadd
sipush 1828
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3644
iadd
sipush 1008
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3645
iadd
sipush 2048
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3647
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3648
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3649
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3651
iadd
sipush 3968
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3652
iadd
sipush 448
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3654
iadd
bipush 62
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3655
iadd
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3656
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3657
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3658
iadd
sipush 1345
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3659
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3660
iadd
iconst_5
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3661
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3662
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3663
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3664
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3665
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3666
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3667
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3668
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3669
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3670
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3671
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3672
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3673
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3674
iadd
sipush 511
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3676
iadd
sipush 510
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3677
iadd
sipush 3584
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3679
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3680
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3681
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3683
iadd
sipush 4032
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3684
iadd
sipush 224
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3686
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3687
iadd
sipush 7184
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3688
iadd
sipush 32767
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3689
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3690
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3691
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3692
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3693
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3694
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3695
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3696
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3697
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3698
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3699
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3704
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3706
iadd
bipush 96
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3707
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3708
iadd
bipush 127
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3709
iadd
sipush 3968
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3711
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3712
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3713
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3715
iadd
sipush 4088
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3716
iadd
bipush 96
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3717
iadd
sipush 32767
ifne jump28
iconst_1
goto jump29
jump28:
iconst_0
jump29:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3718
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3719
iadd
sipush 32520
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3720
iadd
sipush 32767
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3721
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3722
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3723
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3724
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3725
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3726
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3727
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3728
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3729
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3730
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3731
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3736
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3738
iadd
sipush 32712
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3739
iadd
bipush 61
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3740
iadd
bipush 63
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3741
iadd
sipush 4032
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3743
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3744
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3747
iadd
sipush 4094
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3748
iadd
bipush 32
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3749
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3750
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3751
iadd
bipush 56
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3752
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3753
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3754
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3755
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3756
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3757
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3758
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3759
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3760
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3761
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3762
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3763
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3768
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3770
iadd
sipush 32754
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3771
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3772
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3773
iadd
sipush 2016
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3774
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3775
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3776
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3778
iadd
sipush 32767
ifne jump30
iconst_1
goto jump31
jump30:
iconst_0
jump31:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3779
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3781
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3782
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3783
iadd
bipush 24
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3784
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3785
iadd
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3786
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3787
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3788
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3789
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3790
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3791
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3792
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3793
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3794
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3795
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3800
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3801
iadd
sipush 32767
ifne jump32
iconst_1
goto jump33
jump32:
iconst_0
jump33:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3802
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3803
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3804
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3805
iadd
sipush 2032
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3806
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3807
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3808
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3810
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3811
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3813
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3814
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3816
iadd
bipush 32
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3817
iadd
bipush 127
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3818
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3819
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3820
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3821
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3822
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3823
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3824
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3825
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3826
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3827
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3832
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3833
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3834
iadd
sipush 384
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3835
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3836
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3837
iadd
sipush 2044
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3838
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3839
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3840
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3842
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3843
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3845
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3846
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3848
iadd
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3849
iadd
sipush 509
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3850
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3851
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3852
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3853
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3854
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3855
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3856
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3857
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3858
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3859
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3864
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3865
iadd
sipush 15360
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3866
iadd
sipush 448
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3867
iadd
iconst_2
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3869
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3870
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3871
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3872
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3874
iadd
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3875
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3877
iadd
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3878
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3880
iadd
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3881
iadd
sipush 4093
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3882
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3883
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3884
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3885
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3886
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3887
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3888
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3889
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3890
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3891
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3896
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3897
iadd
sipush 1792
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3898
iadd
sipush 480
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3899
iadd
sipush 32764
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3900
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3901
iadd
sipush 2047
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3902
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3903
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3904
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3906
iadd
sipush 128
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3907
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3909
iadd
sipush 256
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3910
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3912
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3913
iadd
sipush 16377
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3914
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3915
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3916
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3917
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3918
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3919
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3920
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3921
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3922
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3923
iadd
sipush 3839
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3928
iadd
sipush 15232
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3929
iadd
sipush 448
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3930
iadd
sipush 496
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3931
iadd
sipush 8184
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3932
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3933
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3934
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3935
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3936
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3937
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3938
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3939
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3940
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3941
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3942
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3943
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3944
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3945
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3946
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3947
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3948
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3949
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3950
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3951
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3952
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3953
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3954
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3955
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3956
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3957
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3958
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3959
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3960
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3961
iadd
sipush 8191
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3962
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3963
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3964
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3965
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3966
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3967
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3968
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3969
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3970
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3971
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3972
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3973
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3974
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3975
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3976
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3977
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3978
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3979
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3980
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3981
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3982
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3983
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3984
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3985
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3986
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3987
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3988
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3989
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3990
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3991
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3992
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3993
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3994
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3995
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3996
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3997
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3998
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 3999
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4000
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4001
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4002
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4003
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4004
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4005
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4006
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4007
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4008
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4009
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4010
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4011
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4012
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4013
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4014
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4015
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4016
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4017
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4018
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4019
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4020
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4021
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4022
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4023
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4024
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4025
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4026
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4027
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4028
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4029
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4030
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4031
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4032
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4033
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4034
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4035
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4036
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4037
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4038
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4039
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4040
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4041
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4042
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4043
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4044
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4045
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4046
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4047
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4048
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4049
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4050
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4051
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4052
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4053
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4054
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4055
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4056
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4057
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4058
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4059
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4060
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4061
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4062
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4063
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4064
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4065
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4066
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4067
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4068
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4069
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4070
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4071
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4072
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4073
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4074
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4075
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4076
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4077
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4078
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4079
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4080
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4081
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4082
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4083
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4084
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4085
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4086
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4087
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4088
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4089
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4090
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4091
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4092
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4093
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4094
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4095
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4096
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4097
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4098
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4099
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4100
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4101
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4102
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4103
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4104
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4105
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4106
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4107
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4108
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4109
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4110
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4111
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4112
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4113
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4114
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4115
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4116
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4117
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4118
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4119
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4120
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4121
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4122
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4123
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4124
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4125
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4126
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4127
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4128
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4129
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4130
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4131
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4132
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4133
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4134
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4135
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4136
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4137
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4138
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4139
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4140
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4141
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4142
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4143
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4144
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4145
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4146
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4147
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4148
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4149
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4150
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4151
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4152
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4153
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4154
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4155
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4156
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4157
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4158
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4159
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4160
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4161
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4162
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4163
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4164
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4165
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4166
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4167
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4168
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4169
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4170
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4171
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4172
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4173
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4174
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4175
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4176
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4177
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4178
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4179
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4180
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4181
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4182
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4183
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4184
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4185
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4186
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4187
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4188
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4189
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4190
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4191
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4192
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4193
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4194
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4195
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4196
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4197
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4198
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4199
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4200
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4201
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4202
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4203
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4204
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4205
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4206
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4207
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4208
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4209
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4210
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4211
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4212
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4213
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4214
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4215
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4216
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4217
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4218
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4219
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4220
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4221
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4222
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4223
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4224
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4225
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4226
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4227
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4228
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4229
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4230
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4231
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4232
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4233
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4234
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4235
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4236
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4237
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4238
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4239
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4240
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4241
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4242
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4243
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4244
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4245
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4246
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4247
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4248
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4249
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4250
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4251
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4252
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4253
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4254
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4255
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4256
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4257
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4287
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4288
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4289
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4319
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4320
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4350
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4351
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4352
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4382
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4383
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4384
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4414
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4415
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4416
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4428
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4429
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4434
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4435
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4446
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4447
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4448
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4460
iadd
sipush 16320
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4467
iadd
sipush 1020
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4478
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4479
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4480
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4491
iadd
sipush 32767
ifne jump34
iconst_1
goto jump35
jump34:
iconst_0
jump35:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4492
iadd
bipush 127
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4499
iadd
sipush 512
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4500
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4510
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4511
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4512
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4523
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4532
iadd
sipush 255
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4542
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4543
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4544
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4555
iadd
sipush 2040
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4564
iadd
sipush 8176
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4574
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4575
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4576
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4586
iadd
sipush 32767
ifne jump36
iconst_1
goto jump37
jump36:
iconst_0
jump37:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4587
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4596
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4597
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4606
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4607
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4608
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4609
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4618
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4619
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4628
iadd
sipush 32767
ifne jump38
iconst_1
goto jump39
jump38:
iconst_0
jump39:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4629
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4639
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4640
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4641
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4650
iadd
sipush 3968
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4661
iadd
sipush 496
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4671
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4672
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4673
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4682
iadd
sipush 252
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4693
iadd
sipush 16128
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4703
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4704
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4705
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4713
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4714
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4725
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4726
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4735
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4736
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4737
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4745
iadd
sipush 32512
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4758
iadd
bipush 126
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4767
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4768
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4769
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4777
iadd
sipush 480
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4790
iadd
sipush 8128
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4799
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4800
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4801
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4809
iadd
bipush 63
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4822
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4823
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4831
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4832
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4833
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4840
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4841
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4854
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4855
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4863
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4864
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4865
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4872
iadd
sipush 4080
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4887
iadd
sipush 4080
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4895
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4896
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4904
iadd
bipush 63
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4919
iadd
sipush 1024
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4920
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4926
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4927
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4928
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4935
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4936
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4951
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4952
iadd
bipush 127
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4958
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4959
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4960
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4967
iadd
sipush 7936
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4984
iadd
sipush 1008
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4990
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4991
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4992
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4999
iadd
sipush 1016
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5016
iadd
sipush 16368
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5022
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5023
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5024
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5030
iadd
sipush 32767
ifne jump40
iconst_1
goto jump41
jump40:
iconst_0
jump41:
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5031
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5048
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5049
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5054
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5055
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5056
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5062
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5081
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5086
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5087
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5088
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5094
iadd
sipush 3840
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5113
iadd
sipush 496
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5118
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5119
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5120
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5126
iadd
sipush 504
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5145
iadd
sipush 16128
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5150
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5151
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5152
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5157
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5158
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5177
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5178
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5182
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5183
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5184
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5185
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5189
iadd
sipush 16320
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5210
iadd
sipush 510
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5215
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5216
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5217
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5221
iadd
bipush 127
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5242
iadd
sipush 3840
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5247
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5248
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5249
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5252
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5253
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5274
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5275
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5279
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5280
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5281
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5284
iadd
sipush 7936
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5306
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5307
iadd
sipush 511
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5311
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5312
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5313
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5316
iadd
sipush 496
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5339
iadd
sipush 32752
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5343
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5344
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5345
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5348
iadd
bipush 31
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5371
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5372
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5375
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5376
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5377
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5379
iadd
sipush 2048
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5380
iadd
iconst_1
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5403
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5404
iadd
bipush 63
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5407
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5408
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5409
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5411
iadd
sipush 3968
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5436
iadd
sipush 480
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5439
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5440
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5441
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5443
iadd
sipush 252
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5468
iadd
sipush 16128
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5471
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5472
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5474
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5475
iadd
bipush 7
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5500
iadd
sipush 8192
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5501
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5502
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5503
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5504
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5506
iadd
sipush 32256
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5533
iadd
bipush 126
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5534
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5535
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5536
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5538
iadd
sipush 960
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5565
iadd
sipush 960
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5566
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5567
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5568
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5570
iadd
bipush 120
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5597
iadd
sipush 7680
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5598
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5599
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5600
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5601
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5602
iadd
bipush 15
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5629
iadd
sipush 4096
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5630
iadd
iconst_1
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5631
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5632
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5662
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5663
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5664
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5694
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5695
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5696
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5726
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5727
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5728
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5758
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5759
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5760
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5761
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5791
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5792
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5793
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5823
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5824
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5825
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5855
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5856
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5857
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5887
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5888
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5889
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5919
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5920
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5921
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5951
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5952
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5953
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5983
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5984
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5985
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6015
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6016
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6017
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6047
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6048
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6078
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6079
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6080
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6110
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6111
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6112
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6142
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6143
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6144
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6174
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6175
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6176
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6206
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6207
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6208
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6238
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6239
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6240
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6270
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6271
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6272
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6302
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6303
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6304
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6334
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6335
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6336
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6337
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6367
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6368
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6369
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6399
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6400
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6401
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6431
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6432
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6433
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6463
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6464
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6465
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6495
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6496
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6497
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6527
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6528
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6529
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6559
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6560
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6561
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6591
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6592
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6593
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6623
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6624
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6654
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6655
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6656
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6686
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6687
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6688
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6718
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6719
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6720
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6750
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6751
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6752
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6782
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6783
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6784
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6814
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6815
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6816
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6846
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6847
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6848
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6878
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6879
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6880
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6910
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6911
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6912
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6913
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6943
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6944
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6945
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6975
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6976
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6977
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7007
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7008
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7009
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7039
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7040
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7041
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7071
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7072
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7073
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7103
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7104
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7105
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7135
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7136
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7137
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7167
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7168
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7169
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7199
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7200
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7230
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7231
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7232
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7262
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7263
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7264
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7294
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7295
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7296
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7326
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7327
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7328
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7358
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7359
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7360
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7390
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7391
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7392
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7422
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7423
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7424
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7454
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7455
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7456
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7486
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7487
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7488
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7489
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7519
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7520
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7521
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7551
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7552
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7553
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7583
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7584
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7585
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7615
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7616
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7617
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7647
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7648
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7649
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7679
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7680
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7681
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7711
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7712
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7713
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7743
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7744
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7745
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7775
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7776
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7806
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7807
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7808
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7838
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7839
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7840
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7870
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7871
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7872
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7902
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7903
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7904
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7934
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7935
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7936
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7966
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7967
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7968
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7998
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7999
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8000
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8030
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8031
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8032
iadd
sipush 16383
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8062
iadd
bipush 8
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8063
iadd
iconst_3
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8064
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8065
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8095
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8096
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8097
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8127
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8128
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8129
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8159
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8160
iadd
sipush 16384
ineg
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8161
iadd
sipush 4095
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8191
iadd
iconst_4
ineg
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoad1(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4303
iadd
sipush 1024
iload 1
sipush 4303
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4304
iadd
bipush 32
iload 1
sipush 4304
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4335
iadd
sipush 512
iload 1
sipush 4335
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4336
iadd
bipush 96
iload 1
sipush 4336
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4398
iadd
sipush 128
iload 1
sipush 4398
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4399
iadd
sipush 384
iload 1
sipush 4399
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4400
iadd
sipush 128
iload 1
sipush 4400
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4401
iadd
sipush 128
iload 1
sipush 4401
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4462
iadd
bipush 6
iload 1
sipush 4462
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4463
iadd
bipush 96
iload 1
sipush 4463
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4464
iadd
sipush 768
iload 1
sipush 4464
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4465
iadd
sipush 12288
iload 1
sipush 4465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4493
iadd
sipush 32767
ifne jump42
iconst_1
goto jump43
jump42:
iconst_0
jump43:
iload 1
sipush 4493
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4494
iadd
iconst_1
iload 1
sipush 4494
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4495
iadd
bipush 48
iload 1
sipush 4495
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4496
iadd
sipush 1536
iload 1
sipush 4496
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4497
iadd
sipush 16384
ineg
iload 1
sipush 4497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4589
iadd
sipush 384
iload 1
sipush 4589
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4591
iadd
bipush 14
iload 1
sipush 4591
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4592
iadd
sipush 14336
iload 1
sipush 4592
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4594
iadd
sipush 448
iload 1
sipush 4594
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4621
iadd
bipush 112
iload 1
sipush 4621
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4623
iadd
bipush 7
iload 1
sipush 4623
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4624
iadd
sipush 28672
iload 1
sipush 4624
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4626
iadd
sipush 1792
iload 1
sipush 4626
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4653
iadd
bipush 28
iload 1
sipush 4653
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4654
iadd
sipush 32767
ifne jump44
iconst_1
goto jump45
jump44:
iconst_0
jump45:
iload 1
sipush 4654
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4655
iadd
iconst_3
iload 1
sipush 4655
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4656
iadd
sipush 8192
ineg
iload 1
sipush 4656
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4658
iadd
sipush 14336
iload 1
sipush 4658
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4685
iadd
iconst_2
iload 1
sipush 4685
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4686
iadd
sipush 32767
ifne jump46
iconst_1
goto jump47
jump46:
iconst_0
jump47:
iload 1
sipush 4686
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4687
iadd
iconst_1
iload 1
sipush 4687
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4688
iadd
sipush 16384
ineg
iload 1
sipush 4688
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4844
iadd
bipush 12
iload 1
sipush 4844
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4846
iadd
sipush 7168
iload 1
sipush 4846
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4849
iadd
bipush 28
iload 1
sipush 4849
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4851
iadd
sipush 6144
iload 1
sipush 4851
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4876
iadd
bipush 7
iload 1
sipush 4876
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4878
iadd
sipush 3584
iload 1
sipush 4878
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4881
iadd
bipush 60
iload 1
sipush 4881
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4883
iadd
sipush 4096
ineg
iload 1
sipush 4883
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4907
iadd
sipush 8192
ineg
iload 1
sipush 4907
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4908
iadd
iconst_1
iload 1
sipush 4908
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4910
iadd
sipush 3840
iload 1
sipush 4910
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4913
iadd
bipush 120
iload 1
sipush 4913
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4915
iadd
sipush 32767
ifne jump48
iconst_1
goto jump49
jump48:
iconst_0
jump49:
iload 1
sipush 4915
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4916
iadd
bipush 7
iload 1
sipush 4916
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4939
iadd
sipush 15360
iload 1
sipush 4939
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4942
iadd
sipush 1920
iload 1
sipush 4942
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4945
iadd
bipush 112
iload 1
sipush 4945
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4948
iadd
bipush 30
iload 1
sipush 4948
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4971
iadd
sipush 3840
iload 1
sipush 4971
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4974
iadd
sipush 960
iload 1
sipush 4974
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4977
iadd
sipush 224
iload 1
sipush 4977
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4980
iadd
sipush 240
iload 1
sipush 4980
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5003
iadd
sipush 480
iload 1
sipush 5003
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5006
iadd
sipush 480
iload 1
sipush 5006
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5009
iadd
sipush 480
iload 1
sipush 5009
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5012
iadd
sipush 960
iload 1
sipush 5012
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5035
iadd
bipush 120
iload 1
sipush 5035
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5038
iadd
sipush 240
iload 1
sipush 5038
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5041
iadd
sipush 960
iload 1
sipush 5041
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5044
iadd
sipush 7680
iload 1
sipush 5044
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5067
iadd
bipush 15
iload 1
sipush 5067
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5070
iadd
sipush 240
iload 1
sipush 5070
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5073
iadd
sipush 1920
iload 1
sipush 5073
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5076
iadd
sipush 2048
ineg
iload 1
sipush 5076
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5098
iadd
sipush 8192
ineg
iload 1
sipush 5098
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5099
iadd
iconst_3
iload 1
sipush 5099
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5102
iadd
bipush 120
iload 1
sipush 5102
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5105
iadd
sipush 3840
iload 1
sipush 5105
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5108
iadd
sipush 16384
ineg
iload 1
sipush 5108
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5109
iadd
iconst_3
iload 1
sipush 5109
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5130
iadd
sipush 28672
iload 1
sipush 5130
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5134
iadd
bipush 60
iload 1
sipush 5134
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5137
iadd
sipush 3584
iload 1
sipush 5137
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5141
iadd
bipush 7
iload 1
sipush 5141
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5741
iadd
bipush 124
iload 1
sipush 5741
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5767
iadd
sipush 448
iload 1
sipush 5767
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5773
iadd
bipush 62
iload 1
sipush 5773
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5778
iadd
sipush 15872
iload 1
sipush 5778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5799
iadd
sipush 2032
iload 1
sipush 5799
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5804
iadd
sipush 32767
ifne jump50
iconst_1
goto jump51
jump50:
iconst_0
jump51:
iload 1
sipush 5804
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5805
iadd
bipush 31
iload 1
sipush 5805
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5810
iadd
sipush 32256
iload 1
sipush 5810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5816
iadd
sipush 4064
iload 1
sipush 5816
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5831
iadd
sipush 508
iload 1
sipush 5831
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5836
iadd
sipush 16384
ineg
iload 1
sipush 5836
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5837
iadd
bipush 15
iload 1
sipush 5837
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5842
iadd
sipush 1024
ineg
iload 1
sipush 5842
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5848
iadd
sipush 16256
iload 1
sipush 5848
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5862
iadd
sipush 32767
ifne jump52
iconst_1
goto jump53
jump52:
iconst_0
jump53:
iload 1
sipush 5862
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5863
iadd
bipush 63
iload 1
sipush 5863
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5868
iadd
sipush 8192
ineg
iload 1
sipush 5868
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5869
iadd
bipush 7
iload 1
sipush 5869
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5874
iadd
sipush 2048
ineg
iload 1
sipush 5874
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5875
iadd
iconst_1
iload 1
sipush 5875
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5880
iadd
sipush 1024
ineg
iload 1
sipush 5880
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5881
iadd
iconst_1
iload 1
sipush 5881
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5894
iadd
sipush 8192
ineg
iload 1
sipush 5894
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5895
iadd
bipush 15
iload 1
sipush 5895
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5900
iadd
sipush 4096
ineg
iload 1
sipush 5900
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5901
iadd
bipush 7
iload 1
sipush 5901
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5906
iadd
sipush 2048
ineg
iload 1
sipush 5906
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5907
iadd
iconst_3
iload 1
sipush 5907
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5912
iadd
sipush 4096
ineg
iload 1
sipush 5912
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5913
iadd
bipush 7
iload 1
sipush 5913
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5926
iadd
sipush 1024
ineg
iload 1
sipush 5926
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5927
iadd
iconst_1
iload 1
sipush 5927
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5932
iadd
sipush 2048
ineg
iload 1
sipush 5932
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5933
iadd
iconst_3
iload 1
sipush 5933
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5938
iadd
sipush 4096
ineg
iload 1
sipush 5938
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5939
iadd
bipush 7
iload 1
sipush 5939
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5944
iadd
sipush 32767
ifne jump54
iconst_1
goto jump55
jump54:
iconst_0
jump55:
iload 1
sipush 5944
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5945
iadd
bipush 63
iload 1
sipush 5945
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5958
iadd
sipush 32512
iload 1
sipush 5958
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5964
iadd
sipush 1024
ineg
iload 1
sipush 5964
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5965
iadd
iconst_1
iload 1
sipush 5965
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5970
iadd
sipush 8192
ineg
iload 1
sipush 5970
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5971
iadd
bipush 15
iload 1
sipush 5971
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5977
iadd
sipush 510
iload 1
sipush 5977
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5990
iadd
sipush 4064
iload 1
sipush 5990
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5996
iadd
sipush 512
ineg
iload 1
sipush 5996
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6002
iadd
sipush 16384
ineg
iload 1
sipush 6002
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6003
iadd
bipush 31
iload 1
sipush 6003
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6009
iadd
sipush 2032
iload 1
sipush 6009
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6022
iadd
sipush 1020
iload 1
sipush 6022
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6028
iadd
sipush 512
ineg
iload 1
sipush 6028
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6034
iadd
sipush 16384
ineg
iload 1
sipush 6034
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6035
iadd
bipush 31
iload 1
sipush 6035
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6041
iadd
sipush 16320
iload 1
sipush 6041
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6054
iadd
bipush 127
iload 1
sipush 6054
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6060
iadd
sipush 32512
iload 1
sipush 6060
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6066
iadd
sipush 32767
ifne jump56
iconst_1
goto jump57
jump56:
iconst_0
jump57:
iload 1
sipush 6066
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6067
iadd
bipush 63
iload 1
sipush 6067
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6073
iadd
sipush 512
ineg
iload 1
sipush 6073
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6085
iadd
sipush 8192
ineg
iload 1
sipush 6085
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6086
iadd
bipush 31
iload 1
sipush 6086
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6092
iadd
sipush 16256
iload 1
sipush 6092
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6099
iadd
bipush 127
iload 1
sipush 6099
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6105
iadd
sipush 2048
ineg
iload 1
sipush 6105
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6106
iadd
bipush 7
iload 1
sipush 6106
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6117
iadd
sipush 2048
ineg
iload 1
sipush 6117
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6118
iadd
iconst_3
iload 1
sipush 6118
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6124
iadd
sipush 8128
iload 1
sipush 6124
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6131
iadd
sipush 254
iload 1
sipush 6131
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6137
iadd
sipush 16384
ineg
iload 1
sipush 6137
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6138
iadd
bipush 63
iload 1
sipush 6138
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6149
iadd
sipush 256
ineg
iload 1
sipush 6149
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6156
iadd
sipush 4064
iload 1
sipush 6156
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6163
iadd
sipush 508
iload 1
sipush 6163
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6170
iadd
sipush 255
iload 1
sipush 6170
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6181
iadd
sipush 8128
iload 1
sipush 6181
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6188
iadd
sipush 4080
iload 1
sipush 6188
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6195
iadd
sipush 1020
iload 1
sipush 6195
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6202
iadd
sipush 2040
iload 1
sipush 6202
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6213
iadd
sipush 2040
iload 1
sipush 6213
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6220
iadd
sipush 2040
iload 1
sipush 6220
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6227
iadd
sipush 2040
iload 1
sipush 6227
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6234
iadd
sipush 8160
iload 1
sipush 6234
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6245
iadd
sipush 255
iload 1
sipush 6245
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6252
iadd
sipush 1020
iload 1
sipush 6252
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6259
iadd
sipush 4080
iload 1
sipush 6259
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6266
iadd
sipush 256
ineg
iload 1
sipush 6266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6276
iadd
sipush 16384
ineg
iload 1
sipush 6276
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6277
iadd
bipush 63
iload 1
sipush 6277
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6284
iadd
sipush 510
iload 1
sipush 6284
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6291
iadd
sipush 8160
iload 1
sipush 6291
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6298
iadd
sipush 1024
ineg
iload 1
sipush 6298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6299
iadd
bipush 7
iload 1
sipush 6299
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6308
iadd
sipush 2048
ineg
iload 1
sipush 6308
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6309
iadd
bipush 15
iload 1
sipush 6309
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6316
iadd
sipush 255
iload 1
sipush 6316
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6323
iadd
sipush 8160
iload 1
sipush 6323
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6330
iadd
sipush 8192
ineg
iload 1
sipush 6330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6331
iadd
bipush 31
iload 1
sipush 6331
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6340
iadd
sipush 512
ineg
iload 1
sipush 6340
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6341
iadd
iconst_1
iload 1
sipush 6341
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6348
iadd
sipush 255
iload 1
sipush 6348
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6355
iadd
sipush 16320
iload 1
sipush 6355
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6362
iadd
sipush 32767
ifne jump58
iconst_1
goto jump59
jump58:
iconst_0
jump59:
iload 1
sipush 6362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6363
iadd
sipush 255
iload 1
sipush 6363
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6372
iadd
sipush 16320
iload 1
sipush 6372
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6379
iadd
sipush 32767
ifne jump60
iconst_1
goto jump61
jump60:
iconst_0
jump61:
iload 1
sipush 6379
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6380
iadd
bipush 127
iload 1
sipush 6380
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6387
iadd
sipush 32640
iload 1
sipush 6387
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6395
iadd
sipush 1020
iload 1
sipush 6395
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6404
iadd
sipush 4088
iload 1
sipush 6404
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6411
iadd
sipush 16384
ineg
iload 1
sipush 6411
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6412
iadd
bipush 63
iload 1
sipush 6412
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6419
iadd
sipush 256
ineg
iload 1
sipush 6419
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6427
iadd
sipush 8160
iload 1
sipush 6427
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6436
iadd
sipush 1022
iload 1
sipush 6436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6443
iadd
sipush 8192
ineg
iload 1
sipush 6443
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6444
iadd
bipush 31
iload 1
sipush 6444
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6451
iadd
sipush 512
ineg
iload 1
sipush 6451
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6452
iadd
iconst_1
iload 1
sipush 6452
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6459
iadd
sipush 128
ineg
iload 1
sipush 6459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6467
iadd
sipush 16384
ineg
iload 1
sipush 6467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6468
iadd
bipush 127
iload 1
sipush 6468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6475
iadd
sipush 4096
ineg
iload 1
sipush 6475
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6476
iadd
bipush 15
iload 1
sipush 6476
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6483
iadd
sipush 512
ineg
iload 1
sipush 6483
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6484
iadd
iconst_3
iload 1
sipush 6484
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6491
iadd
sipush 512
ineg
iload 1
sipush 6491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6492
iadd
iconst_3
iload 1
sipush 6492
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6499
iadd
sipush 4096
ineg
iload 1
sipush 6499
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6500
iadd
bipush 31
iload 1
sipush 6500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6507
iadd
sipush 2048
ineg
iload 1
sipush 6507
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6508
iadd
bipush 15
iload 1
sipush 6508
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6515
iadd
sipush 1024
ineg
iload 1
sipush 6515
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6516
iadd
bipush 7
iload 1
sipush 6516
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6523
iadd
sipush 4096
ineg
iload 1
sipush 6523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6524
iadd
bipush 31
iload 1
sipush 6524
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6531
iadd
sipush 512
ineg
iload 1
sipush 6531
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6532
iadd
iconst_3
iload 1
sipush 6532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6539
iadd
sipush 1024
ineg
iload 1
sipush 6539
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6540
iadd
bipush 7
iload 1
sipush 6540
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6547
iadd
sipush 2048
ineg
iload 1
sipush 6547
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6548
iadd
bipush 15
iload 1
sipush 6548
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6555
iadd
sipush 32767
ifne jump62
iconst_1
goto jump63
jump62:
iconst_0
jump63:
iload 1
sipush 6555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6556
iadd
bipush 127
iload 1
sipush 6556
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6563
iadd
sipush 32640
iload 1
sipush 6563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6571
iadd
sipush 512
ineg
iload 1
sipush 6571
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6572
iadd
iconst_3
iload 1
sipush 6572
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6579
iadd
sipush 4096
ineg
iload 1
sipush 6579
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6580
iadd
bipush 15
iload 1
sipush 6580
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6588
iadd
sipush 1022
iload 1
sipush 6588
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6595
iadd
sipush 8176
iload 1
sipush 6595
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6603
iadd
sipush 256
ineg
iload 1
sipush 6603
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6604
iadd
iconst_1
iload 1
sipush 6604
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6611
iadd
sipush 8192
ineg
iload 1
sipush 6611
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6612
iadd
bipush 31
iload 1
sipush 6612
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6620
iadd
sipush 8184
iload 1
sipush 6620
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6627
iadd
sipush 2046
iload 1
sipush 6627
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6635
iadd
sipush 128
ineg
iload 1
sipush 6635
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6643
iadd
sipush 8192
ineg
iload 1
sipush 6643
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6644
iadd
bipush 63
iload 1
sipush 6644
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6652
iadd
sipush 32704
iload 1
sipush 6652
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6658
iadd
sipush 32767
ifne jump64
iconst_1
goto jump65
jump64:
iconst_0
jump65:
iload 1
sipush 6658
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6659
iadd
sipush 255
iload 1
sipush 6659
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6667
iadd
bipush 64
ineg
iload 1
sipush 6667
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6675
iadd
sipush 16384
ineg
iload 1
sipush 6675
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6676
iadd
bipush 127
iload 1
sipush 6676
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6684
iadd
sipush 256
ineg
iload 1
sipush 6684
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6685
iadd
iconst_3
iload 1
sipush 6685
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6690
iadd
sipush 4096
ineg
iload 1
sipush 6690
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6691
iadd
bipush 63
iload 1
sipush 6691
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6699
iadd
sipush 32704
iload 1
sipush 6699
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6707
iadd
sipush 32767
ifne jump66
iconst_1
goto jump67
jump66:
iconst_0
jump67:
iload 1
sipush 6707
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6708
iadd
sipush 255
iload 1
sipush 6708
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6716
iadd
sipush 2048
ineg
iload 1
sipush 6716
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6717
iadd
bipush 15
iload 1
sipush 6717
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6722
iadd
sipush 1024
ineg
iload 1
sipush 6722
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6723
iadd
bipush 7
iload 1
sipush 6723
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6731
iadd
sipush 16352
iload 1
sipush 6731
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6740
iadd
sipush 511
iload 1
sipush 6740
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6748
iadd
sipush 16384
ineg
iload 1
sipush 6748
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6749
iadd
bipush 127
iload 1
sipush 6749
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6754
iadd
sipush 128
ineg
iload 1
sipush 6754
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6755
iadd
iconst_1
iload 1
sipush 6755
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6763
iadd
sipush 8176
iload 1
sipush 6763
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6772
iadd
sipush 1023
iload 1
sipush 6772
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6781
iadd
sipush 1023
iload 1
sipush 6781
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6786
iadd
sipush 16368
iload 1
sipush 6786
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6795
iadd
sipush 4088
iload 1
sipush 6795
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6804
iadd
sipush 2046
iload 1
sipush 6804
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6813
iadd
sipush 4088
iload 1
sipush 6813
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6818
iadd
sipush 4092
iload 1
sipush 6818
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6827
iadd
sipush 4092
iload 1
sipush 6827
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6836
iadd
sipush 4092
iload 1
sipush 6836
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6845
iadd
sipush 32736
iload 1
sipush 6845
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6849
iadd
sipush 32767
ifne jump68
iconst_1
goto jump69
jump68:
iconst_0
jump69:
iload 1
sipush 6849
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6850
iadd
sipush 511
iload 1
sipush 6850
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6859
iadd
sipush 2046
iload 1
sipush 6859
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6868
iadd
sipush 4088
iload 1
sipush 6868
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6877
iadd
sipush 256
ineg
iload 1
sipush 6877
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6878
iadd
iconst_3
iload 1
sipush 6878
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6881
iadd
sipush 8192
ineg
iload 1
sipush 6881
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6882
iadd
bipush 127
iload 1
sipush 6882
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6891
iadd
sipush 1023
iload 1
sipush 6891
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6900
iadd
sipush 8176
iload 1
sipush 6900
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6909
iadd
sipush 1024
ineg
iload 1
sipush 6909
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6910
iadd
bipush 7
iload 1
sipush 6910
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6913
iadd
sipush 4096
ineg
iload 1
sipush 6913
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6914
iadd
bipush 15
iload 1
sipush 6914
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6922
iadd
sipush 32767
ifne jump70
iconst_1
goto jump71
jump70:
iconst_0
jump71:
iload 1
sipush 6922
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6923
iadd
sipush 511
iload 1
sipush 6923
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6932
iadd
sipush 16368
iload 1
sipush 6932
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6941
iadd
sipush 8192
ineg
iload 1
sipush 6941
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6942
iadd
bipush 7
iload 1
sipush 6942
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6945
iadd
sipush 4096
ineg
iload 1
sipush 6945
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6946
iadd
iconst_3
iload 1
sipush 6946
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6954
iadd
sipush 16384
ineg
iload 1
sipush 6954
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6955
iadd
sipush 255
iload 1
sipush 6955
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6964
iadd
sipush 32736
iload 1
sipush 6964
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6973
iadd
sipush 32767
ifne jump72
iconst_1
goto jump73
jump72:
iconst_0
jump73:
iload 1
sipush 6973
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6974
iadd
bipush 7
iload 1
sipush 6974
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6977
iadd
sipush 28672
iload 1
sipush 6977
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6986
iadd
sipush 8192
ineg
iload 1
sipush 6986
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6987
iadd
sipush 255
iload 1
sipush 6987
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6996
iadd
bipush 64
ineg
iload 1
sipush 6996
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7006
iadd
iconst_4
iload 1
sipush 7006
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7009
iadd
sipush 4096
iload 1
sipush 7009
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7018
iadd
sipush 8192
ineg
iload 1
sipush 7018
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7019
iadd
bipush 127
iload 1
sipush 7019
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7028
iadd
sipush 128
ineg
iload 1
sipush 7028
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7029
iadd
iconst_1
iload 1
sipush 7029
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7050
iadd
sipush 4096
ineg
iload 1
sipush 7050
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7051
iadd
bipush 63
iload 1
sipush 7051
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7060
iadd
sipush 128
ineg
iload 1
sipush 7060
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7061
iadd
iconst_3
iload 1
sipush 7061
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7082
iadd
sipush 2048
ineg
iload 1
sipush 7082
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7083
iadd
bipush 31
iload 1
sipush 7083
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7092
iadd
sipush 256
ineg
iload 1
sipush 7092
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7093
iadd
bipush 7
iload 1
sipush 7093
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7114
iadd
sipush 1024
ineg
iload 1
sipush 7114
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7115
iadd
bipush 15
iload 1
sipush 7115
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7124
iadd
sipush 512
ineg
iload 1
sipush 7124
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7125
iadd
bipush 15
iload 1
sipush 7125
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7146
iadd
sipush 512
ineg
iload 1
sipush 7146
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7147
iadd
bipush 15
iload 1
sipush 7147
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7156
iadd
sipush 1024
ineg
iload 1
sipush 7156
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7157
iadd
bipush 15
iload 1
sipush 7157
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7178
iadd
sipush 256
ineg
iload 1
sipush 7178
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7179
iadd
bipush 7
iload 1
sipush 7179
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7188
iadd
sipush 2048
ineg
iload 1
sipush 7188
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7189
iadd
bipush 31
iload 1
sipush 7189
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7210
iadd
sipush 128
ineg
iload 1
sipush 7210
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7211
iadd
iconst_3
iload 1
sipush 7211
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7220
iadd
sipush 2048
ineg
iload 1
sipush 7220
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7221
iadd
bipush 63
iload 1
sipush 7221
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7242
iadd
bipush 64
ineg
iload 1
sipush 7242
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7243
iadd
iconst_1
iload 1
sipush 7243
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7252
iadd
sipush 4096
ineg
iload 1
sipush 7252
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7253
iadd
bipush 127
iload 1
sipush 7253
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7274
iadd
bipush 32
ineg
iload 1
sipush 7274
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7284
iadd
sipush 8192
ineg
iload 1
sipush 7284
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7285
iadd
sipush 255
iload 1
sipush 7285
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7306
iadd
bipush 16
ineg
iload 1
sipush 7306
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7316
iadd
sipush 16384
ineg
iload 1
sipush 7316
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7317
iadd
sipush 511
iload 1
sipush 7317
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7338
iadd
sipush 32752
iload 1
sipush 7338
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7348
iadd
sipush 32767
ifne jump74
iconst_1
goto jump75
jump74:
iconst_0
jump75:
iload 1
sipush 7348
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7349
iadd
sipush 1023
iload 1
sipush 7349
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7370
iadd
sipush 16376
iload 1
sipush 7370
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7380
iadd
sipush 32767
ifne jump76
iconst_1
goto jump77
jump76:
iconst_0
jump77:
iload 1
sipush 7380
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7381
iadd
sipush 2047
iload 1
sipush 7381
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7402
iadd
sipush 8188
iload 1
sipush 7402
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7413
iadd
sipush 4095
iload 1
sipush 7413
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7434
iadd
sipush 4094
iload 1
sipush 7434
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7445
iadd
sipush 4094
iload 1
sipush 7445
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7466
iadd
sipush 4095
iload 1
sipush 7466
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7477
iadd
sipush 8188
iload 1
sipush 7477
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7497
iadd
sipush 32767
ifne jump78
iconst_1
goto jump79
jump78:
iconst_0
jump79:
iload 1
sipush 7497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7498
iadd
sipush 2047
iload 1
sipush 7498
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7509
iadd
sipush 16380
iload 1
sipush 7509
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7529
iadd
sipush 16384
ineg
iload 1
sipush 7529
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7530
iadd
sipush 1023
iload 1
sipush 7530
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7541
iadd
sipush 32760
iload 1
sipush 7541
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7561
iadd
sipush 8192
ineg
iload 1
sipush 7561
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7562
iadd
sipush 511
iload 1
sipush 7562
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7573
iadd
bipush 16
ineg
iload 1
sipush 7573
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7593
iadd
sipush 4096
ineg
iload 1
sipush 7593
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7594
iadd
sipush 255
iload 1
sipush 7594
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7605
iadd
bipush 32
ineg
iload 1
sipush 7605
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7606
iadd
iconst_1
iload 1
sipush 7606
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7625
iadd
sipush 2048
ineg
iload 1
sipush 7625
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7626
iadd
sipush 255
iload 1
sipush 7626
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7637
iadd
bipush 64
ineg
iload 1
sipush 7637
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7638
iadd
iconst_3
iload 1
sipush 7638
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7657
iadd
sipush 2048
ineg
iload 1
sipush 7657
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7658
iadd
bipush 127
iload 1
sipush 7658
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7669
iadd
bipush 64
ineg
iload 1
sipush 7669
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7670
iadd
bipush 7
iload 1
sipush 7670
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7689
iadd
sipush 1024
ineg
iload 1
sipush 7689
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7690
iadd
bipush 63
iload 1
sipush 7690
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7701
iadd
sipush 128
ineg
iload 1
sipush 7701
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7702
iadd
bipush 15
iload 1
sipush 7702
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7721
iadd
sipush 512
ineg
iload 1
sipush 7721
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7722
iadd
bipush 31
iload 1
sipush 7722
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7733
iadd
sipush 256
ineg
iload 1
sipush 7733
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7734
iadd
bipush 15
iload 1
sipush 7734
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7753
iadd
sipush 256
ineg
iload 1
sipush 7753
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7754
iadd
bipush 15
iload 1
sipush 7754
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7765
iadd
sipush 512
ineg
iload 1
sipush 7765
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7766
iadd
bipush 31
iload 1
sipush 7766
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7785
iadd
sipush 128
ineg
iload 1
sipush 7785
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7786
iadd
bipush 15
iload 1
sipush 7786
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7797
iadd
sipush 512
ineg
iload 1
sipush 7797
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7798
iadd
bipush 63
iload 1
sipush 7798
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7817
iadd
bipush 64
ineg
iload 1
sipush 7817
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7818
iadd
bipush 7
iload 1
sipush 7818
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7829
iadd
sipush 1024
ineg
iload 1
sipush 7829
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7830
iadd
bipush 127
iload 1
sipush 7830
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7849
iadd
bipush 32
ineg
iload 1
sipush 7849
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7850
iadd
iconst_3
iload 1
sipush 7850
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7861
iadd
sipush 2048
ineg
iload 1
sipush 7861
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7862
iadd
sipush 255
iload 1
sipush 7862
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7881
iadd
bipush 16
ineg
iload 1
sipush 7881
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7882
iadd
iconst_1
iload 1
sipush 7882
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7893
iadd
sipush 4096
ineg
iload 1
sipush 7893
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7894
iadd
sipush 511
iload 1
sipush 7894
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7913
iadd
bipush 8
ineg
iload 1
sipush 7913
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7925
iadd
sipush 8192
ineg
iload 1
sipush 7925
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7926
iadd
sipush 1023
iload 1
sipush 7926
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7945
iadd
iconst_4
ineg
iload 1
sipush 7945
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7957
iadd
sipush 8192
ineg
iload 1
sipush 7957
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7958
iadd
sipush 2047
iload 1
sipush 7958
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7977
iadd
sipush 32766
iload 1
sipush 7977
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7989
iadd
sipush 16384
ineg
iload 1
sipush 7989
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7990
iadd
sipush 4095
iload 1
sipush 7990
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8009
iadd
sipush 16382
iload 1
sipush 8009
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8021
iadd
sipush 32767
ifne jump80
iconst_1
goto jump81
jump80:
iconst_0
jump81:
iload 1
sipush 8021
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8022
iadd
sipush 4095
iload 1
sipush 8022
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8041
iadd
sipush 8191
iload 1
sipush 8041
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8054
iadd
sipush 8191
iload 1
sipush 8054
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8072
iadd
sipush 32767
ifne jump82
iconst_1
goto jump83
jump82:
iconst_0
jump83:
iload 1
sipush 8072
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8073
iadd
sipush 4095
iload 1
sipush 8073
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8086
iadd
sipush 16382
iload 1
sipush 8086
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8104
iadd
sipush 16384
ineg
iload 1
sipush 8104
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8105
iadd
sipush 4095
iload 1
sipush 8105
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8118
iadd
sipush 32766
iload 1
sipush 8118
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8136
iadd
sipush 8192
ineg
iload 1
sipush 8136
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8137
iadd
sipush 2047
iload 1
sipush 8137
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8150
iadd
iconst_4
ineg
iload 1
sipush 8150
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8168
iadd
sipush 4096
ineg
iload 1
sipush 8168
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8169
iadd
sipush 1023
iload 1
sipush 8169
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8182
iadd
bipush 8
ineg
iload 1
sipush 8182
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 8183
iadd
iconst_1
iload 1
sipush 8183
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoad2(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4366
iadd
sipush 512
iload 1
sipush 4366
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4367
iadd
sipush 768
iload 1
sipush 4367
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4368
iadd
sipush 192
iload 1
sipush 4368
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4369
iadd
bipush 32
iload 1
sipush 4369
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4430
iadd
bipush 112
iload 1
sipush 4430
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4431
iadd
sipush 192
iload 1
sipush 4431
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4432
iadd
sipush 768
iload 1
sipush 4432
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4433
iadd
sipush 3584
iload 1
sipush 4433
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4462
iadd
bipush 24
iload 1
sipush 4462
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4465
iadd
sipush 2048
iload 1
sipush 4465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4525
iadd
sipush 28672
iload 1
sipush 4525
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4527
iadd
bipush 24
iload 1
sipush 4527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4528
iadd
sipush 1536
iload 1
sipush 4528
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4530
iadd
bipush 6
iload 1
sipush 4530
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4557
iadd
sipush 7168
iload 1
sipush 4557
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4559
iadd
bipush 28
iload 1
sipush 4559
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4560
iadd
sipush 3072
iload 1
sipush 4560
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4562
iadd
bipush 28
iload 1
sipush 4562
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4589
iadd
sipush 1536
iload 1
sipush 4589
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4594
iadd
bipush 48
iload 1
sipush 4594
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4684
iadd
sipush 32767
ifne jump84
iconst_1
goto jump85
jump84:
iconst_0
jump85:
iload 1
sipush 4684
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4685
iadd
iconst_1
iload 1
sipush 4685
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4689
iadd
iconst_1
iload 1
sipush 4689
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4690
iadd
sipush 16384
ineg
iload 1
sipush 4690
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4716
iadd
sipush 4096
ineg
iload 1
sipush 4716
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4718
iadd
sipush 16384
ineg
iload 1
sipush 4718
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4720
iadd
sipush 32767
ifne jump86
iconst_1
goto jump87
jump86:
iconst_0
jump87:
iload 1
sipush 4720
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4721
iadd
iconst_3
iload 1
sipush 4721
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4722
iadd
sipush 32767
ifne jump88
iconst_1
goto jump89
jump88:
iconst_0
jump89:
iload 1
sipush 4722
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4723
iadd
iconst_3
iload 1
sipush 4723
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4748
iadd
sipush 7168
iload 1
sipush 4748
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4750
iadd
sipush 24576
iload 1
sipush 4750
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4753
iadd
iconst_3
iload 1
sipush 4753
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4755
iadd
bipush 28
iload 1
sipush 4755
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4780
iadd
sipush 1920
iload 1
sipush 4780
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4782
iadd
sipush 12288
iload 1
sipush 4782
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4785
iadd
bipush 7
iload 1
sipush 4785
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4787
iadd
sipush 240
iload 1
sipush 4787
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4812
iadd
sipush 240
iload 1
sipush 4812
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4814
iadd
sipush 6144
iload 1
sipush 4814
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4817
iadd
bipush 6
iload 1
sipush 4817
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4819
iadd
sipush 1920
iload 1
sipush 4819
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4844
iadd
bipush 16
iload 1
sipush 4844
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4851
iadd
sipush 1024
iload 1
sipush 4851
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5137
iadd
sipush 4096
iload 1
sipush 5137
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5162
iadd
sipush 7168
iload 1
sipush 5162
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5166
iadd
bipush 14
iload 1
sipush 5166
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5169
iadd
sipush 15360
iload 1
sipush 5169
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5173
iadd
bipush 30
iload 1
sipush 5173
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5194
iadd
sipush 7936
iload 1
sipush 5194
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5198
iadd
bipush 15
iload 1
sipush 5198
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5201
iadd
sipush 15360
iload 1
sipush 5201
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5205
iadd
bipush 120
iload 1
sipush 5205
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5226
iadd
sipush 992
iload 1
sipush 5226
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5229
iadd
sipush 32767
ifne jump90
iconst_1
goto jump91
jump90:
iconst_0
jump91:
iload 1
sipush 5229
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5230
iadd
bipush 15
iload 1
sipush 5230
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5233
iadd
sipush 30720
iload 1
sipush 5233
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5237
iadd
sipush 496
iload 1
sipush 5237
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5258
iadd
sipush 252
iload 1
sipush 5258
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5261
iadd
sipush 16384
ineg
iload 1
sipush 5261
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5262
iadd
bipush 7
iload 1
sipush 5262
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5265
iadd
sipush 2048
ineg
iload 1
sipush 5265
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5269
iadd
sipush 3968
iload 1
sipush 5269
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5290
iadd
bipush 63
iload 1
sipush 5290
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5293
iadd
sipush 8192
ineg
iload 1
sipush 5293
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5294
iadd
iconst_3
iload 1
sipush 5294
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5297
iadd
sipush 4096
ineg
iload 1
sipush 5297
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5298
iadd
iconst_1
iload 1
sipush 5298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5301
iadd
sipush 31744
iload 1
sipush 5301
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5321
iadd
sipush 8192
ineg
iload 1
sipush 5321
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5322
iadd
bipush 15
iload 1
sipush 5322
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5325
iadd
sipush 4096
ineg
iload 1
sipush 5325
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5326
iadd
iconst_1
iload 1
sipush 5326
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5329
iadd
sipush 4096
ineg
iload 1
sipush 5329
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5330
iadd
iconst_1
iload 1
sipush 5330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5333
iadd
sipush 4096
ineg
iload 1
sipush 5333
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5334
iadd
iconst_1
iload 1
sipush 5334
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5353
iadd
sipush 1024
ineg
iload 1
sipush 5353
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5354
iadd
iconst_1
iload 1
sipush 5354
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5357
iadd
sipush 2048
ineg
iload 1
sipush 5357
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5361
iadd
sipush 8192
ineg
iload 1
sipush 5361
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5362
iadd
iconst_3
iload 1
sipush 5362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5365
iadd
sipush 16384
ineg
iload 1
sipush 5365
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5366
iadd
bipush 15
iload 1
sipush 5366
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5385
iadd
sipush 16128
iload 1
sipush 5385
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5389
iadd
sipush 31744
iload 1
sipush 5389
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5393
iadd
sipush 16384
ineg
iload 1
sipush 5393
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5394
iadd
bipush 7
iload 1
sipush 5394
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5398
iadd
bipush 127
iload 1
sipush 5398
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5417
iadd
sipush 4064
iload 1
sipush 5417
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5421
iadd
sipush 15872
iload 1
sipush 5421
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5425
iadd
sipush 16384
ineg
iload 1
sipush 5425
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5426
iadd
bipush 15
iload 1
sipush 5426
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5430
iadd
sipush 1016
iload 1
sipush 5430
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5449
iadd
sipush 508
iload 1
sipush 5449
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5453
iadd
sipush 16128
iload 1
sipush 5453
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5457
iadd
sipush 32767
ifne jump92
iconst_1
goto jump93
jump92:
iconst_0
jump93:
iload 1
sipush 5457
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5458
iadd
bipush 15
iload 1
sipush 5458
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5462
iadd
sipush 8176
iload 1
sipush 5462
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5480
iadd
sipush 32767
ifne jump94
iconst_1
goto jump95
jump94:
iconst_0
jump95:
iload 1
sipush 5480
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5481
iadd
bipush 63
iload 1
sipush 5481
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5485
iadd
sipush 8064
iload 1
sipush 5485
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5490
iadd
bipush 63
iload 1
sipush 5490
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5494
iadd
sipush 32640
iload 1
sipush 5494
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5512
iadd
sipush 2048
ineg
iload 1
sipush 5512
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5513
iadd
bipush 15
iload 1
sipush 5513
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5517
iadd
sipush 4032
iload 1
sipush 5517
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5522
iadd
bipush 127
iload 1
sipush 5522
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5526
iadd
sipush 512
ineg
iload 1
sipush 5526
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5527
iadd
bipush 7
iload 1
sipush 5527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5544
iadd
sipush 256
ineg
iload 1
sipush 5544
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5545
iadd
iconst_1
iload 1
sipush 5545
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5549
iadd
sipush 4064
iload 1
sipush 5549
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5554
iadd
sipush 254
iload 1
sipush 5554
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5558
iadd
sipush 4096
ineg
iload 1
sipush 5558
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5559
iadd
bipush 31
iload 1
sipush 5559
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5576
iadd
sipush 16320
iload 1
sipush 5576
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5581
iadd
sipush 2032
iload 1
sipush 5581
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5586
iadd
sipush 508
iload 1
sipush 5586
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5590
iadd
sipush 32767
ifne jump96
iconst_1
goto jump97
jump96:
iconst_0
jump97:
iload 1
sipush 5590
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5591
iadd
sipush 255
iload 1
sipush 5591
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5608
iadd
sipush 2032
iload 1
sipush 5608
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5613
iadd
sipush 1016
iload 1
sipush 5613
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5618
iadd
sipush 504
iload 1
sipush 5618
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5623
iadd
sipush 2044
iload 1
sipush 5623
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5640
iadd
sipush 252
iload 1
sipush 5640
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5645
iadd
sipush 508
iload 1
sipush 5645
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5650
iadd
sipush 1008
iload 1
sipush 5650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5655
iadd
sipush 8160
iload 1
sipush 5655
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5671
iadd
sipush 32767
ifne jump98
iconst_1
goto jump99
jump98:
iconst_0
jump99:
iload 1
sipush 5671
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5672
iadd
bipush 31
iload 1
sipush 5672
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5677
iadd
sipush 252
iload 1
sipush 5677
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5682
iadd
sipush 2016
iload 1
sipush 5682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5687
iadd
sipush 32512
iload 1
sipush 5687
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5703
iadd
sipush 2048
ineg
iload 1
sipush 5703
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5704
iadd
bipush 7
iload 1
sipush 5704
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5709
iadd
bipush 124
iload 1
sipush 5709
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5714
iadd
sipush 8160
iload 1
sipush 5714
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5719
iadd
sipush 1024
ineg
iload 1
sipush 5719
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5720
iadd
iconst_3
iload 1
sipush 5720
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5735
iadd
sipush 1024
ineg
iload 1
sipush 5735
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5736
iadd
iconst_1
iload 1
sipush 5736
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5741
iadd
bipush 124
iload 1
sipush 5741
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5746
iadd
sipush 8064
iload 1
sipush 5746
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5751
iadd
sipush 8192
ineg
iload 1
sipush 5751
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5752
iadd
bipush 63
iload 1
sipush 5752
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5767
iadd
sipush 7680
iload 1
sipush 5767
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5778
iadd
sipush 256
iload 1
sipush 5778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5783
iadd
sipush 32767
ifne jump100
iconst_1
goto jump101
jump100:
iconst_0
jump101:
iload 1
sipush 5783
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5784
iadd
sipush 255
iload 1
sipush 5784
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5810
iadd
sipush 256
iload 1
sipush 5810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5816
iadd
bipush 12
iload 1
sipush 5816
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawField1(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4257
iadd
sipush 4096
ineg
iload 1
sipush 4257
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4258
iadd
iconst_1
ineg
iload 1
sipush 4258
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4259
iadd
iconst_1
ineg
iload 1
sipush 4259
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4260
iadd
iconst_1
ineg
iload 1
sipush 4260
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4261
iadd
iconst_1
ineg
iload 1
sipush 4261
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4262
iadd
iconst_1
ineg
iload 1
sipush 4262
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4263
iadd
iconst_1
ineg
iload 1
sipush 4263
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4264
iadd
iconst_1
ineg
iload 1
sipush 4264
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4265
iadd
iconst_1
ineg
iload 1
sipush 4265
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4266
iadd
iconst_1
ineg
iload 1
sipush 4266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4267
iadd
iconst_1
ineg
iload 1
sipush 4267
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4268
iadd
iconst_1
ineg
iload 1
sipush 4268
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4269
iadd
iconst_1
ineg
iload 1
sipush 4269
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4270
iadd
bipush 15
iload 1
sipush 4270
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4273
iadd
sipush 8192
ineg
iload 1
sipush 4273
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4274
iadd
iconst_1
ineg
iload 1
sipush 4274
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4275
iadd
iconst_1
ineg
iload 1
sipush 4275
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4276
iadd
iconst_1
ineg
iload 1
sipush 4276
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4277
iadd
iconst_1
ineg
iload 1
sipush 4277
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4278
iadd
iconst_1
ineg
iload 1
sipush 4278
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4279
iadd
iconst_1
ineg
iload 1
sipush 4279
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4280
iadd
iconst_1
ineg
iload 1
sipush 4280
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4281
iadd
iconst_1
ineg
iload 1
sipush 4281
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4282
iadd
iconst_1
ineg
iload 1
sipush 4282
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4283
iadd
iconst_1
ineg
iload 1
sipush 4283
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4284
iadd
iconst_1
ineg
iload 1
sipush 4284
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4285
iadd
iconst_1
ineg
iload 1
sipush 4285
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4286
iadd
bipush 7
iload 1
sipush 4286
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4321
iadd
sipush 4096
ineg
iload 1
sipush 4321
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4322
iadd
iconst_1
ineg
iload 1
sipush 4322
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4323
iadd
iconst_1
ineg
iload 1
sipush 4323
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4324
iadd
iconst_1
ineg
iload 1
sipush 4324
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4325
iadd
iconst_1
ineg
iload 1
sipush 4325
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4326
iadd
iconst_1
ineg
iload 1
sipush 4326
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4327
iadd
iconst_1
ineg
iload 1
sipush 4327
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4328
iadd
iconst_1
ineg
iload 1
sipush 4328
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4329
iadd
iconst_1
ineg
iload 1
sipush 4329
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4330
iadd
iconst_1
ineg
iload 1
sipush 4330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4331
iadd
iconst_1
ineg
iload 1
sipush 4331
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4332
iadd
iconst_1
ineg
iload 1
sipush 4332
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4333
iadd
sipush 2047
iload 1
sipush 4333
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4338
iadd
bipush 32
ineg
iload 1
sipush 4338
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4339
iadd
iconst_1
ineg
iload 1
sipush 4339
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4340
iadd
iconst_1
ineg
iload 1
sipush 4340
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4341
iadd
iconst_1
ineg
iload 1
sipush 4341
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4342
iadd
iconst_1
ineg
iload 1
sipush 4342
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4343
iadd
iconst_1
ineg
iload 1
sipush 4343
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4344
iadd
iconst_1
ineg
iload 1
sipush 4344
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4345
iadd
iconst_1
ineg
iload 1
sipush 4345
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4346
iadd
iconst_1
ineg
iload 1
sipush 4346
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4347
iadd
iconst_1
ineg
iload 1
sipush 4347
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4348
iadd
iconst_1
ineg
iload 1
sipush 4348
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4349
iadd
iconst_1
ineg
iload 1
sipush 4349
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4350
iadd
bipush 7
iload 1
sipush 4350
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4385
iadd
sipush 4096
ineg
iload 1
sipush 4385
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4386
iadd
iconst_1
ineg
iload 1
sipush 4386
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4387
iadd
iconst_1
ineg
iload 1
sipush 4387
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4388
iadd
iconst_1
ineg
iload 1
sipush 4388
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4389
iadd
iconst_1
ineg
iload 1
sipush 4389
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4390
iadd
iconst_1
ineg
iload 1
sipush 4390
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4391
iadd
iconst_1
ineg
iload 1
sipush 4391
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4392
iadd
iconst_1
ineg
iload 1
sipush 4392
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4393
iadd
iconst_1
ineg
iload 1
sipush 4393
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4394
iadd
iconst_1
ineg
iload 1
sipush 4394
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4395
iadd
iconst_1
ineg
iload 1
sipush 4395
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4396
iadd
iconst_1
ineg
iload 1
sipush 4396
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4397
iadd
iconst_1
iload 1
sipush 4397
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4403
iadd
iconst_1
ineg
iload 1
sipush 4403
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4404
iadd
iconst_1
ineg
iload 1
sipush 4404
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4405
iadd
iconst_1
ineg
iload 1
sipush 4405
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4406
iadd
iconst_1
ineg
iload 1
sipush 4406
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4407
iadd
iconst_1
ineg
iload 1
sipush 4407
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4408
iadd
iconst_1
ineg
iload 1
sipush 4408
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4409
iadd
iconst_1
ineg
iload 1
sipush 4409
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4410
iadd
iconst_1
ineg
iload 1
sipush 4410
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4411
iadd
iconst_1
ineg
iload 1
sipush 4411
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4412
iadd
iconst_1
ineg
iload 1
sipush 4412
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4413
iadd
iconst_1
ineg
iload 1
sipush 4413
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4414
iadd
bipush 7
iload 1
sipush 4414
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4449
iadd
sipush 4096
ineg
iload 1
sipush 4449
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4450
iadd
iconst_1
ineg
iload 1
sipush 4450
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4451
iadd
iconst_1
ineg
iload 1
sipush 4451
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4452
iadd
iconst_1
ineg
iload 1
sipush 4452
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4453
iadd
iconst_1
ineg
iload 1
sipush 4453
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4454
iadd
iconst_1
ineg
iload 1
sipush 4454
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4455
iadd
iconst_1
ineg
iload 1
sipush 4455
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4456
iadd
iconst_1
ineg
iload 1
sipush 4456
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4457
iadd
iconst_1
ineg
iload 1
sipush 4457
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4458
iadd
iconst_1
ineg
iload 1
sipush 4458
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4459
iadd
iconst_1
ineg
iload 1
sipush 4459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4460
iadd
bipush 63
iload 1
sipush 4460
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4467
iadd
sipush 1024
ineg
iload 1
sipush 4467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4468
iadd
iconst_1
ineg
iload 1
sipush 4468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4469
iadd
iconst_1
ineg
iload 1
sipush 4469
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4470
iadd
iconst_1
ineg
iload 1
sipush 4470
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4471
iadd
iconst_1
ineg
iload 1
sipush 4471
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4472
iadd
iconst_1
ineg
iload 1
sipush 4472
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4473
iadd
iconst_1
ineg
iload 1
sipush 4473
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4474
iadd
iconst_1
ineg
iload 1
sipush 4474
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4475
iadd
iconst_1
ineg
iload 1
sipush 4475
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4476
iadd
iconst_1
ineg
iload 1
sipush 4476
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4477
iadd
iconst_1
ineg
iload 1
sipush 4477
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4478
iadd
bipush 7
iload 1
sipush 4478
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4481
iadd
sipush 4096
ineg
iload 1
sipush 4481
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4482
iadd
iconst_1
ineg
iload 1
sipush 4482
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4483
iadd
iconst_1
ineg
iload 1
sipush 4483
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4484
iadd
iconst_1
ineg
iload 1
sipush 4484
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4485
iadd
iconst_1
ineg
iload 1
sipush 4485
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4486
iadd
iconst_1
ineg
iload 1
sipush 4486
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4487
iadd
iconst_1
ineg
iload 1
sipush 4487
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4488
iadd
iconst_1
ineg
iload 1
sipush 4488
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4489
iadd
iconst_1
ineg
iload 1
sipush 4489
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4490
iadd
iconst_1
ineg
iload 1
sipush 4490
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4491
iadd
sipush 32767
iload 1
sipush 4491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4500
iadd
iconst_2
ineg
iload 1
sipush 4500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4501
iadd
iconst_1
ineg
iload 1
sipush 4501
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4502
iadd
iconst_1
ineg
iload 1
sipush 4502
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4503
iadd
iconst_1
ineg
iload 1
sipush 4503
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4504
iadd
iconst_1
ineg
iload 1
sipush 4504
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4505
iadd
iconst_1
ineg
iload 1
sipush 4505
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4506
iadd
iconst_1
ineg
iload 1
sipush 4506
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4507
iadd
iconst_1
ineg
iload 1
sipush 4507
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4508
iadd
iconst_1
ineg
iload 1
sipush 4508
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4509
iadd
iconst_1
ineg
iload 1
sipush 4509
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4510
iadd
bipush 7
iload 1
sipush 4510
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4577
iadd
sipush 4096
ineg
iload 1
sipush 4577
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4578
iadd
iconst_1
ineg
iload 1
sipush 4578
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4579
iadd
iconst_1
ineg
iload 1
sipush 4579
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4580
iadd
iconst_1
ineg
iload 1
sipush 4580
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4581
iadd
iconst_1
ineg
iload 1
sipush 4581
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4582
iadd
iconst_1
ineg
iload 1
sipush 4582
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4583
iadd
iconst_1
ineg
iload 1
sipush 4583
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4584
iadd
iconst_1
ineg
iload 1
sipush 4584
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4585
iadd
iconst_1
ineg
iload 1
sipush 4585
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4586
iadd
sipush 32767
iload 1
sipush 4586
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4597
iadd
iconst_2
ineg
iload 1
sipush 4597
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4598
iadd
iconst_1
ineg
iload 1
sipush 4598
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4599
iadd
iconst_1
ineg
iload 1
sipush 4599
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4600
iadd
iconst_1
ineg
iload 1
sipush 4600
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4601
iadd
iconst_1
ineg
iload 1
sipush 4601
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4602
iadd
iconst_1
ineg
iload 1
sipush 4602
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4603
iadd
iconst_1
ineg
iload 1
sipush 4603
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4604
iadd
iconst_1
ineg
iload 1
sipush 4604
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4605
iadd
iconst_1
ineg
iload 1
sipush 4605
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4606
iadd
bipush 7
iload 1
sipush 4606
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4609
iadd
sipush 4096
ineg
iload 1
sipush 4609
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4610
iadd
iconst_1
ineg
iload 1
sipush 4610
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4611
iadd
iconst_1
ineg
iload 1
sipush 4611
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4612
iadd
iconst_1
ineg
iload 1
sipush 4612
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4613
iadd
iconst_1
ineg
iload 1
sipush 4613
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4614
iadd
iconst_1
ineg
iload 1
sipush 4614
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4615
iadd
iconst_1
ineg
iload 1
sipush 4615
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4616
iadd
iconst_1
ineg
iload 1
sipush 4616
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4617
iadd
iconst_1
ineg
iload 1
sipush 4617
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4618
iadd
sipush 2047
iload 1
sipush 4618
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4629
iadd
bipush 32
ineg
iload 1
sipush 4629
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4630
iadd
iconst_1
ineg
iload 1
sipush 4630
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4631
iadd
iconst_1
ineg
iload 1
sipush 4631
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4632
iadd
iconst_1
ineg
iload 1
sipush 4632
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4633
iadd
iconst_1
ineg
iload 1
sipush 4633
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4634
iadd
iconst_1
ineg
iload 1
sipush 4634
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4635
iadd
iconst_1
ineg
iload 1
sipush 4635
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4636
iadd
iconst_1
ineg
iload 1
sipush 4636
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4637
iadd
iconst_1
ineg
iload 1
sipush 4637
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4638
iadd
bipush 7
iload 1
sipush 4638
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4641
iadd
sipush 4096
ineg
iload 1
sipush 4641
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4642
iadd
iconst_1
ineg
iload 1
sipush 4642
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4643
iadd
iconst_1
ineg
iload 1
sipush 4643
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4644
iadd
iconst_1
ineg
iload 1
sipush 4644
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4645
iadd
iconst_1
ineg
iload 1
sipush 4645
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4646
iadd
iconst_1
ineg
iload 1
sipush 4646
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4647
iadd
iconst_1
ineg
iload 1
sipush 4647
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4648
iadd
iconst_1
ineg
iload 1
sipush 4648
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4649
iadd
iconst_1
ineg
iload 1
sipush 4649
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4650
iadd
bipush 127
iload 1
sipush 4650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4661
iadd
sipush 512
ineg
iload 1
sipush 4661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4662
iadd
iconst_1
ineg
iload 1
sipush 4662
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4663
iadd
iconst_1
ineg
iload 1
sipush 4663
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4664
iadd
iconst_1
ineg
iload 1
sipush 4664
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4665
iadd
iconst_1
ineg
iload 1
sipush 4665
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4666
iadd
iconst_1
ineg
iload 1
sipush 4666
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4667
iadd
iconst_1
ineg
iload 1
sipush 4667
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4668
iadd
iconst_1
ineg
iload 1
sipush 4668
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4669
iadd
iconst_1
ineg
iload 1
sipush 4669
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4670
iadd
bipush 7
iload 1
sipush 4670
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4673
iadd
sipush 4096
ineg
iload 1
sipush 4673
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4674
iadd
iconst_1
ineg
iload 1
sipush 4674
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4675
iadd
iconst_1
ineg
iload 1
sipush 4675
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4676
iadd
iconst_1
ineg
iload 1
sipush 4676
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4677
iadd
iconst_1
ineg
iload 1
sipush 4677
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4678
iadd
iconst_1
ineg
iload 1
sipush 4678
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4679
iadd
iconst_1
ineg
iload 1
sipush 4679
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4680
iadd
iconst_1
ineg
iload 1
sipush 4680
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4681
iadd
iconst_1
ineg
iload 1
sipush 4681
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4682
iadd
iconst_3
iload 1
sipush 4682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4693
iadd
sipush 16384
ineg
iload 1
sipush 4693
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4694
iadd
iconst_1
ineg
iload 1
sipush 4694
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4695
iadd
iconst_1
ineg
iload 1
sipush 4695
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4696
iadd
iconst_1
ineg
iload 1
sipush 4696
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4697
iadd
iconst_1
ineg
iload 1
sipush 4697
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4698
iadd
iconst_1
ineg
iload 1
sipush 4698
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4699
iadd
iconst_1
ineg
iload 1
sipush 4699
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4700
iadd
iconst_1
ineg
iload 1
sipush 4700
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4701
iadd
iconst_1
ineg
iload 1
sipush 4701
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4702
iadd
bipush 7
iload 1
sipush 4702
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4833
iadd
sipush 4096
ineg
iload 1
sipush 4833
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4834
iadd
iconst_1
ineg
iload 1
sipush 4834
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4835
iadd
iconst_1
ineg
iload 1
sipush 4835
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4836
iadd
iconst_1
ineg
iload 1
sipush 4836
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4837
iadd
iconst_1
ineg
iload 1
sipush 4837
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4838
iadd
iconst_1
ineg
iload 1
sipush 4838
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4839
iadd
iconst_1
ineg
iload 1
sipush 4839
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4840
iadd
sipush 4095
iload 1
sipush 4840
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4855
iadd
bipush 32
ineg
iload 1
sipush 4855
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4856
iadd
iconst_1
ineg
iload 1
sipush 4856
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4857
iadd
iconst_1
ineg
iload 1
sipush 4857
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4858
iadd
iconst_1
ineg
iload 1
sipush 4858
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4859
iadd
iconst_1
ineg
iload 1
sipush 4859
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4860
iadd
iconst_1
ineg
iload 1
sipush 4860
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4861
iadd
iconst_1
ineg
iload 1
sipush 4861
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4862
iadd
bipush 7
iload 1
sipush 4862
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4865
iadd
sipush 4096
ineg
iload 1
sipush 4865
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4866
iadd
iconst_1
ineg
iload 1
sipush 4866
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4867
iadd
iconst_1
ineg
iload 1
sipush 4867
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4868
iadd
iconst_1
ineg
iload 1
sipush 4868
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4869
iadd
iconst_1
ineg
iload 1
sipush 4869
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4870
iadd
iconst_1
ineg
iload 1
sipush 4870
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4871
iadd
iconst_1
ineg
iload 1
sipush 4871
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4872
iadd
bipush 15
iload 1
sipush 4872
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4887
iadd
sipush 4096
ineg
iload 1
sipush 4887
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4888
iadd
iconst_1
ineg
iload 1
sipush 4888
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4889
iadd
iconst_1
ineg
iload 1
sipush 4889
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4890
iadd
iconst_1
ineg
iload 1
sipush 4890
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4891
iadd
iconst_1
ineg
iload 1
sipush 4891
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4892
iadd
iconst_1
ineg
iload 1
sipush 4892
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4893
iadd
iconst_1
ineg
iload 1
sipush 4893
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4894
iadd
bipush 7
iload 1
sipush 4894
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4897
iadd
sipush 4096
ineg
iload 1
sipush 4897
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4898
iadd
iconst_1
ineg
iload 1
sipush 4898
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4899
iadd
iconst_1
ineg
iload 1
sipush 4899
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4900
iadd
iconst_1
ineg
iload 1
sipush 4900
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4901
iadd
iconst_1
ineg
iload 1
sipush 4901
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4902
iadd
iconst_1
ineg
iload 1
sipush 4902
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4903
iadd
iconst_1
ineg
iload 1
sipush 4903
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4920
iadd
iconst_1
ineg
iload 1
sipush 4920
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4921
iadd
iconst_1
ineg
iload 1
sipush 4921
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4922
iadd
iconst_1
ineg
iload 1
sipush 4922
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4923
iadd
iconst_1
ineg
iload 1
sipush 4923
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4924
iadd
iconst_1
ineg
iload 1
sipush 4924
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4925
iadd
iconst_1
ineg
iload 1
sipush 4925
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4926
iadd
bipush 7
iload 1
sipush 4926
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4929
iadd
sipush 4096
ineg
iload 1
sipush 4929
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4930
iadd
iconst_1
ineg
iload 1
sipush 4930
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4931
iadd
iconst_1
ineg
iload 1
sipush 4931
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4932
iadd
iconst_1
ineg
iload 1
sipush 4932
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4933
iadd
iconst_1
ineg
iload 1
sipush 4933
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4934
iadd
iconst_1
ineg
iload 1
sipush 4934
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4935
iadd
sipush 4095
iload 1
sipush 4935
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4952
iadd
sipush 128
ineg
iload 1
sipush 4952
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4953
iadd
iconst_1
ineg
iload 1
sipush 4953
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4954
iadd
iconst_1
ineg
iload 1
sipush 4954
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4955
iadd
iconst_1
ineg
iload 1
sipush 4955
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4956
iadd
iconst_1
ineg
iload 1
sipush 4956
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4957
iadd
iconst_1
ineg
iload 1
sipush 4957
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4958
iadd
bipush 7
iload 1
sipush 4958
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4961
iadd
sipush 4096
ineg
iload 1
sipush 4961
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4962
iadd
iconst_1
ineg
iload 1
sipush 4962
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4963
iadd
iconst_1
ineg
iload 1
sipush 4963
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4964
iadd
iconst_1
ineg
iload 1
sipush 4964
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4965
iadd
iconst_1
ineg
iload 1
sipush 4965
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4966
iadd
iconst_1
ineg
iload 1
sipush 4966
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4967
iadd
sipush 255
iload 1
sipush 4967
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4984
iadd
sipush 1024
ineg
iload 1
sipush 4984
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4985
iadd
iconst_1
ineg
iload 1
sipush 4985
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4986
iadd
iconst_1
ineg
iload 1
sipush 4986
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4987
iadd
iconst_1
ineg
iload 1
sipush 4987
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4988
iadd
iconst_1
ineg
iload 1
sipush 4988
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4989
iadd
iconst_1
ineg
iload 1
sipush 4989
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4990
iadd
bipush 7
iload 1
sipush 4990
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4993
iadd
sipush 4096
ineg
iload 1
sipush 4993
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4994
iadd
iconst_1
ineg
iload 1
sipush 4994
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4995
iadd
iconst_1
ineg
iload 1
sipush 4995
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4996
iadd
iconst_1
ineg
iload 1
sipush 4996
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4997
iadd
iconst_1
ineg
iload 1
sipush 4997
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4998
iadd
iconst_1
ineg
iload 1
sipush 4998
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4999
iadd
bipush 7
iload 1
sipush 4999
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5016
iadd
sipush 16384
ineg
iload 1
sipush 5016
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5017
iadd
iconst_1
ineg
iload 1
sipush 5017
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5018
iadd
iconst_1
ineg
iload 1
sipush 5018
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5019
iadd
iconst_1
ineg
iload 1
sipush 5019
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5020
iadd
iconst_1
ineg
iload 1
sipush 5020
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5021
iadd
iconst_1
ineg
iload 1
sipush 5021
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5022
iadd
bipush 7
iload 1
sipush 5022
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5025
iadd
sipush 4096
ineg
iload 1
sipush 5025
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5026
iadd
iconst_1
ineg
iload 1
sipush 5026
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5027
iadd
iconst_1
ineg
iload 1
sipush 5027
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5028
iadd
iconst_1
ineg
iload 1
sipush 5028
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5029
iadd
iconst_1
ineg
iload 1
sipush 5029
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5030
iadd
sipush 32767
iload 1
sipush 5030
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5049
iadd
iconst_2
ineg
iload 1
sipush 5049
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5050
iadd
iconst_1
ineg
iload 1
sipush 5050
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5051
iadd
iconst_1
ineg
iload 1
sipush 5051
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5052
iadd
iconst_1
ineg
iload 1
sipush 5052
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5053
iadd
iconst_1
ineg
iload 1
sipush 5053
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5054
iadd
bipush 7
iload 1
sipush 5054
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5057
iadd
sipush 4096
ineg
iload 1
sipush 5057
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5058
iadd
iconst_1
ineg
iload 1
sipush 5058
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5059
iadd
iconst_1
ineg
iload 1
sipush 5059
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5060
iadd
iconst_1
ineg
iload 1
sipush 5060
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5061
iadd
iconst_1
ineg
iload 1
sipush 5061
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5062
iadd
sipush 2047
iload 1
sipush 5062
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5081
iadd
bipush 32
ineg
iload 1
sipush 5081
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5082
iadd
iconst_1
ineg
iload 1
sipush 5082
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5083
iadd
iconst_1
ineg
iload 1
sipush 5083
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5084
iadd
iconst_1
ineg
iload 1
sipush 5084
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5085
iadd
iconst_1
ineg
iload 1
sipush 5085
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5086
iadd
bipush 7
iload 1
sipush 5086
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5089
iadd
sipush 4096
ineg
iload 1
sipush 5089
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5090
iadd
iconst_1
ineg
iload 1
sipush 5090
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5091
iadd
iconst_1
ineg
iload 1
sipush 5091
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5092
iadd
iconst_1
ineg
iload 1
sipush 5092
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5093
iadd
iconst_1
ineg
iload 1
sipush 5093
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5094
iadd
sipush 255
iload 1
sipush 5094
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5113
iadd
sipush 512
ineg
iload 1
sipush 5113
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5114
iadd
iconst_1
ineg
iload 1
sipush 5114
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5115
iadd
iconst_1
ineg
iload 1
sipush 5115
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5116
iadd
iconst_1
ineg
iload 1
sipush 5116
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5117
iadd
iconst_1
ineg
iload 1
sipush 5117
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5118
iadd
bipush 7
iload 1
sipush 5118
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5121
iadd
sipush 4096
ineg
iload 1
sipush 5121
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5122
iadd
iconst_1
ineg
iload 1
sipush 5122
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5123
iadd
iconst_1
ineg
iload 1
sipush 5123
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5124
iadd
iconst_1
ineg
iload 1
sipush 5124
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5125
iadd
iconst_1
ineg
iload 1
sipush 5125
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5126
iadd
bipush 7
iload 1
sipush 5126
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5145
iadd
sipush 8192
ineg
iload 1
sipush 5145
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5146
iadd
iconst_1
ineg
iload 1
sipush 5146
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5147
iadd
iconst_1
ineg
iload 1
sipush 5147
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5148
iadd
iconst_1
ineg
iload 1
sipush 5148
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5149
iadd
iconst_1
ineg
iload 1
sipush 5149
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5150
iadd
bipush 7
iload 1
sipush 5150
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawField2(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4241
iadd
bipush 16
ineg
iload 1
sipush 4241
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4242
iadd
iconst_1
ineg
iload 1
sipush 4242
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4243
iadd
iconst_1
ineg
iload 1
sipush 4243
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4244
iadd
iconst_1
ineg
iload 1
sipush 4244
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4245
iadd
iconst_1
ineg
iload 1
sipush 4245
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4246
iadd
iconst_1
ineg
iload 1
sipush 4246
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4247
iadd
iconst_1
ineg
iload 1
sipush 4247
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4248
iadd
iconst_1
ineg
iload 1
sipush 4248
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4249
iadd
iconst_1
ineg
iload 1
sipush 4249
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4250
iadd
iconst_1
ineg
iload 1
sipush 4250
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4251
iadd
iconst_1
ineg
iload 1
sipush 4251
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4252
iadd
iconst_1
ineg
iload 1
sipush 4252
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4253
iadd
iconst_1
ineg
iload 1
sipush 4253
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4254
iadd
bipush 7
iload 1
sipush 4254
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4289
iadd
sipush 4096
ineg
iload 1
sipush 4289
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4290
iadd
iconst_1
ineg
iload 1
sipush 4290
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4291
iadd
iconst_1
ineg
iload 1
sipush 4291
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4292
iadd
iconst_1
ineg
iload 1
sipush 4292
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4293
iadd
iconst_1
ineg
iload 1
sipush 4293
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4294
iadd
iconst_1
ineg
iload 1
sipush 4294
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4295
iadd
iconst_1
ineg
iload 1
sipush 4295
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4296
iadd
iconst_1
ineg
iload 1
sipush 4296
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4297
iadd
iconst_1
ineg
iload 1
sipush 4297
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4298
iadd
iconst_1
ineg
iload 1
sipush 4298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4299
iadd
iconst_1
ineg
iload 1
sipush 4299
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4300
iadd
iconst_1
ineg
iload 1
sipush 4300
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4301
iadd
iconst_1
ineg
iload 1
sipush 4301
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4302
iadd
iconst_1
iload 1
sipush 4302
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4305
iadd
sipush 16384
ineg
iload 1
sipush 4305
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4306
iadd
iconst_1
ineg
iload 1
sipush 4306
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4307
iadd
iconst_1
ineg
iload 1
sipush 4307
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4308
iadd
iconst_1
ineg
iload 1
sipush 4308
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4309
iadd
iconst_1
ineg
iload 1
sipush 4309
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4310
iadd
iconst_1
ineg
iload 1
sipush 4310
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4311
iadd
iconst_1
ineg
iload 1
sipush 4311
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4312
iadd
iconst_1
ineg
iload 1
sipush 4312
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4313
iadd
iconst_1
ineg
iload 1
sipush 4313
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4314
iadd
iconst_1
ineg
iload 1
sipush 4314
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4315
iadd
iconst_1
ineg
iload 1
sipush 4315
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4316
iadd
iconst_1
ineg
iload 1
sipush 4316
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4317
iadd
iconst_1
ineg
iload 1
sipush 4317
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4318
iadd
bipush 7
iload 1
sipush 4318
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4353
iadd
sipush 4096
ineg
iload 1
sipush 4353
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4354
iadd
iconst_1
ineg
iload 1
sipush 4354
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4355
iadd
iconst_1
ineg
iload 1
sipush 4355
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4356
iadd
iconst_1
ineg
iload 1
sipush 4356
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4357
iadd
iconst_1
ineg
iload 1
sipush 4357
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4358
iadd
iconst_1
ineg
iload 1
sipush 4358
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4359
iadd
iconst_1
ineg
iload 1
sipush 4359
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4360
iadd
iconst_1
ineg
iload 1
sipush 4360
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4361
iadd
iconst_1
ineg
iload 1
sipush 4361
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4362
iadd
iconst_1
ineg
iload 1
sipush 4362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4363
iadd
iconst_1
ineg
iload 1
sipush 4363
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4364
iadd
iconst_1
ineg
iload 1
sipush 4364
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4365
iadd
bipush 31
iload 1
sipush 4365
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4370
iadd
sipush 512
ineg
iload 1
sipush 4370
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4371
iadd
iconst_1
ineg
iload 1
sipush 4371
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4372
iadd
iconst_1
ineg
iload 1
sipush 4372
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4373
iadd
iconst_1
ineg
iload 1
sipush 4373
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4374
iadd
iconst_1
ineg
iload 1
sipush 4374
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4375
iadd
iconst_1
ineg
iload 1
sipush 4375
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4376
iadd
iconst_1
ineg
iload 1
sipush 4376
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4377
iadd
iconst_1
ineg
iload 1
sipush 4377
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4378
iadd
iconst_1
ineg
iload 1
sipush 4378
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4379
iadd
iconst_1
ineg
iload 1
sipush 4379
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4380
iadd
iconst_1
ineg
iload 1
sipush 4380
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4381
iadd
iconst_1
ineg
iload 1
sipush 4381
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4382
iadd
bipush 7
iload 1
sipush 4382
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4417
iadd
sipush 4096
ineg
iload 1
sipush 4417
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4418
iadd
iconst_1
ineg
iload 1
sipush 4418
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4419
iadd
iconst_1
ineg
iload 1
sipush 4419
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4420
iadd
iconst_1
ineg
iload 1
sipush 4420
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4421
iadd
iconst_1
ineg
iload 1
sipush 4421
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4422
iadd
iconst_1
ineg
iload 1
sipush 4422
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4423
iadd
iconst_1
ineg
iload 1
sipush 4423
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4424
iadd
iconst_1
ineg
iload 1
sipush 4424
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4425
iadd
iconst_1
ineg
iload 1
sipush 4425
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4426
iadd
iconst_1
ineg
iload 1
sipush 4426
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4427
iadd
iconst_1
ineg
iload 1
sipush 4427
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4428
iadd
sipush 4095
iload 1
sipush 4428
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4435
iadd
bipush 16
ineg
iload 1
sipush 4435
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4436
iadd
iconst_1
ineg
iload 1
sipush 4436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4437
iadd
iconst_1
ineg
iload 1
sipush 4437
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4438
iadd
iconst_1
ineg
iload 1
sipush 4438
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4439
iadd
iconst_1
ineg
iload 1
sipush 4439
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4440
iadd
iconst_1
ineg
iload 1
sipush 4440
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4441
iadd
iconst_1
ineg
iload 1
sipush 4441
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4442
iadd
iconst_1
ineg
iload 1
sipush 4442
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4443
iadd
iconst_1
ineg
iload 1
sipush 4443
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4444
iadd
iconst_1
ineg
iload 1
sipush 4444
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4445
iadd
iconst_1
ineg
iload 1
sipush 4445
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4446
iadd
bipush 7
iload 1
sipush 4446
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4513
iadd
sipush 4096
ineg
iload 1
sipush 4513
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4514
iadd
iconst_1
ineg
iload 1
sipush 4514
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4515
iadd
iconst_1
ineg
iload 1
sipush 4515
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4516
iadd
iconst_1
ineg
iload 1
sipush 4516
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4517
iadd
iconst_1
ineg
iload 1
sipush 4517
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4518
iadd
iconst_1
ineg
iload 1
sipush 4518
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4519
iadd
iconst_1
ineg
iload 1
sipush 4519
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4520
iadd
iconst_1
ineg
iload 1
sipush 4520
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4521
iadd
iconst_1
ineg
iload 1
sipush 4521
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4522
iadd
iconst_1
ineg
iload 1
sipush 4522
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4523
iadd
sipush 4095
iload 1
sipush 4523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4532
iadd
sipush 256
ineg
iload 1
sipush 4532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4533
iadd
iconst_1
ineg
iload 1
sipush 4533
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4534
iadd
iconst_1
ineg
iload 1
sipush 4534
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4535
iadd
iconst_1
ineg
iload 1
sipush 4535
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4536
iadd
iconst_1
ineg
iload 1
sipush 4536
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4537
iadd
iconst_1
ineg
iload 1
sipush 4537
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4538
iadd
iconst_1
ineg
iload 1
sipush 4538
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4539
iadd
iconst_1
ineg
iload 1
sipush 4539
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4540
iadd
iconst_1
ineg
iload 1
sipush 4540
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4541
iadd
iconst_1
ineg
iload 1
sipush 4541
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4542
iadd
bipush 7
iload 1
sipush 4542
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4545
iadd
sipush 4096
ineg
iload 1
sipush 4545
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4546
iadd
iconst_1
ineg
iload 1
sipush 4546
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4547
iadd
iconst_1
ineg
iload 1
sipush 4547
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4548
iadd
iconst_1
ineg
iload 1
sipush 4548
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4549
iadd
iconst_1
ineg
iload 1
sipush 4549
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4550
iadd
iconst_1
ineg
iload 1
sipush 4550
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4551
iadd
iconst_1
ineg
iload 1
sipush 4551
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4552
iadd
iconst_1
ineg
iload 1
sipush 4552
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4553
iadd
iconst_1
ineg
iload 1
sipush 4553
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4554
iadd
iconst_1
ineg
iload 1
sipush 4554
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4555
iadd
sipush 255
iload 1
sipush 4555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4564
iadd
sipush 4096
ineg
iload 1
sipush 4564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4565
iadd
iconst_1
ineg
iload 1
sipush 4565
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4566
iadd
iconst_1
ineg
iload 1
sipush 4566
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4567
iadd
iconst_1
ineg
iload 1
sipush 4567
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4568
iadd
iconst_1
ineg
iload 1
sipush 4568
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4569
iadd
iconst_1
ineg
iload 1
sipush 4569
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4570
iadd
iconst_1
ineg
iload 1
sipush 4570
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4571
iadd
iconst_1
ineg
iload 1
sipush 4571
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4572
iadd
iconst_1
ineg
iload 1
sipush 4572
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4573
iadd
iconst_1
ineg
iload 1
sipush 4573
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4574
iadd
bipush 7
iload 1
sipush 4574
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4705
iadd
sipush 4096
ineg
iload 1
sipush 4705
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4706
iadd
iconst_1
ineg
iload 1
sipush 4706
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4707
iadd
iconst_1
ineg
iload 1
sipush 4707
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4708
iadd
iconst_1
ineg
iload 1
sipush 4708
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4709
iadd
iconst_1
ineg
iload 1
sipush 4709
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4710
iadd
iconst_1
ineg
iload 1
sipush 4710
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4711
iadd
iconst_1
ineg
iload 1
sipush 4711
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4712
iadd
iconst_1
ineg
iload 1
sipush 4712
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4713
iadd
sipush 32767
iload 1
sipush 4713
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4726
iadd
iconst_4
ineg
iload 1
sipush 4726
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4727
iadd
iconst_1
ineg
iload 1
sipush 4727
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4728
iadd
iconst_1
ineg
iload 1
sipush 4728
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4729
iadd
iconst_1
ineg
iload 1
sipush 4729
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4730
iadd
iconst_1
ineg
iload 1
sipush 4730
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4731
iadd
iconst_1
ineg
iload 1
sipush 4731
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4732
iadd
iconst_1
ineg
iload 1
sipush 4732
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4733
iadd
iconst_1
ineg
iload 1
sipush 4733
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4734
iadd
bipush 7
iload 1
sipush 4734
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4737
iadd
sipush 4096
ineg
iload 1
sipush 4737
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4738
iadd
iconst_1
ineg
iload 1
sipush 4738
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4739
iadd
iconst_1
ineg
iload 1
sipush 4739
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4740
iadd
iconst_1
ineg
iload 1
sipush 4740
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4741
iadd
iconst_1
ineg
iload 1
sipush 4741
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4742
iadd
iconst_1
ineg
iload 1
sipush 4742
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4743
iadd
iconst_1
ineg
iload 1
sipush 4743
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4744
iadd
iconst_1
ineg
iload 1
sipush 4744
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4745
iadd
sipush 2047
iload 1
sipush 4745
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4758
iadd
sipush 128
ineg
iload 1
sipush 4758
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4759
iadd
iconst_1
ineg
iload 1
sipush 4759
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4760
iadd
iconst_1
ineg
iload 1
sipush 4760
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4761
iadd
iconst_1
ineg
iload 1
sipush 4761
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4762
iadd
iconst_1
ineg
iload 1
sipush 4762
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4763
iadd
iconst_1
ineg
iload 1
sipush 4763
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4764
iadd
iconst_1
ineg
iload 1
sipush 4764
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4765
iadd
iconst_1
ineg
iload 1
sipush 4765
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4766
iadd
bipush 7
iload 1
sipush 4766
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4769
iadd
sipush 4096
ineg
iload 1
sipush 4769
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4770
iadd
iconst_1
ineg
iload 1
sipush 4770
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4771
iadd
iconst_1
ineg
iload 1
sipush 4771
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4772
iadd
iconst_1
ineg
iload 1
sipush 4772
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4773
iadd
iconst_1
ineg
iload 1
sipush 4773
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4774
iadd
iconst_1
ineg
iload 1
sipush 4774
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4775
iadd
iconst_1
ineg
iload 1
sipush 4775
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4776
iadd
iconst_1
ineg
iload 1
sipush 4776
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4777
iadd
bipush 127
iload 1
sipush 4777
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4790
iadd
sipush 8192
ineg
iload 1
sipush 4790
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4791
iadd
iconst_1
ineg
iload 1
sipush 4791
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4792
iadd
iconst_1
ineg
iload 1
sipush 4792
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4793
iadd
iconst_1
ineg
iload 1
sipush 4793
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4794
iadd
iconst_1
ineg
iload 1
sipush 4794
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4795
iadd
iconst_1
ineg
iload 1
sipush 4795
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4796
iadd
iconst_1
ineg
iload 1
sipush 4796
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4797
iadd
iconst_1
ineg
iload 1
sipush 4797
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4798
iadd
bipush 7
iload 1
sipush 4798
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4801
iadd
sipush 4096
ineg
iload 1
sipush 4801
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4802
iadd
iconst_1
ineg
iload 1
sipush 4802
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4803
iadd
iconst_1
ineg
iload 1
sipush 4803
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4804
iadd
iconst_1
ineg
iload 1
sipush 4804
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4805
iadd
iconst_1
ineg
iload 1
sipush 4805
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4806
iadd
iconst_1
ineg
iload 1
sipush 4806
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4807
iadd
iconst_1
ineg
iload 1
sipush 4807
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4808
iadd
iconst_1
ineg
iload 1
sipush 4808
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4809
iadd
bipush 7
iload 1
sipush 4809
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4823
iadd
iconst_4
ineg
iload 1
sipush 4823
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4824
iadd
iconst_1
ineg
iload 1
sipush 4824
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4825
iadd
iconst_1
ineg
iload 1
sipush 4825
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4826
iadd
iconst_1
ineg
iload 1
sipush 4826
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4827
iadd
iconst_1
ineg
iload 1
sipush 4827
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4828
iadd
iconst_1
ineg
iload 1
sipush 4828
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4829
iadd
iconst_1
ineg
iload 1
sipush 4829
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4830
iadd
bipush 7
iload 1
sipush 4830
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5153
iadd
sipush 4096
ineg
iload 1
sipush 5153
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5154
iadd
iconst_1
ineg
iload 1
sipush 5154
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5155
iadd
iconst_1
ineg
iload 1
sipush 5155
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5156
iadd
iconst_1
ineg
iload 1
sipush 5156
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5157
iadd
iconst_1
ineg
iload 1
sipush 5157
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5158
iadd
iconst_3
iload 1
sipush 5158
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5178
iadd
iconst_4
ineg
iload 1
sipush 5178
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5179
iadd
iconst_1
ineg
iload 1
sipush 5179
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5180
iadd
iconst_1
ineg
iload 1
sipush 5180
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5181
iadd
iconst_1
ineg
iload 1
sipush 5181
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5182
iadd
bipush 7
iload 1
sipush 5182
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5185
iadd
sipush 4096
ineg
iload 1
sipush 5185
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5186
iadd
iconst_1
ineg
iload 1
sipush 5186
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5187
iadd
iconst_1
ineg
iload 1
sipush 5187
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5188
iadd
iconst_1
ineg
iload 1
sipush 5188
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5189
iadd
sipush 16383
iload 1
sipush 5189
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5210
iadd
sipush 512
ineg
iload 1
sipush 5210
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5211
iadd
iconst_1
ineg
iload 1
sipush 5211
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5212
iadd
iconst_1
ineg
iload 1
sipush 5212
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5213
iadd
iconst_1
ineg
iload 1
sipush 5213
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5214
iadd
bipush 7
iload 1
sipush 5214
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5217
iadd
sipush 4096
ineg
iload 1
sipush 5217
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5218
iadd
iconst_1
ineg
iload 1
sipush 5218
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5219
iadd
iconst_1
ineg
iload 1
sipush 5219
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5220
iadd
iconst_1
ineg
iload 1
sipush 5220
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5221
iadd
sipush 511
iload 1
sipush 5221
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5242
iadd
sipush 4096
ineg
iload 1
sipush 5242
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5243
iadd
iconst_1
ineg
iload 1
sipush 5243
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5244
iadd
iconst_1
ineg
iload 1
sipush 5244
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5245
iadd
iconst_1
ineg
iload 1
sipush 5245
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5246
iadd
bipush 7
iload 1
sipush 5246
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5249
iadd
sipush 4096
ineg
iload 1
sipush 5249
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5250
iadd
iconst_1
ineg
iload 1
sipush 5250
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5251
iadd
iconst_1
ineg
iload 1
sipush 5251
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5252
iadd
iconst_1
ineg
iload 1
sipush 5252
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5253
iadd
bipush 31
iload 1
sipush 5253
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5275
iadd
bipush 8
ineg
iload 1
sipush 5275
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5276
iadd
iconst_1
ineg
iload 1
sipush 5276
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5277
iadd
iconst_1
ineg
iload 1
sipush 5277
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5278
iadd
bipush 7
iload 1
sipush 5278
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5281
iadd
sipush 4096
ineg
iload 1
sipush 5281
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5282
iadd
iconst_1
ineg
iload 1
sipush 5282
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5283
iadd
iconst_1
ineg
iload 1
sipush 5283
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5284
iadd
iconst_1
ineg
iload 1
sipush 5284
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5285
iadd
iconst_1
iload 1
sipush 5285
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5307
iadd
sipush 512
ineg
iload 1
sipush 5307
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5308
iadd
iconst_1
ineg
iload 1
sipush 5308
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5309
iadd
iconst_1
ineg
iload 1
sipush 5309
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5310
iadd
bipush 7
iload 1
sipush 5310
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5313
iadd
sipush 4096
ineg
iload 1
sipush 5313
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5314
iadd
iconst_1
ineg
iload 1
sipush 5314
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5315
iadd
iconst_1
ineg
iload 1
sipush 5315
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5316
iadd
sipush 8191
iload 1
sipush 5316
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5339
iadd
sipush 32767
ifne jump102
iconst_1
goto jump103
jump102:
iconst_0
jump103:
iload 1
sipush 5339
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5340
iadd
iconst_1
ineg
iload 1
sipush 5340
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5341
iadd
iconst_1
ineg
iload 1
sipush 5341
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5342
iadd
bipush 7
iload 1
sipush 5342
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5345
iadd
sipush 4096
ineg
iload 1
sipush 5345
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5346
iadd
iconst_1
ineg
iload 1
sipush 5346
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5347
iadd
iconst_1
ineg
iload 1
sipush 5347
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5348
iadd
sipush 511
iload 1
sipush 5348
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5372
iadd
bipush 8
ineg
iload 1
sipush 5372
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5373
iadd
iconst_1
ineg
iload 1
sipush 5373
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5374
iadd
bipush 7
iload 1
sipush 5374
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5377
iadd
sipush 4096
ineg
iload 1
sipush 5377
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5378
iadd
iconst_1
ineg
iload 1
sipush 5378
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5379
iadd
iconst_1
ineg
iload 1
sipush 5379
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5380
iadd
iconst_1
iload 1
sipush 5380
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5404
iadd
bipush 64
ineg
iload 1
sipush 5404
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5405
iadd
iconst_1
ineg
iload 1
sipush 5405
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5406
iadd
bipush 7
iload 1
sipush 5406
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5409
iadd
sipush 4096
ineg
iload 1
sipush 5409
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5410
iadd
iconst_1
ineg
iload 1
sipush 5410
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5411
iadd
sipush 4095
iload 1
sipush 5411
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5436
iadd
sipush 512
ineg
iload 1
sipush 5436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5437
iadd
iconst_1
ineg
iload 1
sipush 5437
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5438
iadd
bipush 7
iload 1
sipush 5438
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5441
iadd
sipush 4096
ineg
iload 1
sipush 5441
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5442
iadd
iconst_1
ineg
iload 1
sipush 5442
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5443
iadd
bipush 15
iload 1
sipush 5443
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5468
iadd
sipush 16384
ineg
iload 1
sipush 5468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5469
iadd
iconst_1
ineg
iload 1
sipush 5469
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5470
iadd
bipush 7
iload 1
sipush 5470
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5473
iadd
sipush 4096
ineg
iload 1
sipush 5473
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5474
iadd
sipush 16383
iload 1
sipush 5474
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5501
iadd
iconst_4
ineg
iload 1
sipush 5501
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5502
iadd
bipush 7
iload 1
sipush 5502
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5505
iadd
sipush 4096
ineg
iload 1
sipush 5505
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5506
iadd
sipush 4095
iload 1
sipush 5506
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5533
iadd
sipush 128
ineg
iload 1
sipush 5533
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5534
iadd
bipush 7
iload 1
sipush 5534
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5537
iadd
sipush 4096
ineg
iload 1
sipush 5537
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5538
iadd
bipush 63
iload 1
sipush 5538
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5565
iadd
sipush 1024
ineg
iload 1
sipush 5565
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5566
iadd
bipush 7
iload 1
sipush 5566
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5569
iadd
sipush 4096
ineg
iload 1
sipush 5569
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5570
iadd
bipush 7
iload 1
sipush 5570
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5597
iadd
sipush 8192
ineg
iload 1
sipush 5597
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5598
iadd
bipush 7
iload 1
sipush 5598
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawKerbs1(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4238
iadd
sipush 31744
iload 1
sipush 4238
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4241
iadd
bipush 12
iload 1
sipush 4241
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4301
iadd
sipush 32767
ifne jump104
iconst_1
goto jump105
jump104:
iconst_0
jump105:
iload 1
sipush 4301
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4302
iadd
bipush 31
iload 1
sipush 4302
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4305
iadd
sipush 14336
iload 1
sipush 4305
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4365
iadd
sipush 4064
iload 1
sipush 4365
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4370
iadd
sipush 496
iload 1
sipush 4370
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4428
iadd
sipush 8192
ineg
iload 1
sipush 4428
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4429
iadd
bipush 15
iload 1
sipush 4429
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4434
iadd
sipush 4096
ineg
iload 1
sipush 4434
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4435
iadd
bipush 7
iload 1
sipush 4435
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4492
iadd
sipush 508
iload 1
sipush 4492
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4499
iadd
sipush 1984
iload 1
sipush 4499
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4555
iadd
sipush 1024
ineg
iload 1
sipush 4555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4556
iadd
iconst_3
iload 1
sipush 4556
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4563
iadd
sipush 8192
ineg
iload 1
sipush 4563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4564
iadd
bipush 15
iload 1
sipush 4564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4619
iadd
sipush 2046
iload 1
sipush 4619
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4628
iadd
sipush 32752
iload 1
sipush 4628
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4682
iadd
sipush 128
ineg
iload 1
sipush 4682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4683
iadd
iconst_1
iload 1
sipush 4683
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4714
iadd
sipush 16376
iload 1
sipush 4714
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4725
iadd
sipush 4094
iload 1
sipush 4725
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4809
iadd
bipush 16
ineg
iload 1
sipush 4809
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4810
iadd
iconst_3
iload 1
sipush 4810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4821
iadd
sipush 16384
ineg
iload 1
sipush 4821
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4822
iadd
sipush 4095
iload 1
sipush 4822
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4841
iadd
sipush 8188
iload 1
sipush 4841
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4854
iadd
sipush 16380
iload 1
sipush 4854
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4936
iadd
iconst_1
ineg
iload 1
sipush 4936
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4937
iadd
iconst_1
iload 1
sipush 4937
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4950
iadd
sipush 32767
ifne jump106
iconst_1
goto jump107
jump106:
iconst_0
jump107:
iload 1
sipush 4950
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4951
iadd
sipush 16383
iload 1
sipush 4951
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4967
iadd
sipush 4096
ineg
iload 1
sipush 4967
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4968
iadd
sipush 8191
iload 1
sipush 4968
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4983
iadd
bipush 8
ineg
iload 1
sipush 4983
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4984
iadd
bipush 15
iload 1
sipush 4984
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4999
iadd
sipush 1024
ineg
iload 1
sipush 4999
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5000
iadd
sipush 255
iload 1
sipush 5000
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5015
iadd
sipush 128
ineg
iload 1
sipush 5015
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5016
iadd
bipush 31
iload 1
sipush 5016
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5158
iadd
iconst_1
ineg
iload 1
sipush 5158
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5159
iadd
bipush 7
iload 1
sipush 5159
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5176
iadd
sipush 8192
ineg
iload 1
sipush 5176
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5177
iadd
sipush 16383
iload 1
sipush 5177
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5189
iadd
sipush 4096
ineg
iload 1
sipush 5189
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5190
iadd
sipush 32767
iload 1
sipush 5190
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5209
iadd
iconst_2
ineg
iload 1
sipush 5209
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5210
iadd
bipush 7
iload 1
sipush 5210
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5221
iadd
sipush 128
ineg
iload 1
sipush 5221
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5222
iadd
sipush 2047
iload 1
sipush 5222
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5241
iadd
bipush 32
ineg
iload 1
sipush 5241
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5242
iadd
sipush 255
iload 1
sipush 5242
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5253
iadd
bipush 8
ineg
iload 1
sipush 5253
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5254
iadd
bipush 127
iload 1
sipush 5254
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5273
iadd
sipush 512
ineg
iload 1
sipush 5273
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5274
iadd
sipush 8191
iload 1
sipush 5274
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5306
iadd
sipush 16382
iload 1
sipush 5306
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5506
iadd
sipush 16384
ineg
iload 1
sipush 5506
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5507
iadd
iconst_1
ineg
iload 1
sipush 5507
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5508
iadd
bipush 15
iload 1
sipush 5508
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5531
iadd
sipush 4096
ineg
iload 1
sipush 5531
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5532
iadd
iconst_1
ineg
iload 1
sipush 5532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5533
iadd
bipush 7
iload 1
sipush 5533
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5538
iadd
sipush 512
ineg
iload 1
sipush 5538
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5539
iadd
iconst_1
ineg
iload 1
sipush 5539
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5563
iadd
sipush 32767
ifne jump108
iconst_1
goto jump109
jump108:
iconst_0
jump109:
iload 1
sipush 5563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5564
iadd
iconst_1
ineg
iload 1
sipush 5564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5565
iadd
sipush 255
iload 1
sipush 5565
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5570
iadd
bipush 16
ineg
iload 1
sipush 5570
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5571
iadd
sipush 4095
iload 1
sipush 5571
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5596
iadd
bipush 16
ineg
iload 1
sipush 5596
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5597
iadd
sipush 4095
iload 1
sipush 5597
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5601
iadd
sipush 32767
ifne jump110
iconst_1
goto jump111
jump110:
iconst_0
jump111:
iload 1
sipush 5601
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5602
iadd
iconst_1
ineg
iload 1
sipush 5602
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5603
iadd
sipush 255
iload 1
sipush 5603
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5628
iadd
sipush 256
ineg
iload 1
sipush 5628
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5629
iadd
iconst_1
ineg
iload 1
sipush 5629
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5630
iadd
iconst_1
iload 1
sipush 5630
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5633
iadd
sipush 4096
ineg
iload 1
sipush 5633
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5634
iadd
iconst_1
ineg
iload 1
sipush 5634
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5635
iadd
bipush 15
iload 1
sipush 5635
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5660
iadd
sipush 4096
ineg
iload 1
sipush 5660
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5661
iadd
iconst_1
ineg
iload 1
sipush 5661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5662
iadd
bipush 7
iload 1
sipush 5662
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5665
iadd
sipush 4096
ineg
iload 1
sipush 5665
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5666
iadd
iconst_1
ineg
iload 1
sipush 5666
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5693
iadd
iconst_1
ineg
iload 1
sipush 5693
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5694
iadd
bipush 7
iload 1
sipush 5694
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5697
iadd
sipush 4096
ineg
iload 1
sipush 5697
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5698
iadd
sipush 2047
iload 1
sipush 5698
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5725
iadd
bipush 32
ineg
iload 1
sipush 5725
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5726
iadd
bipush 7
iload 1
sipush 5726
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5729
iadd
sipush 4096
ineg
iload 1
sipush 5729
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5730
iadd
bipush 127
iload 1
sipush 5730
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5757
iadd
sipush 512
ineg
iload 1
sipush 5757
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5758
iadd
bipush 7
iload 1
sipush 5758
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5761
iadd
sipush 4096
ineg
iload 1
sipush 5761
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5762
iadd
bipush 7
iload 1
sipush 5762
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5789
iadd
sipush 8192
ineg
iload 1
sipush 5789
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5790
iadd
bipush 7
iload 1
sipush 5790
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawKerbs2(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4206
iadd
sipush 32767
ifne jump112
iconst_1
goto jump113
jump112:
iconst_0
jump113:
iload 1
sipush 4206
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4207
iadd
bipush 7
iload 1
sipush 4207
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4208
iadd
sipush 8192
ineg
iload 1
sipush 4208
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4270
iadd
sipush 496
iload 1
sipush 4270
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4273
iadd
sipush 8064
iload 1
sipush 4273
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4333
iadd
sipush 2048
ineg
iload 1
sipush 4333
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4337
iadd
sipush 32767
ifne jump114
iconst_1
goto jump115
jump114:
iconst_0
jump115:
iload 1
sipush 4337
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4338
iadd
bipush 31
iload 1
sipush 4338
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4397
iadd
sipush 254
iload 1
sipush 4397
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4402
iadd
sipush 256
ineg
iload 1
sipush 4402
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4460
iadd
sipush 16256
iload 1
sipush 4460
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4467
iadd
sipush 252
iload 1
sipush 4467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4523
iadd
sipush 16384
ineg
iload 1
sipush 4523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4524
iadd
bipush 127
iload 1
sipush 4524
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4531
iadd
sipush 256
ineg
iload 1
sipush 4531
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4532
iadd
iconst_3
iload 1
sipush 4532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4587
iadd
sipush 4064
iload 1
sipush 4587
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4596
iadd
sipush 2040
iload 1
sipush 4596
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4650
iadd
sipush 1024
ineg
iload 1
sipush 4650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4651
iadd
iconst_1
iload 1
sipush 4651
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4660
iadd
sipush 2048
ineg
iload 1
sipush 4660
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4661
iadd
bipush 31
iload 1
sipush 4661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4692
iadd
sipush 32767
ifne jump116
iconst_1
goto jump117
jump116:
iconst_0
jump117:
iload 1
sipush 4692
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4693
iadd
sipush 511
iload 1
sipush 4693
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4745
iadd
sipush 8192
ineg
iload 1
sipush 4745
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4746
iadd
bipush 31
iload 1
sipush 4746
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4757
iadd
sipush 512
ineg
iload 1
sipush 4757
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4758
iadd
bipush 7
iload 1
sipush 4758
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4777
iadd
sipush 512
ineg
iload 1
sipush 4777
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4778
iadd
bipush 7
iload 1
sipush 4778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4789
iadd
sipush 4096
ineg
iload 1
sipush 4789
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4790
iadd
bipush 127
iload 1
sipush 4790
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4872
iadd
sipush 1024
ineg
iload 1
sipush 4872
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4873
iadd
bipush 31
iload 1
sipush 4873
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4886
iadd
sipush 1024
ineg
iload 1
sipush 4886
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4887
iadd
bipush 127
iload 1
sipush 4887
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4904
iadd
bipush 64
ineg
iload 1
sipush 4904
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4905
iadd
bipush 7
iload 1
sipush 4905
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4918
iadd
sipush 8192
ineg
iload 1
sipush 4918
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4919
iadd
sipush 1023
iload 1
sipush 4919
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5031
iadd
bipush 8
ineg
iload 1
sipush 5031
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5047
iadd
sipush 32767
ifne jump118
iconst_1
goto jump119
jump118:
iconst_0
jump119:
iload 1
sipush 5047
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5048
iadd
sipush 16383
iload 1
sipush 5048
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5062
iadd
sipush 16384
ineg
iload 1
sipush 5062
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5063
iadd
sipush 4095
iload 1
sipush 5063
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5080
iadd
bipush 8
ineg
iload 1
sipush 5080
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5081
iadd
iconst_3
iload 1
sipush 5081
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5094
iadd
sipush 512
ineg
iload 1
sipush 5094
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5095
iadd
sipush 255
iload 1
sipush 5095
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5112
iadd
sipush 256
ineg
iload 1
sipush 5112
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5113
iadd
bipush 63
iload 1
sipush 5113
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5126
iadd
bipush 32
ineg
iload 1
sipush 5126
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5127
iadd
bipush 31
iload 1
sipush 5127
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5144
iadd
sipush 512
ineg
iload 1
sipush 5144
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5145
iadd
sipush 2047
iload 1
sipush 5145
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5284
iadd
sipush 8192
ineg
iload 1
sipush 5284
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5285
iadd
iconst_1
ineg
iload 1
sipush 5285
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5286
iadd
iconst_3
iload 1
sipush 5286
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5316
iadd
sipush 256
ineg
iload 1
sipush 5316
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5317
iadd
sipush 1023
iload 1
sipush 5317
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5338
iadd
sipush 256
ineg
iload 1
sipush 5338
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5339
iadd
bipush 31
iload 1
sipush 5339
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5348
iadd
bipush 16
ineg
iload 1
sipush 5348
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5349
iadd
bipush 63
iload 1
sipush 5349
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5370
iadd
sipush 1024
ineg
iload 1
sipush 5370
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5371
iadd
sipush 2047
iload 1
sipush 5371
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5379
iadd
sipush 32767
ifne jump120
iconst_1
goto jump121
jump120:
iconst_0
jump121:
iload 1
sipush 5379
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5380
iadd
iconst_1
ineg
iload 1
sipush 5380
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5381
iadd
iconst_1
iload 1
sipush 5381
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5402
iadd
sipush 32767
ifne jump122
iconst_1
goto jump123
jump122:
iconst_0
jump123:
iload 1
sipush 5402
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5403
iadd
iconst_1
ineg
iload 1
sipush 5403
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5411
iadd
sipush 2048
ineg
iload 1
sipush 5411
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5412
iadd
sipush 16383
iload 1
sipush 5412
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5435
iadd
iconst_4
ineg
iload 1
sipush 5435
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5436
iadd
bipush 31
iload 1
sipush 5436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5443
iadd
sipush 128
ineg
iload 1
sipush 5443
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5444
iadd
sipush 511
iload 1
sipush 5444
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5467
iadd
sipush 128
ineg
iload 1
sipush 5467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5468
iadd
sipush 1023
iload 1
sipush 5468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5475
iadd
iconst_2
ineg
iload 1
sipush 5475
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5476
iadd
bipush 31
iload 1
sipush 5476
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5499
iadd
sipush 2048
ineg
iload 1
sipush 5499
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5500
iadd
sipush 32767
iload 1
sipush 5500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockMiddleTiny(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4303
iadd
sipush 1024
iload 1
sipush 4303
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4304
iadd
bipush 8
iload 1
sipush 4304
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4335
iadd
sipush 22016
ineg
iload 1
sipush 4335
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4336
iadd
bipush 26
iload 1
sipush 4336
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4367
iadd
sipush 1024
iload 1
sipush 4367
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4368
iadd
bipush 8
iload 1
sipush 4368
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4399
iadd
sipush 22016
iload 1
sipush 4399
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4400
iadd
bipush 21
iload 1
sipush 4400
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4431
iadd
sipush 1024
iload 1
sipush 4431
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4432
iadd
bipush 8
iload 1
sipush 4432
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4463
iadd
sipush 22016
ineg
iload 1
sipush 4463
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4464
iadd
bipush 26
iload 1
sipush 4464
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4495
iadd
sipush 1024
iload 1
sipush 4495
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4496
iadd
bipush 8
iload 1
sipush 4496
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4527
iadd
sipush 1024
iload 1
sipush 4527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4528
iadd
bipush 8
iload 1
sipush 4528
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4559
iadd
sipush 1024
iload 1
sipush 4559
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4560
iadd
bipush 8
iload 1
sipush 4560
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockMiddleSmall(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4335
iadd
bipush 96
iload 1
sipush 4335
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4336
iadd
sipush 256
iload 1
sipush 4336
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4367
iadd
bipush 96
iload 1
sipush 4367
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4368
iadd
sipush 384
iload 1
sipush 4368
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4399
iadd
bipush 96
iload 1
sipush 4399
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4400
iadd
sipush 384
iload 1
sipush 4400
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4431
iadd
sipush 18728
ineg
iload 1
sipush 4431
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4432
iadd
sipush 877
iload 1
sipush 4432
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4463
iadd
sipush 9368
ineg
iload 1
sipush 4463
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4464
iadd
sipush 1462
iload 1
sipush 4464
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4495
iadd
sipush 28080
iload 1
sipush 4495
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4496
iadd
sipush 1755
iload 1
sipush 4496
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4527
iadd
bipush 96
iload 1
sipush 4527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4528
iadd
sipush 256
iload 1
sipush 4528
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4559
iadd
bipush 96
iload 1
sipush 4559
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4560
iadd
sipush 256
iload 1
sipush 4560
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4591
iadd
sipush 18600
ineg
iload 1
sipush 4591
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4592
iadd
sipush 3002
iload 1
sipush 4592
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4623
iadd
sipush 26904
ineg
iload 1
sipush 4623
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4624
iadd
sipush 3405
iload 1
sipush 4624
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4655
iadd
sipush 9360
ineg
iload 1
sipush 4655
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4656
iadd
sipush 3831
iload 1
sipush 4656
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4687
iadd
bipush 96
iload 1
sipush 4687
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4688
iadd
sipush 256
iload 1
sipush 4688
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4719
iadd
bipush 96
iload 1
sipush 4719
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4720
iadd
sipush 256
iload 1
sipush 4720
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4751
iadd
sipush 18728
ineg
iload 1
sipush 4751
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4752
iadd
sipush 877
iload 1
sipush 4752
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4783
iadd
sipush 9368
ineg
iload 1
sipush 4783
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4784
iadd
sipush 1462
iload 1
sipush 4784
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4815
iadd
sipush 28080
iload 1
sipush 4815
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4816
iadd
sipush 1755
iload 1
sipush 4816
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4847
iadd
bipush 96
iload 1
sipush 4847
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4848
iadd
sipush 256
iload 1
sipush 4848
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4879
iadd
bipush 96
iload 1
sipush 4879
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4880
iadd
sipush 256
iload 1
sipush 4880
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4911
iadd
bipush 96
iload 1
sipush 4911
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4912
iadd
sipush 256
iload 1
sipush 4912
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4943
iadd
bipush 96
iload 1
sipush 4943
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4944
iadd
sipush 256
iload 1
sipush 4944
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4976
iadd
sipush 256
iload 1
sipush 4976
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockMiddleMedium(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4238
iadd
sipush 12288
iload 1
sipush 4238
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4241
iadd
iconst_2
iload 1
sipush 4241
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4270
iadd
sipush 30720
iload 1
sipush 4270
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4273
iadd
bipush 7
iload 1
sipush 4273
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4302
iadd
sipush 30720
iload 1
sipush 4302
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4305
iadd
bipush 7
iload 1
sipush 4305
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4334
iadd
sipush 30720
iload 1
sipush 4334
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4337
iadd
bipush 7
iload 1
sipush 4337
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4366
iadd
sipush 30720
iload 1
sipush 4366
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4369
iadd
bipush 7
iload 1
sipush 4369
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4398
iadd
sipush 12288
iload 1
sipush 4398
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4401
iadd
bipush 7
iload 1
sipush 4401
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4430
iadd
sipush 128
ineg
iload 1
sipush 4430
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4431
iadd
iconst_1
ineg
iload 1
sipush 4431
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4432
iadd
iconst_1
ineg
iload 1
sipush 4432
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4433
iadd
bipush 127
iload 1
sipush 4433
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4462
iadd
sipush 3136
ineg
iload 1
sipush 4462
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4463
iadd
sipush 12484
ineg
iload 1
sipush 4463
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4464
iadd
sipush 15603
iload 1
sipush 4464
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4465
iadd
sipush 207
iload 1
sipush 4465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4494
iadd
sipush 29120
iload 1
sipush 4494
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4495
iadd
sipush 14564
ineg
iload 1
sipush 4495
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4496
iadd
sipush 25487
ineg
iload 1
sipush 4496
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4497
iadd
sipush 231
iload 1
sipush 4497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4526
iadd
sipush 31168
iload 1
sipush 4526
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4527
iadd
sipush 6242
ineg
iload 1
sipush 4527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4528
iadd
sipush 24967
ineg
iload 1
sipush 4528
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4529
iadd
sipush 231
iload 1
sipush 4529
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4558
iadd
sipush 14528
iload 1
sipush 4558
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4559
iadd
sipush 7282
ineg
iload 1
sipush 4559
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4560
iadd
sipush 12744
ineg
iload 1
sipush 4560
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4561
iadd
sipush 243
iload 1
sipush 4561
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4590
iadd
bipush 64
ineg
iload 1
sipush 4590
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4591
iadd
iconst_1
ineg
iload 1
sipush 4591
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4592
iadd
iconst_1
ineg
iload 1
sipush 4592
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4593
iadd
sipush 255
iload 1
sipush 4593
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4622
iadd
sipush 12288
iload 1
sipush 4622
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4625
iadd
bipush 7
iload 1
sipush 4625
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4654
iadd
sipush 12288
iload 1
sipush 4654
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4657
iadd
bipush 7
iload 1
sipush 4657
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4686
iadd
sipush 12288
iload 1
sipush 4686
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4689
iadd
bipush 7
iload 1
sipush 4689
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4718
iadd
sipush 12288
iload 1
sipush 4718
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4721
iadd
bipush 7
iload 1
sipush 4721
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4750
iadd
bipush 64
ineg
iload 1
sipush 4750
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4751
iadd
iconst_1
ineg
iload 1
sipush 4751
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4752
iadd
iconst_1
ineg
iload 1
sipush 4752
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4753
iadd
sipush 255
iload 1
sipush 4753
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4782
iadd
sipush 3136
ineg
iload 1
sipush 4782
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4783
iadd
iconst_1
ineg
iload 1
sipush 4783
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4784
iadd
iconst_1
ineg
iload 1
sipush 4784
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4785
iadd
sipush 199
iload 1
sipush 4785
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4814
iadd
sipush 29120
iload 1
sipush 4814
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4815
iadd
sipush 8907
ineg
iload 1
sipush 4815
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4816
iadd
sipush 21091
ineg
iload 1
sipush 4816
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4817
iadd
sipush 231
iload 1
sipush 4817
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4846
iadd
sipush 31168
iload 1
sipush 4846
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4847
iadd
sipush 13229
iload 1
sipush 4847
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4848
iadd
sipush 10378
ineg
iload 1
sipush 4848
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4849
iadd
sipush 227
iload 1
sipush 4849
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4878
iadd
sipush 1856
ineg
iload 1
sipush 4878
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4879
iadd
sipush 4950
ineg
iload 1
sipush 4879
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4880
iadd
sipush 29898
iload 1
sipush 4880
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4881
iadd
sipush 243
iload 1
sipush 4881
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4910
iadd
bipush 64
ineg
iload 1
sipush 4910
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4911
iadd
iconst_1
ineg
iload 1
sipush 4911
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4912
iadd
iconst_1
ineg
iload 1
sipush 4912
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4913
iadd
sipush 255
iload 1
sipush 4913
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4942
iadd
sipush 12288
iload 1
sipush 4942
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4945
iadd
bipush 7
iload 1
sipush 4945
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4974
iadd
sipush 12288
iload 1
sipush 4974
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4977
iadd
bipush 7
iload 1
sipush 4977
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5006
iadd
sipush 12288
iload 1
sipush 5006
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5009
iadd
bipush 7
iload 1
sipush 5009
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5038
iadd
sipush 12288
iload 1
sipush 5038
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5041
iadd
bipush 7
iload 1
sipush 5041
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5070
iadd
bipush 64
ineg
iload 1
sipush 5070
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5071
iadd
iconst_1
ineg
iload 1
sipush 5071
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5072
iadd
iconst_1
ineg
iload 1
sipush 5072
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5073
iadd
sipush 255
iload 1
sipush 5073
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5102
iadd
sipush 3136
ineg
iload 1
sipush 5102
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5103
iadd
sipush 14532
ineg
iload 1
sipush 5103
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5104
iadd
sipush 7281
iload 1
sipush 5104
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5105
iadd
sipush 199
iload 1
sipush 5105
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5134
iadd
sipush 29120
iload 1
sipush 5134
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5135
iadd
sipush 6372
ineg
iload 1
sipush 5135
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5136
iadd
sipush 24967
ineg
iload 1
sipush 5136
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5137
iadd
sipush 231
iload 1
sipush 5137
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5166
iadd
sipush 31168
iload 1
sipush 5166
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5167
iadd
sipush 7266
ineg
iload 1
sipush 5167
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5168
iadd
sipush 29128
ineg
iload 1
sipush 5168
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5169
iadd
sipush 227
iload 1
sipush 5169
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5198
iadd
sipush 14528
iload 1
sipush 5198
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5199
iadd
sipush 3186
ineg
iload 1
sipush 5199
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5200
iadd
sipush 12484
ineg
iload 1
sipush 5200
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5201
iadd
sipush 243
iload 1
sipush 5201
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5230
iadd
sipush 128
ineg
iload 1
sipush 5230
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5231
iadd
iconst_1
ineg
iload 1
sipush 5231
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5232
iadd
iconst_1
ineg
iload 1
sipush 5232
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5233
iadd
bipush 127
iload 1
sipush 5233
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5262
iadd
sipush 12288
iload 1
sipush 5262
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5265
iadd
bipush 7
iload 1
sipush 5265
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5294
iadd
sipush 12288
iload 1
sipush 5294
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5297
iadd
bipush 7
iload 1
sipush 5297
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5326
iadd
sipush 12288
iload 1
sipush 5326
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5329
iadd
bipush 7
iload 1
sipush 5329
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5358
iadd
sipush 12288
iload 1
sipush 5358
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5361
iadd
bipush 7
iload 1
sipush 5361
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5390
iadd
sipush 12288
iload 1
sipush 5390
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5393
iadd
bipush 7
iload 1
sipush 5393
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5422
iadd
sipush 12288
iload 1
sipush 5422
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5425
iadd
bipush 7
iload 1
sipush 5425
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5454
iadd
sipush 12288
iload 1
sipush 5454
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5457
iadd
bipush 7
iload 1
sipush 5457
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5486
iadd
sipush 12288
iload 1
sipush 5486
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5489
iadd
bipush 7
iload 1
sipush 5489
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5518
iadd
sipush 12288
iload 1
sipush 5518
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5521
iadd
bipush 7
iload 1
sipush 5521
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5553
iadd
iconst_2
iload 1
sipush 5553
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockMiddleLarge(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 5101
iadd
sipush 30720
iload 1
sipush 5101
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5106
iadd
sipush 240
iload 1
sipush 5106
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5133
iadd
sipush 1024
ineg
iload 1
sipush 5133
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5138
iadd
sipush 504
iload 1
sipush 5138
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5165
iadd
sipush 1024
ineg
iload 1
sipush 5165
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5170
iadd
sipush 504
iload 1
sipush 5170
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5197
iadd
sipush 1024
ineg
iload 1
sipush 5197
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5202
iadd
sipush 504
iload 1
sipush 5202
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5229
iadd
sipush 1024
ineg
iload 1
sipush 5229
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5234
iadd
sipush 504
iload 1
sipush 5234
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5261
iadd
sipush 1024
ineg
iload 1
sipush 5261
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5266
iadd
sipush 504
iload 1
sipush 5266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5293
iadd
sipush 1024
ineg
iload 1
sipush 5293
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5298
iadd
sipush 504
iload 1
sipush 5298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5325
iadd
sipush 1024
ineg
iload 1
sipush 5325
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5330
iadd
sipush 504
iload 1
sipush 5330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5357
iadd
sipush 512
ineg
iload 1
sipush 5357
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5358
iadd
iconst_1
iload 1
sipush 5358
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5362
iadd
sipush 1020
iload 1
sipush 5362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5389
iadd
sipush 1024
ineg
iload 1
sipush 5389
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5394
iadd
sipush 504
iload 1
sipush 5394
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5421
iadd
sipush 30720
iload 1
sipush 5421
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5426
iadd
sipush 240
iload 1
sipush 5426
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5453
iadd
sipush 30720
iload 1
sipush 5453
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5458
iadd
sipush 240
iload 1
sipush 5458
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5485
iadd
iconst_1
ineg
iload 1
sipush 5485
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5486
iadd
iconst_1
ineg
iload 1
sipush 5486
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5487
iadd
iconst_1
ineg
iload 1
sipush 5487
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5488
iadd
iconst_1
ineg
iload 1
sipush 5488
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5489
iadd
iconst_1
ineg
iload 1
sipush 5489
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5490
iadd
iconst_1
ineg
iload 1
sipush 5490
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5491
iadd
iconst_3
iload 1
sipush 5491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5517
iadd
sipush 8129
ineg
iload 1
sipush 5517
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5518
iadd
sipush 15875
iload 1
sipush 5518
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5519
iadd
sipush 992
iload 1
sipush 5519
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5520
iadd
sipush 4033
ineg
iload 1
sipush 5520
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5521
iadd
sipush 16131
iload 1
sipush 5521
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5522
iadd
sipush 1008
iload 1
sipush 5522
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5523
iadd
iconst_3
iload 1
sipush 5523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5549
iadd
sipush 4033
ineg
iload 1
sipush 5549
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5550
iadd
sipush 16131
iload 1
sipush 5550
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5551
iadd
sipush 496
iload 1
sipush 5551
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5552
iadd
sipush 4065
ineg
iload 1
sipush 5552
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5553
iadd
sipush 7937
iload 1
sipush 5553
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5554
iadd
sipush 32264
ineg
iload 1
sipush 5554
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5555
iadd
iconst_3
iload 1
sipush 5555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5581
iadd
sipush 4065
ineg
iload 1
sipush 5581
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5582
iadd
sipush 7937
iload 1
sipush 5582
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5583
iadd
sipush 32272
ineg
iload 1
sipush 5583
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5584
iadd
sipush 2017
ineg
iload 1
sipush 5584
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5585
iadd
sipush 8065
iload 1
sipush 5585
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5586
iadd
sipush 32264
ineg
iload 1
sipush 5586
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5587
iadd
iconst_3
iload 1
sipush 5587
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5613
iadd
sipush 2017
ineg
iload 1
sipush 5613
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5614
iadd
sipush 8065
iload 1
sipush 5614
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5615
iadd
sipush 32520
ineg
iload 1
sipush 5615
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5616
iadd
sipush 2033
ineg
iload 1
sipush 5616
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5617
iadd
sipush 3968
iload 1
sipush 5617
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5618
iadd
sipush 16132
ineg
iload 1
sipush 5618
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5619
iadd
iconst_3
iload 1
sipush 5619
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5645
iadd
sipush 2033
ineg
iload 1
sipush 5645
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5646
iadd
sipush 3968
iload 1
sipush 5646
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5647
iadd
sipush 16136
ineg
iload 1
sipush 5647
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5648
iadd
sipush 1009
ineg
iload 1
sipush 5648
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5649
iadd
sipush 4032
iload 1
sipush 5649
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5650
iadd
sipush 16132
ineg
iload 1
sipush 5650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5651
iadd
iconst_3
iload 1
sipush 5651
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5677
iadd
sipush 1009
ineg
iload 1
sipush 5677
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5678
iadd
sipush 4032
iload 1
sipush 5678
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5679
iadd
sipush 16260
ineg
iload 1
sipush 5679
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5680
iadd
sipush 31751
iload 1
sipush 5680
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5681
iadd
sipush 1984
iload 1
sipush 5681
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5682
iadd
sipush 8066
ineg
iload 1
sipush 5682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5683
iadd
iconst_3
iload 1
sipush 5683
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5709
iadd
sipush 31751
iload 1
sipush 5709
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5710
iadd
sipush 1984
iload 1
sipush 5710
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5711
iadd
sipush 8068
ineg
iload 1
sipush 5711
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5712
iadd
sipush 32263
iload 1
sipush 5712
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5713
iadd
sipush 2016
iload 1
sipush 5713
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5714
iadd
sipush 8066
ineg
iload 1
sipush 5714
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5715
iadd
iconst_3
iload 1
sipush 5715
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5741
iadd
sipush 32263
iload 1
sipush 5741
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5742
iadd
sipush 2016
iload 1
sipush 5742
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5743
iadd
sipush 8130
ineg
iload 1
sipush 5743
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5744
iadd
sipush 15875
iload 1
sipush 5744
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5745
iadd
sipush 992
iload 1
sipush 5745
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5746
iadd
sipush 4033
ineg
iload 1
sipush 5746
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5747
iadd
iconst_3
iload 1
sipush 5747
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5773
iadd
sipush 15875
iload 1
sipush 5773
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5774
iadd
sipush 992
iload 1
sipush 5774
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5775
iadd
sipush 4034
ineg
iload 1
sipush 5775
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5776
iadd
sipush 16131
iload 1
sipush 5776
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5777
iadd
sipush 1008
iload 1
sipush 5777
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5778
iadd
sipush 4033
ineg
iload 1
sipush 5778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5779
iadd
iconst_3
iload 1
sipush 5779
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5805
iadd
iconst_1
ineg
iload 1
sipush 5805
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5806
iadd
iconst_1
ineg
iload 1
sipush 5806
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5807
iadd
iconst_1
ineg
iload 1
sipush 5807
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5808
iadd
iconst_1
ineg
iload 1
sipush 5808
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5809
iadd
iconst_1
ineg
iload 1
sipush 5809
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5810
iadd
iconst_1
ineg
iload 1
sipush 5810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5811
iadd
iconst_3
iload 1
sipush 5811
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5837
iadd
sipush 30720
iload 1
sipush 5837
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5842
iadd
sipush 240
iload 1
sipush 5842
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5869
iadd
sipush 30720
iload 1
sipush 5869
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5874
iadd
sipush 240
iload 1
sipush 5874
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5901
iadd
sipush 30720
iload 1
sipush 5901
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5906
iadd
sipush 240
iload 1
sipush 5906
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5933
iadd
sipush 30720
iload 1
sipush 5933
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5938
iadd
sipush 240
iload 1
sipush 5938
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5965
iadd
sipush 30720
iload 1
sipush 5965
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5970
iadd
sipush 240
iload 1
sipush 5970
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5997
iadd
sipush 30720
iload 1
sipush 5997
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6002
iadd
sipush 240
iload 1
sipush 6002
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6029
iadd
sipush 30720
iload 1
sipush 6029
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6034
iadd
sipush 240
iload 1
sipush 6034
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6061
iadd
sipush 30720
iload 1
sipush 6061
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6066
iadd
sipush 240
iload 1
sipush 6066
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6093
iadd
iconst_1
ineg
iload 1
sipush 6093
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6094
iadd
iconst_1
ineg
iload 1
sipush 6094
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6095
iadd
iconst_1
ineg
iload 1
sipush 6095
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6096
iadd
iconst_1
ineg
iload 1
sipush 6096
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6097
iadd
iconst_1
ineg
iload 1
sipush 6097
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6098
iadd
iconst_1
ineg
iload 1
sipush 6098
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6099
iadd
bipush 7
iload 1
sipush 6099
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6125
iadd
sipush 8129
ineg
iload 1
sipush 6125
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6126
iadd
sipush 15875
iload 1
sipush 6126
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6127
iadd
sipush 992
iload 1
sipush 6127
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6128
iadd
sipush 8130
ineg
iload 1
sipush 6128
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6129
iadd
sipush 15875
iload 1
sipush 6129
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6130
iadd
sipush 1008
iload 1
sipush 6130
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6131
iadd
bipush 7
iload 1
sipush 6131
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6157
iadd
sipush 8129
ineg
iload 1
sipush 6157
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6158
iadd
iconst_1
ineg
iload 1
sipush 6158
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6159
iadd
iconst_1
ineg
iload 1
sipush 6159
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6160
iadd
iconst_1
ineg
iload 1
sipush 6160
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6161
iadd
iconst_1
ineg
iload 1
sipush 6161
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6162
iadd
sipush 511
iload 1
sipush 6162
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6163
iadd
bipush 7
iload 1
sipush 6163
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6189
iadd
sipush 4065
ineg
iload 1
sipush 6189
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6190
iadd
iconst_1
ineg
iload 1
sipush 6190
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6191
iadd
iconst_1
ineg
iload 1
sipush 6191
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6192
iadd
iconst_1
ineg
iload 1
sipush 6192
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6193
iadd
iconst_1
ineg
iload 1
sipush 6193
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6194
iadd
sipush 32257
ineg
iload 1
sipush 6194
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6195
iadd
bipush 7
iload 1
sipush 6195
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6221
iadd
sipush 4065
ineg
iload 1
sipush 6221
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6222
iadd
sipush 19626
iload 1
sipush 6222
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6223
iadd
sipush 20760
iload 1
sipush 6223
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6224
iadd
sipush 20753
iload 1
sipush 6224
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6225
iadd
sipush 17681
iload 1
sipush 6225
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6226
iadd
sipush 32523
ineg
iload 1
sipush 6226
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6227
iadd
bipush 7
iload 1
sipush 6227
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6253
iadd
sipush 2033
ineg
iload 1
sipush 6253
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6254
iadd
sipush 27274
iload 1
sipush 6254
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6255
iadd
sipush 5467
iload 1
sipush 6255
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6256
iadd
sipush 21949
iload 1
sipush 6256
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6257
iadd
sipush 21941
iload 1
sipush 6257
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6258
iadd
sipush 16140
ineg
iload 1
sipush 6258
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6259
iadd
bipush 7
iload 1
sipush 6259
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6285
iadd
sipush 2033
ineg
iload 1
sipush 6285
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6286
iadd
sipush 19114
iload 1
sipush 6286
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6287
iadd
sipush 21980
iload 1
sipush 6287
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6288
iadd
sipush 20913
iload 1
sipush 6288
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6289
iadd
sipush 21949
iload 1
sipush 6289
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6290
iadd
sipush 16267
ineg
iload 1
sipush 6290
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6291
iadd
bipush 7
iload 1
sipush 6291
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6317
iadd
sipush 1017
ineg
iload 1
sipush 6317
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6318
iadd
sipush 27306
iload 1
sipush 6318
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6319
iadd
sipush 21849
iload 1
sipush 6319
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6320
iadd
sipush 22967
iload 1
sipush 6320
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6321
iadd
sipush 21941
iload 1
sipush 6321
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6322
iadd
sipush 8067
ineg
iload 1
sipush 6322
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6323
iadd
bipush 7
iload 1
sipush 6323
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6349
iadd
sipush 1017
ineg
iload 1
sipush 6349
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6350
iadd
sipush 19624
iload 1
sipush 6350
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6351
iadd
sipush 20763
iload 1
sipush 6351
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6352
iadd
sipush 5553
iload 1
sipush 6352
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6353
iadd
sipush 17841
iload 1
sipush 6353
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6354
iadd
sipush 8139
ineg
iload 1
sipush 6354
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6355
iadd
bipush 7
iload 1
sipush 6355
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6381
iadd
sipush 509
ineg
iload 1
sipush 6381
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6382
iadd
iconst_1
ineg
iload 1
sipush 6382
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6383
iadd
iconst_1
ineg
iload 1
sipush 6383
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6384
iadd
iconst_1
ineg
iload 1
sipush 6384
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6385
iadd
iconst_1
ineg
iload 1
sipush 6385
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6386
iadd
sipush 4033
ineg
iload 1
sipush 6386
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6387
iadd
bipush 7
iload 1
sipush 6387
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6413
iadd
sipush 15875
iload 1
sipush 6413
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6414
iadd
sipush 1008
iload 1
sipush 6414
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6415
iadd
sipush 4033
ineg
iload 1
sipush 6415
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6416
iadd
sipush 16131
iload 1
sipush 6416
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6417
iadd
sipush 1008
iload 1
sipush 6417
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6418
iadd
sipush 4065
ineg
iload 1
sipush 6418
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6419
iadd
bipush 7
iload 1
sipush 6419
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6445
iadd
iconst_1
ineg
iload 1
sipush 6445
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6446
iadd
iconst_1
ineg
iload 1
sipush 6446
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6447
iadd
iconst_1
ineg
iload 1
sipush 6447
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6448
iadd
iconst_1
ineg
iload 1
sipush 6448
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6449
iadd
iconst_1
ineg
iload 1
sipush 6449
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6450
iadd
iconst_1
ineg
iload 1
sipush 6450
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6451
iadd
bipush 7
iload 1
sipush 6451
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6477
iadd
sipush 30720
iload 1
sipush 6477
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6482
iadd
sipush 240
iload 1
sipush 6482
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6509
iadd
sipush 30720
iload 1
sipush 6509
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6514
iadd
sipush 240
iload 1
sipush 6514
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6541
iadd
sipush 30720
iload 1
sipush 6541
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6546
iadd
sipush 240
iload 1
sipush 6546
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6573
iadd
sipush 30720
iload 1
sipush 6573
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6578
iadd
sipush 240
iload 1
sipush 6578
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6605
iadd
sipush 30720
iload 1
sipush 6605
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6610
iadd
sipush 240
iload 1
sipush 6610
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6637
iadd
sipush 30720
iload 1
sipush 6637
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6642
iadd
sipush 240
iload 1
sipush 6642
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6669
iadd
sipush 30720
iload 1
sipush 6669
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6674
iadd
sipush 240
iload 1
sipush 6674
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6701
iadd
sipush 30720
iload 1
sipush 6701
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6706
iadd
sipush 240
iload 1
sipush 6706
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6733
iadd
iconst_1
ineg
iload 1
sipush 6733
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6734
iadd
iconst_1
ineg
iload 1
sipush 6734
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6735
iadd
iconst_1
ineg
iload 1
sipush 6735
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6736
iadd
iconst_1
ineg
iload 1
sipush 6736
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6737
iadd
iconst_1
ineg
iload 1
sipush 6737
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6738
iadd
iconst_1
ineg
iload 1
sipush 6738
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6739
iadd
iconst_3
iload 1
sipush 6739
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6765
iadd
sipush 8129
ineg
iload 1
sipush 6765
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6766
iadd
sipush 15875
iload 1
sipush 6766
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6767
iadd
sipush 992
iload 1
sipush 6767
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6768
iadd
sipush 4033
ineg
iload 1
sipush 6768
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6769
iadd
sipush 16131
iload 1
sipush 6769
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6770
iadd
sipush 1008
iload 1
sipush 6770
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6771
iadd
iconst_3
iload 1
sipush 6771
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6797
iadd
sipush 4033
ineg
iload 1
sipush 6797
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6798
iadd
sipush 16131
iload 1
sipush 6798
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6799
iadd
sipush 496
iload 1
sipush 6799
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6800
iadd
sipush 4065
ineg
iload 1
sipush 6800
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6801
iadd
sipush 7937
iload 1
sipush 6801
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6802
iadd
sipush 32264
ineg
iload 1
sipush 6802
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6803
iadd
iconst_3
iload 1
sipush 6803
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6829
iadd
sipush 4065
ineg
iload 1
sipush 6829
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6830
iadd
sipush 7937
iload 1
sipush 6830
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6831
iadd
sipush 32272
ineg
iload 1
sipush 6831
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6832
iadd
sipush 2017
ineg
iload 1
sipush 6832
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6833
iadd
sipush 8065
iload 1
sipush 6833
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6834
iadd
sipush 32264
ineg
iload 1
sipush 6834
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6835
iadd
iconst_3
iload 1
sipush 6835
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6861
iadd
sipush 2017
ineg
iload 1
sipush 6861
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6862
iadd
sipush 8065
iload 1
sipush 6862
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6863
iadd
sipush 32520
ineg
iload 1
sipush 6863
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6864
iadd
sipush 2033
ineg
iload 1
sipush 6864
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6865
iadd
sipush 3968
iload 1
sipush 6865
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6866
iadd
sipush 16132
ineg
iload 1
sipush 6866
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6867
iadd
iconst_3
iload 1
sipush 6867
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6893
iadd
sipush 2033
ineg
iload 1
sipush 6893
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6894
iadd
sipush 3968
iload 1
sipush 6894
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6895
iadd
sipush 16136
ineg
iload 1
sipush 6895
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6896
iadd
sipush 1009
ineg
iload 1
sipush 6896
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6897
iadd
sipush 4032
iload 1
sipush 6897
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6898
iadd
sipush 16132
ineg
iload 1
sipush 6898
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6899
iadd
iconst_3
iload 1
sipush 6899
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6925
iadd
sipush 1009
ineg
iload 1
sipush 6925
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6926
iadd
sipush 4032
iload 1
sipush 6926
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6927
iadd
sipush 16260
ineg
iload 1
sipush 6927
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6928
iadd
sipush 31751
iload 1
sipush 6928
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6929
iadd
sipush 1984
iload 1
sipush 6929
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6930
iadd
sipush 8066
ineg
iload 1
sipush 6930
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6931
iadd
iconst_3
iload 1
sipush 6931
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6957
iadd
sipush 31751
iload 1
sipush 6957
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6958
iadd
sipush 1984
iload 1
sipush 6958
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6959
iadd
sipush 8068
ineg
iload 1
sipush 6959
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6960
iadd
sipush 32263
iload 1
sipush 6960
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6961
iadd
sipush 2016
iload 1
sipush 6961
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6962
iadd
sipush 8066
ineg
iload 1
sipush 6962
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6963
iadd
iconst_3
iload 1
sipush 6963
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6989
iadd
sipush 32263
iload 1
sipush 6989
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6990
iadd
sipush 2016
iload 1
sipush 6990
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6991
iadd
sipush 8130
ineg
iload 1
sipush 6991
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6992
iadd
sipush 15875
iload 1
sipush 6992
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6993
iadd
sipush 992
iload 1
sipush 6993
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6994
iadd
sipush 4033
ineg
iload 1
sipush 6994
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6995
iadd
iconst_3
iload 1
sipush 6995
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7021
iadd
sipush 15875
iload 1
sipush 7021
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7022
iadd
sipush 992
iload 1
sipush 7022
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7023
iadd
sipush 4034
ineg
iload 1
sipush 7023
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7024
iadd
sipush 16131
iload 1
sipush 7024
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7025
iadd
sipush 1008
iload 1
sipush 7025
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7026
iadd
sipush 4033
ineg
iload 1
sipush 7026
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7027
iadd
iconst_3
iload 1
sipush 7027
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7053
iadd
iconst_1
ineg
iload 1
sipush 7053
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7054
iadd
iconst_1
ineg
iload 1
sipush 7054
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7055
iadd
iconst_1
ineg
iload 1
sipush 7055
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7056
iadd
iconst_1
ineg
iload 1
sipush 7056
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7057
iadd
iconst_1
ineg
iload 1
sipush 7057
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7058
iadd
iconst_1
ineg
iload 1
sipush 7058
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7059
iadd
iconst_3
iload 1
sipush 7059
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7085
iadd
sipush 30720
iload 1
sipush 7085
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7090
iadd
sipush 240
iload 1
sipush 7090
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7117
iadd
sipush 30720
iload 1
sipush 7117
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7122
iadd
sipush 240
iload 1
sipush 7122
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7149
iadd
sipush 30720
iload 1
sipush 7149
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7154
iadd
sipush 240
iload 1
sipush 7154
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7181
iadd
sipush 30720
iload 1
sipush 7181
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7186
iadd
sipush 240
iload 1
sipush 7186
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7213
iadd
sipush 30720
iload 1
sipush 7213
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7218
iadd
sipush 240
iload 1
sipush 7218
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7245
iadd
sipush 30720
iload 1
sipush 7245
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7250
iadd
sipush 240
iload 1
sipush 7250
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7277
iadd
sipush 30720
iload 1
sipush 7277
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7282
iadd
sipush 240
iload 1
sipush 7282
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7309
iadd
sipush 30720
iload 1
sipush 7309
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7314
iadd
sipush 240
iload 1
sipush 7314
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7341
iadd
sipush 30720
iload 1
sipush 7341
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7346
iadd
sipush 240
iload 1
sipush 7346
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7373
iadd
sipush 30720
iload 1
sipush 7373
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7378
iadd
sipush 240
iload 1
sipush 7378
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7405
iadd
sipush 30720
iload 1
sipush 7405
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7410
iadd
sipush 240
iload 1
sipush 7410
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7437
iadd
sipush 30720
iload 1
sipush 7437
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7442
iadd
sipush 240
iload 1
sipush 7442
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7469
iadd
sipush 30720
iload 1
sipush 7469
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7474
iadd
sipush 240
iload 1
sipush 7474
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7501
iadd
sipush 30720
iload 1
sipush 7501
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7506
iadd
sipush 240
iload 1
sipush 7506
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7533
iadd
sipush 30720
iload 1
sipush 7533
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7538
iadd
sipush 240
iload 1
sipush 7538
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7565
iadd
sipush 30720
iload 1
sipush 7565
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7570
iadd
sipush 240
iload 1
sipush 7570
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7597
iadd
sipush 30720
iload 1
sipush 7597
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7602
iadd
sipush 240
iload 1
sipush 7602
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7629
iadd
sipush 30720
iload 1
sipush 7629
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7634
iadd
sipush 240
iload 1
sipush 7634
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7661
iadd
sipush 30720
iload 1
sipush 7661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7666
iadd
sipush 240
iload 1
sipush 7666
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7693
iadd
sipush 12288
iload 1
sipush 7693
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7698
iadd
bipush 96
iload 1
sipush 7698
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockRightTiny(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4369
iadd
sipush 13652
iload 1
sipush 4369
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4401
iadd
sipush 1032
iload 1
sipush 4401
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4433
iadd
sipush 6826
iload 1
sipush 4433
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4465
iadd
sipush 1548
iload 1
sipush 4465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4497
iadd
sipush 3413
iload 1
sipush 4497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4529
iadd
sipush 1548
iload 1
sipush 4529
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4561
iadd
sipush 1290
iload 1
sipush 4561
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockRightSmall(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4338
iadd
sipush 32766
ineg
iload 1
sipush 4338
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4370
iadd
sipush 32766
ineg
iload 1
sipush 4370
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4371
iadd
iconst_1
iload 1
sipush 4371
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4402
iadd
sipush 32766
ineg
iload 1
sipush 4402
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4403
iadd
iconst_1
iload 1
sipush 4403
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4433
iadd
sipush 16384
ineg
iload 1
sipush 4433
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4434
iadd
sipush 28086
iload 1
sipush 4434
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4435
iadd
bipush 27
iload 1
sipush 4435
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4465
iadd
sipush 16384
iload 1
sipush 4465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4466
iadd
sipush 18725
ineg
iload 1
sipush 4466
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4467
iadd
bipush 45
iload 1
sipush 4467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4497
iadd
sipush 32767
ifne jump124
iconst_1
goto jump125
jump124:
iconst_0
jump125:
iload 1
sipush 4497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4498
iadd
sipush 9363
ineg
iload 1
sipush 4498
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4499
iadd
bipush 54
iload 1
sipush 4499
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4530
iadd
sipush 32762
ineg
iload 1
sipush 4530
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4531
iadd
iconst_1
iload 1
sipush 4531
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4562
iadd
sipush 16389
iload 1
sipush 4562
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4563
iadd
iconst_1
iload 1
sipush 4563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4593
iadd
sipush 24576
iload 1
sipush 4593
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4594
iadd
sipush 18725
ineg
iload 1
sipush 4594
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4595
iadd
bipush 13
iload 1
sipush 4595
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4625
iadd
sipush 24576
ineg
iload 1
sipush 4625
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4626
iadd
sipush 9363
ineg
iload 1
sipush 4626
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4627
iadd
bipush 22
iload 1
sipush 4627
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4657
iadd
sipush 16384
ineg
iload 1
sipush 4657
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4658
iadd
sipush 28086
iload 1
sipush 4658
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4659
iadd
bipush 27
iload 1
sipush 4659
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4689
iadd
sipush 32767
ifne jump126
iconst_1
goto jump127
jump126:
iconst_0
jump127:
iload 1
sipush 4689
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4690
iadd
sipush 16393
iload 1
sipush 4690
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4691
iadd
iconst_2
iload 1
sipush 4691
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4721
iadd
sipush 32767
ifne jump128
iconst_1
goto jump129
jump128:
iconst_0
jump129:
iload 1
sipush 4721
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4722
iadd
sipush 24584
iload 1
sipush 4722
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4723
iadd
iconst_2
iload 1
sipush 4723
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4753
iadd
sipush 4096
ineg
iload 1
sipush 4753
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4754
iadd
sipush 9363
ineg
iload 1
sipush 4754
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4755
iadd
bipush 22
iload 1
sipush 4755
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4785
iadd
sipush 12288
ineg
iload 1
sipush 4785
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4786
iadd
sipush 28086
iload 1
sipush 4786
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4787
iadd
bipush 27
iload 1
sipush 4787
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4817
iadd
sipush 24576
iload 1
sipush 4817
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4818
iadd
sipush 18725
ineg
iload 1
sipush 4818
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4819
iadd
bipush 13
iload 1
sipush 4819
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4849
iadd
sipush 32767
ifne jump130
iconst_1
goto jump131
jump130:
iconst_0
jump131:
iload 1
sipush 4849
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4850
iadd
sipush 8216
iload 1
sipush 4850
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4851
iadd
iconst_4
iload 1
sipush 4851
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4881
iadd
sipush 16384
ineg
iload 1
sipush 4881
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4882
iadd
sipush 8161
ineg
iload 1
sipush 4882
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4883
iadd
bipush 7
iload 1
sipush 4883
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4913
iadd
sipush 16384
iload 1
sipush 4913
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4914
iadd
sipush 12304
iload 1
sipush 4914
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4915
iadd
iconst_4
iload 1
sipush 4915
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4945
iadd
sipush 16384
iload 1
sipush 4945
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4946
iadd
sipush 4112
iload 1
sipush 4946
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4947
iadd
iconst_4
iload 1
sipush 4947
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4977
iadd
sipush 16384
iload 1
sipush 4977
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4978
iadd
sipush 4112
iload 1
sipush 4978
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockRightMedium(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4275
iadd
sipush 768
iload 1
sipush 4275
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4277
iadd
bipush 32
iload 1
sipush 4277
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4307
iadd
sipush 1920
iload 1
sipush 4307
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4309
iadd
bipush 112
iload 1
sipush 4309
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4339
iadd
sipush 1920
iload 1
sipush 4339
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4341
iadd
bipush 112
iload 1
sipush 4341
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4371
iadd
sipush 1920
iload 1
sipush 4371
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4373
iadd
bipush 112
iload 1
sipush 4373
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4403
iadd
sipush 1920
iload 1
sipush 4403
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4405
iadd
bipush 112
iload 1
sipush 4405
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4435
iadd
sipush 768
iload 1
sipush 4435
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4437
iadd
bipush 112
iload 1
sipush 4437
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4467
iadd
iconst_4
ineg
iload 1
sipush 4467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4468
iadd
iconst_1
ineg
iload 1
sipush 4468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4469
iadd
iconst_1
ineg
iload 1
sipush 4469
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4470
iadd
bipush 7
iload 1
sipush 4470
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4499
iadd
sipush 14564
ineg
iload 1
sipush 4499
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4500
iadd
sipush 7281
iload 1
sipush 4500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4501
iadd
sipush 31175
iload 1
sipush 4501
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4502
iadd
bipush 6
iload 1
sipush 4502
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4531
iadd
sipush 7282
ineg
iload 1
sipush 4531
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4532
iadd
sipush 29128
ineg
iload 1
sipush 4532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4533
iadd
sipush 14563
iload 1
sipush 4533
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4534
iadd
bipush 6
iload 1
sipush 4534
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4563
iadd
sipush 3122
ineg
iload 1
sipush 4563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4564
iadd
sipush 12484
ineg
iload 1
sipush 4564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4565
iadd
sipush 15603
iload 1
sipush 4565
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4566
iadd
bipush 7
iload 1
sipush 4566
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4595
iadd
sipush 29126
iload 1
sipush 4595
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4596
iadd
sipush 14564
ineg
iload 1
sipush 4596
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4597
iadd
sipush 24975
ineg
iload 1
sipush 4597
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4598
iadd
iconst_3
iload 1
sipush 4598
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4627
iadd
iconst_2
ineg
iload 1
sipush 4627
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4628
iadd
iconst_1
ineg
iload 1
sipush 4628
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4629
iadd
iconst_1
ineg
iload 1
sipush 4629
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4630
iadd
iconst_3
iload 1
sipush 4630
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4659
iadd
sipush 1920
iload 1
sipush 4659
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4661
iadd
sipush 216
iload 1
sipush 4661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4691
iadd
sipush 1408
iload 1
sipush 4691
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4693
iadd
sipush 216
iload 1
sipush 4693
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4723
iadd
sipush 3456
iload 1
sipush 4723
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4725
iadd
sipush 216
iload 1
sipush 4725
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4755
iadd
sipush 3264
iload 1
sipush 4755
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4757
iadd
sipush 472
iload 1
sipush 4757
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4787
iadd
iconst_1
ineg
iload 1
sipush 4787
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4788
iadd
iconst_1
ineg
iload 1
sipush 4788
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4789
iadd
iconst_1
ineg
iload 1
sipush 4789
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4790
iadd
iconst_1
iload 1
sipush 4790
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4819
iadd
sipush 29127
iload 1
sipush 4819
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4820
iadd
sipush 14564
ineg
iload 1
sipush 4820
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4821
iadd
sipush 24975
ineg
iload 1
sipush 4821
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4822
iadd
iconst_1
iload 1
sipush 4822
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4850
iadd
sipush 32767
ifne jump132
iconst_1
goto jump133
jump132:
iconst_0
jump133:
iload 1
sipush 4850
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4851
iadd
sipush 14563
iload 1
sipush 4851
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4852
iadd
sipush 7282
ineg
iload 1
sipush 4852
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4853
iadd
sipush 29128
ineg
iload 1
sipush 4853
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4854
iadd
iconst_1
iload 1
sipush 4854
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4882
iadd
sipush 32767
ifne jump134
iconst_1
goto jump135
jump134:
iconst_0
jump135:
iload 1
sipush 4882
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4883
iadd
sipush 15603
iload 1
sipush 4883
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4884
iadd
sipush 3121
ineg
iload 1
sipush 4884
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4885
iadd
sipush 12484
ineg
iload 1
sipush 4885
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4886
iadd
iconst_1
iload 1
sipush 4886
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4914
iadd
sipush 32767
ifne jump136
iconst_1
goto jump137
jump136:
iconst_0
jump137:
iload 1
sipush 4914
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4915
iadd
sipush 7281
iload 1
sipush 4915
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4916
iadd
sipush 29127
iload 1
sipush 4916
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4917
iadd
sipush 6244
ineg
iload 1
sipush 4917
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4946
iadd
sipush 32767
ifne jump138
iconst_1
goto jump139
jump138:
iconst_0
jump139:
iload 1
sipush 4946
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4947
iadd
iconst_1
ineg
iload 1
sipush 4947
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4948
iadd
iconst_1
ineg
iload 1
sipush 4948
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4949
iadd
iconst_1
ineg
iload 1
sipush 4949
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4979
iadd
sipush 6240
iload 1
sipush 4979
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4981
iadd
sipush 910
iload 1
sipush 4981
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5011
iadd
sipush 6240
iload 1
sipush 5011
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5013
iadd
sipush 910
iload 1
sipush 5013
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5043
iadd
sipush 12400
iload 1
sipush 5043
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5045
iadd
sipush 774
iload 1
sipush 5045
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5075
iadd
sipush 12400
iload 1
sipush 5075
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5077
iadd
sipush 774
iload 1
sipush 5077
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5106
iadd
sipush 16384
ineg
iload 1
sipush 5106
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5107
iadd
iconst_1
ineg
iload 1
sipush 5107
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5108
iadd
iconst_1
ineg
iload 1
sipush 5108
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5109
iadd
iconst_1
ineg
iload 1
sipush 5109
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5138
iadd
sipush 16384
ineg
iload 1
sipush 5138
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5139
iadd
sipush 7281
iload 1
sipush 5139
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5140
iadd
sipush 29127
iload 1
sipush 5140
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5141
iadd
sipush 18204
iload 1
sipush 5141
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5170
iadd
sipush 16384
ineg
iload 1
sipush 5170
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5171
iadd
sipush 24967
ineg
iload 1
sipush 5171
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5172
iadd
sipush 14563
iload 1
sipush 5172
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5173
iadd
sipush 25486
iload 1
sipush 5173
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5202
iadd
sipush 16384
ineg
iload 1
sipush 5202
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5203
iadd
sipush 29128
ineg
iload 1
sipush 5203
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5204
iadd
sipush 15603
iload 1
sipush 5204
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5205
iadd
sipush 29647
iload 1
sipush 5205
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5234
iadd
sipush 24576
iload 1
sipush 5234
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5235
iadd
sipush 14564
ineg
iload 1
sipush 5235
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5236
iadd
sipush 7281
iload 1
sipush 5236
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5237
iadd
sipush 31207
iload 1
sipush 5237
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5266
iadd
sipush 16384
ineg
iload 1
sipush 5266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5267
iadd
iconst_1
ineg
iload 1
sipush 5267
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5268
iadd
iconst_1
ineg
iload 1
sipush 5268
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5269
iadd
sipush 16383
iload 1
sipush 5269
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5299
iadd
sipush 24632
iload 1
sipush 5299
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5301
iadd
sipush 1539
iload 1
sipush 5301
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5331
iadd
sipush 24600
iload 1
sipush 5331
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5332
iadd
sipush 32767
ifne jump140
iconst_1
goto jump141
jump140:
iconst_0
jump141:
iload 1
sipush 5332
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5333
iadd
sipush 3587
iload 1
sipush 5333
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5363
iadd
sipush 24600
iload 1
sipush 5363
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5364
iadd
sipush 32767
ifne jump142
iconst_1
goto jump143
jump142:
iconst_0
jump143:
iload 1
sipush 5364
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5365
iadd
sipush 3075
iload 1
sipush 5365
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5395
iadd
bipush 8
ineg
iload 1
sipush 5395
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5396
iadd
sipush 32767
ifne jump144
iconst_1
goto jump145
jump144:
iconst_0
jump145:
iload 1
sipush 5396
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5397
iadd
sipush 4095
iload 1
sipush 5397
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5427
iadd
bipush 8
ineg
iload 1
sipush 5427
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5428
iadd
sipush 32767
ifne jump146
iconst_1
goto jump147
jump146:
iconst_0
jump147:
iload 1
sipush 5428
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5429
iadd
sipush 4095
iload 1
sipush 5429
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5459
iadd
sipush 16356
ineg
iload 1
sipush 5459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5460
iadd
sipush 32767
ifne jump148
iconst_1
goto jump149
jump148:
iconst_0
jump149:
iload 1
sipush 5460
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5461
iadd
sipush 3073
iload 1
sipush 5461
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5491
iadd
sipush 16356
ineg
iload 1
sipush 5491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5492
iadd
sipush 16384
ineg
iload 1
sipush 5492
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5493
iadd
sipush 7169
iload 1
sipush 5493
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5523
iadd
sipush 16372
ineg
iload 1
sipush 5523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5524
iadd
sipush 16384
ineg
iload 1
sipush 5524
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5525
iadd
sipush 7169
iload 1
sipush 5525
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5555
iadd
sipush 16372
ineg
iload 1
sipush 5555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5556
iadd
sipush 16384
ineg
iload 1
sipush 5556
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5557
iadd
sipush 6145
iload 1
sipush 5557
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5587
iadd
sipush 32767
ifne jump150
iconst_1
goto jump151
jump150:
iconst_0
jump151:
iload 1
sipush 5587
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5588
iadd
sipush 32767
ifne jump152
iconst_1
goto jump153
jump152:
iconst_0
jump153:
iload 1
sipush 5588
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5589
iadd
sipush 2048
iload 1
sipush 5589
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockRightLarge(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 5015
iadd
sipush 3840
iload 1
sipush 5015
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5019
iadd
bipush 30
iload 1
sipush 5019
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5047
iadd
sipush 8064
iload 1
sipush 5047
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5051
iadd
bipush 63
iload 1
sipush 5051
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5079
iadd
sipush 8064
iload 1
sipush 5079
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5083
iadd
bipush 63
iload 1
sipush 5083
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5111
iadd
sipush 8064
iload 1
sipush 5111
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5115
iadd
bipush 63
iload 1
sipush 5115
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5143
iadd
sipush 8064
iload 1
sipush 5143
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5147
iadd
bipush 63
iload 1
sipush 5147
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5175
iadd
sipush 8064
iload 1
sipush 5175
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5179
iadd
bipush 63
iload 1
sipush 5179
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5207
iadd
sipush 8064
iload 1
sipush 5207
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5211
iadd
bipush 63
iload 1
sipush 5211
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5239
iadd
sipush 8064
iload 1
sipush 5239
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5243
iadd
bipush 63
iload 1
sipush 5243
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5271
iadd
sipush 16320
iload 1
sipush 5271
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5274
iadd
sipush 32767
ifne jump154
iconst_1
goto jump155
jump154:
iconst_0
jump155:
iload 1
sipush 5274
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5275
iadd
bipush 127
iload 1
sipush 5275
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5303
iadd
sipush 8064
iload 1
sipush 5303
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5307
iadd
bipush 63
iload 1
sipush 5307
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5335
iadd
sipush 3840
iload 1
sipush 5335
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5339
iadd
bipush 30
iload 1
sipush 5339
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5367
iadd
sipush 3840
iload 1
sipush 5367
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5371
iadd
bipush 30
iload 1
sipush 5371
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5398
iadd
sipush 4096
ineg
iload 1
sipush 5398
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5399
iadd
iconst_1
ineg
iload 1
sipush 5399
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5400
iadd
iconst_1
ineg
iload 1
sipush 5400
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5401
iadd
iconst_1
ineg
iload 1
sipush 5401
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5402
iadd
iconst_1
ineg
iload 1
sipush 5402
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5403
iadd
iconst_1
ineg
iload 1
sipush 5403
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5404
iadd
sipush 16383
iload 1
sipush 5404
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5430
iadd
sipush 4096
ineg
iload 1
sipush 5430
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5431
iadd
sipush 15875
iload 1
sipush 5431
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5432
iadd
sipush 992
iload 1
sipush 5432
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5433
iadd
sipush 4066
ineg
iload 1
sipush 5433
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5434
iadd
sipush 7937
iload 1
sipush 5434
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5435
iadd
sipush 496
iload 1
sipush 5435
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5436
iadd
sipush 12319
iload 1
sipush 5436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5462
iadd
sipush 4096
ineg
iload 1
sipush 5462
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5463
iadd
sipush 7937
iload 1
sipush 5463
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5464
iadd
sipush 496
iload 1
sipush 5464
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5465
iadd
sipush 4081
ineg
iload 1
sipush 5465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5466
iadd
sipush 3840
iload 1
sipush 5466
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5467
iadd
sipush 32528
ineg
iload 1
sipush 5467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5468
iadd
sipush 14351
iload 1
sipush 5468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5494
iadd
sipush 2048
ineg
iload 1
sipush 5494
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5495
iadd
sipush 3840
iload 1
sipush 5495
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5496
iadd
sipush 240
iload 1
sipush 5496
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5497
iadd
sipush 2033
ineg
iload 1
sipush 5497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5498
iadd
sipush 3968
iload 1
sipush 5498
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5499
iadd
sipush 32520
ineg
iload 1
sipush 5499
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5500
iadd
sipush 6159
iload 1
sipush 5500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5526
iadd
sipush 2048
ineg
iload 1
sipush 5526
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5527
iadd
sipush 3968
iload 1
sipush 5527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5528
iadd
sipush 32520
ineg
iload 1
sipush 5528
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5529
iadd
sipush 31751
iload 1
sipush 5529
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5530
iadd
sipush 1984
iload 1
sipush 5530
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5531
iadd
sipush 16260
ineg
iload 1
sipush 5531
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5532
iadd
sipush 7175
iload 1
sipush 5532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5558
iadd
sipush 30720
iload 1
sipush 5558
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5559
iadd
sipush 1984
iload 1
sipush 5559
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5560
iadd
sipush 16260
ineg
iload 1
sipush 5560
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5561
iadd
sipush 32263
iload 1
sipush 5561
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5562
iadd
sipush 2016
iload 1
sipush 5562
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5563
iadd
sipush 8066
ineg
iload 1
sipush 5563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5564
iadd
sipush 7687
iload 1
sipush 5564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5590
iadd
sipush 14336
iload 1
sipush 5590
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5591
iadd
sipush 992
iload 1
sipush 5591
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5592
iadd
sipush 8130
ineg
iload 1
sipush 5592
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5593
iadd
sipush 15875
iload 1
sipush 5593
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5594
iadd
sipush 992
iload 1
sipush 5594
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5595
iadd
sipush 4034
ineg
iload 1
sipush 5595
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5596
iadd
sipush 7939
iload 1
sipush 5596
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5622
iadd
sipush 6144
iload 1
sipush 5622
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5623
iadd
sipush 480
iload 1
sipush 5623
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5624
iadd
sipush 8162
ineg
iload 1
sipush 5624
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5625
iadd
sipush 7937
iload 1
sipush 5625
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5626
iadd
sipush 496
iload 1
sipush 5626
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5627
iadd
sipush 4065
ineg
iload 1
sipush 5627
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5628
iadd
sipush 7937
iload 1
sipush 5628
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5654
iadd
sipush 7168
iload 1
sipush 5654
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5655
iadd
sipush 496
iload 1
sipush 5655
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5656
iadd
sipush 4065
ineg
iload 1
sipush 5656
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5657
iadd
sipush 3840
iload 1
sipush 5657
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5658
iadd
sipush 240
iload 1
sipush 5658
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5659
iadd
sipush 2033
ineg
iload 1
sipush 5659
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5660
iadd
sipush 3968
iload 1
sipush 5660
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5686
iadd
sipush 3072
iload 1
sipush 5686
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5687
iadd
sipush 32520
ineg
iload 1
sipush 5687
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5688
iadd
sipush 2033
ineg
iload 1
sipush 5688
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5689
iadd
sipush 3968
iload 1
sipush 5689
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5690
iadd
sipush 32520
ineg
iload 1
sipush 5690
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5691
iadd
sipush 1009
ineg
iload 1
sipush 5691
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5692
iadd
sipush 4032
iload 1
sipush 5692
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5718
iadd
sipush 1024
ineg
iload 1
sipush 5718
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5719
iadd
iconst_1
ineg
iload 1
sipush 5719
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5720
iadd
iconst_1
ineg
iload 1
sipush 5720
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5721
iadd
iconst_1
ineg
iload 1
sipush 5721
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5722
iadd
iconst_1
ineg
iload 1
sipush 5722
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5723
iadd
iconst_1
ineg
iload 1
sipush 5723
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5724
iadd
sipush 4095
iload 1
sipush 5724
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5751
iadd
sipush 15232
iload 1
sipush 5751
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5754
iadd
sipush 32767
ifne jump156
iconst_1
goto jump157
jump156:
iconst_0
jump157:
iload 1
sipush 5754
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5755
iadd
bipush 115
iload 1
sipush 5755
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5783
iadd
sipush 15296
iload 1
sipush 5783
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5786
iadd
sipush 32767
ifne jump158
iconst_1
goto jump159
jump158:
iconst_0
jump159:
iload 1
sipush 5786
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5787
iadd
sipush 243
iload 1
sipush 5787
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5815
iadd
sipush 14784
iload 1
sipush 5815
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5818
iadd
sipush 32767
ifne jump160
iconst_1
goto jump161
jump160:
iconst_0
jump161:
iload 1
sipush 5818
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5819
iadd
sipush 243
iload 1
sipush 5819
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5847
iadd
sipush 29120
iload 1
sipush 5847
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5850
iadd
sipush 16384
ineg
iload 1
sipush 5850
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5851
iadd
sipush 243
iload 1
sipush 5851
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5879
iadd
sipush 29120
iload 1
sipush 5879
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5882
iadd
sipush 16384
ineg
iload 1
sipush 5882
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5883
iadd
sipush 227
iload 1
sipush 5883
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5911
iadd
sipush 29120
iload 1
sipush 5911
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5914
iadd
sipush 16384
ineg
iload 1
sipush 5914
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5915
iadd
sipush 483
iload 1
sipush 5915
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5943
iadd
sipush 3616
ineg
iload 1
sipush 5943
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5946
iadd
sipush 16384
ineg
iload 1
sipush 5946
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5947
iadd
sipush 481
iload 1
sipush 5947
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5975
iadd
sipush 7968
ineg
iload 1
sipush 5975
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5978
iadd
sipush 16384
ineg
iload 1
sipush 5978
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5979
iadd
sipush 481
iload 1
sipush 5979
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6007
iadd
sipush 7952
ineg
iload 1
sipush 6007
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6010
iadd
sipush 8192
ineg
iload 1
sipush 6010
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6011
iadd
sipush 449
iload 1
sipush 6011
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6038
iadd
sipush 256
ineg
iload 1
sipush 6038
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6039
iadd
iconst_1
ineg
iload 1
sipush 6039
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6040
iadd
iconst_1
ineg
iload 1
sipush 6040
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6041
iadd
iconst_1
ineg
iload 1
sipush 6041
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6042
iadd
iconst_1
ineg
iload 1
sipush 6042
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6043
iadd
iconst_1
ineg
iload 1
sipush 6043
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6044
iadd
sipush 1023
iload 1
sipush 6044
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6070
iadd
sipush 16128
iload 1
sipush 6070
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6071
iadd
sipush 992
iload 1
sipush 6071
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6072
iadd
sipush 8130
ineg
iload 1
sipush 6072
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6073
iadd
sipush 7937
iload 1
sipush 6073
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6074
iadd
sipush 496
iload 1
sipush 6074
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6075
iadd
sipush 4065
ineg
iload 1
sipush 6075
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6076
iadd
sipush 769
iload 1
sipush 6076
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6102
iadd
sipush 7936
iload 1
sipush 6102
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6103
iadd
sipush 496
iload 1
sipush 6103
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6104
iadd
sipush 4065
ineg
iload 1
sipush 6104
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6105
iadd
sipush 3840
iload 1
sipush 6105
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6106
iadd
sipush 240
iload 1
sipush 6106
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6107
iadd
sipush 2033
ineg
iload 1
sipush 6107
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6108
iadd
sipush 896
iload 1
sipush 6108
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6134
iadd
sipush 3968
iload 1
sipush 6134
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6135
iadd
sipush 240
iload 1
sipush 6135
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6136
iadd
sipush 4081
ineg
iload 1
sipush 6136
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6137
iadd
sipush 3968
iload 1
sipush 6137
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6138
iadd
sipush 32520
ineg
iload 1
sipush 6138
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6139
iadd
sipush 2033
ineg
iload 1
sipush 6139
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6140
iadd
sipush 384
iload 1
sipush 6140
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6166
iadd
sipush 3968
iload 1
sipush 6166
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6167
iadd
sipush 32520
ineg
iload 1
sipush 6167
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6168
iadd
sipush 30735
iload 1
sipush 6168
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6169
iadd
sipush 1984
iload 1
sipush 6169
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6170
iadd
sipush 16260
ineg
iload 1
sipush 6170
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6171
iadd
sipush 31751
iload 1
sipush 6171
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6172
iadd
sipush 448
iload 1
sipush 6172
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6198
iadd
sipush 1920
iload 1
sipush 6198
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6199
iadd
sipush 16260
ineg
iload 1
sipush 6199
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6200
iadd
sipush 31751
iload 1
sipush 6200
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6201
iadd
sipush 2016
iload 1
sipush 6201
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6202
iadd
sipush 8066
ineg
iload 1
sipush 6202
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6203
iadd
sipush 32263
iload 1
sipush 6203
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6204
iadd
sipush 480
iload 1
sipush 6204
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6230
iadd
sipush 896
iload 1
sipush 6230
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6231
iadd
sipush 8130
ineg
iload 1
sipush 6231
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6232
iadd
sipush 15875
iload 1
sipush 6232
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6233
iadd
sipush 992
iload 1
sipush 6233
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6234
iadd
sipush 8130
ineg
iload 1
sipush 6234
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6235
iadd
sipush 16131
iload 1
sipush 6235
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6236
iadd
sipush 496
iload 1
sipush 6236
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6262
iadd
sipush 384
iload 1
sipush 6262
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6263
iadd
sipush 8162
ineg
iload 1
sipush 6263
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6264
iadd
sipush 7681
iload 1
sipush 6264
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6265
iadd
sipush 496
iload 1
sipush 6265
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6266
iadd
sipush 4065
ineg
iload 1
sipush 6266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6267
iadd
sipush 7937
iload 1
sipush 6267
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6268
iadd
sipush 496
iload 1
sipush 6268
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6294
iadd
sipush 448
iload 1
sipush 6294
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6295
iadd
sipush 4065
ineg
iload 1
sipush 6295
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6296
iadd
sipush 3841
iload 1
sipush 6296
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6297
iadd
sipush 240
iload 1
sipush 6297
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6298
iadd
sipush 4081
ineg
iload 1
sipush 6298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6299
iadd
sipush 3968
iload 1
sipush 6299
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6300
iadd
sipush 248
iload 1
sipush 6300
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6326
iadd
sipush 32576
ineg
iload 1
sipush 6326
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6327
iadd
sipush 2033
ineg
iload 1
sipush 6327
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6328
iadd
sipush 3968
iload 1
sipush 6328
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6329
iadd
sipush 32520
ineg
iload 1
sipush 6329
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6330
iadd
sipush 2033
ineg
iload 1
sipush 6330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6331
iadd
sipush 4032
iload 1
sipush 6331
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6332
iadd
sipush 252
iload 1
sipush 6332
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6358
iadd
bipush 64
ineg
iload 1
sipush 6358
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6359
iadd
iconst_1
ineg
iload 1
sipush 6359
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6360
iadd
iconst_1
ineg
iload 1
sipush 6360
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6361
iadd
iconst_1
ineg
iload 1
sipush 6361
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6362
iadd
iconst_1
ineg
iload 1
sipush 6362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6363
iadd
iconst_1
ineg
iload 1
sipush 6363
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6364
iadd
sipush 255
iload 1
sipush 6364
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6391
iadd
sipush 16260
ineg
iload 1
sipush 6391
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6392
iadd
iconst_3
iload 1
sipush 6392
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6394
iadd
sipush 30720
iload 1
sipush 6394
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6395
iadd
sipush 1920
iload 1
sipush 6395
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6423
iadd
sipush 16324
ineg
iload 1
sipush 6423
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6424
iadd
iconst_3
iload 1
sipush 6424
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6426
iadd
sipush 30720
iload 1
sipush 6426
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6427
iadd
sipush 1920
iload 1
sipush 6427
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6455
iadd
sipush 32708
ineg
iload 1
sipush 6455
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6456
iadd
iconst_3
iload 1
sipush 6456
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6458
iadd
sipush 30720
iload 1
sipush 6458
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6459
iadd
sipush 1920
iload 1
sipush 6459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6487
iadd
sipush 32740
ineg
iload 1
sipush 6487
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6488
iadd
bipush 7
iload 1
sipush 6488
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6490
iadd
sipush 30720
iload 1
sipush 6490
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6491
iadd
sipush 3968
iload 1
sipush 6491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6519
iadd
sipush 32738
ineg
iload 1
sipush 6519
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6520
iadd
bipush 7
iload 1
sipush 6520
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6522
iadd
sipush 15360
iload 1
sipush 6522
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6523
iadd
sipush 3840
iload 1
sipush 6523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6551
iadd
bipush 30
iload 1
sipush 6551
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6552
iadd
bipush 7
iload 1
sipush 6552
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6554
iadd
sipush 15360
iload 1
sipush 6554
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6555
iadd
sipush 3840
iload 1
sipush 6555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6583
iadd
bipush 30
iload 1
sipush 6583
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6584
iadd
bipush 7
iload 1
sipush 6584
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6586
iadd
sipush 15360
iload 1
sipush 6586
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6587
iadd
sipush 3840
iload 1
sipush 6587
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6615
iadd
bipush 30
iload 1
sipush 6615
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6616
iadd
bipush 15
iload 1
sipush 6616
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6618
iadd
sipush 15360
iload 1
sipush 6618
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6619
iadd
sipush 3840
iload 1
sipush 6619
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6646
iadd
bipush 32
ineg
iload 1
sipush 6646
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6647
iadd
iconst_1
ineg
iload 1
sipush 6647
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6648
iadd
iconst_1
ineg
iload 1
sipush 6648
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6649
iadd
iconst_1
ineg
iload 1
sipush 6649
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6650
iadd
iconst_1
ineg
iload 1
sipush 6650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6651
iadd
iconst_1
ineg
iload 1
sipush 6651
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6652
iadd
bipush 127
iload 1
sipush 6652
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6678
iadd
sipush 2016
iload 1
sipush 6678
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6679
iadd
sipush 16260
ineg
iload 1
sipush 6679
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6680
iadd
sipush 15367
iload 1
sipush 6680
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6681
iadd
sipush 992
iload 1
sipush 6681
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6682
iadd
sipush 8130
ineg
iload 1
sipush 6682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6683
iadd
sipush 15875
iload 1
sipush 6683
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6684
iadd
bipush 96
iload 1
sipush 6684
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6710
iadd
sipush 992
iload 1
sipush 6710
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6711
iadd
sipush 8130
ineg
iload 1
sipush 6711
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6712
iadd
sipush 7683
iload 1
sipush 6712
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6713
iadd
sipush 480
iload 1
sipush 6713
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6714
iadd
sipush 8162
ineg
iload 1
sipush 6714
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6715
iadd
sipush 7937
iload 1
sipush 6715
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6716
iadd
bipush 112
iload 1
sipush 6716
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6742
iadd
sipush 496
iload 1
sipush 6742
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6743
iadd
sipush 8162
ineg
iload 1
sipush 6743
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6744
iadd
sipush 7681
iload 1
sipush 6744
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6745
iadd
sipush 496
iload 1
sipush 6745
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6746
iadd
sipush 4065
ineg
iload 1
sipush 6746
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6747
iadd
sipush 7937
iload 1
sipush 6747
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6748
iadd
bipush 48
iload 1
sipush 6748
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6774
iadd
sipush 496
iload 1
sipush 6774
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6775
iadd
sipush 4065
ineg
iload 1
sipush 6775
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6776
iadd
sipush 3841
iload 1
sipush 6776
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6777
iadd
sipush 32520
ineg
iload 1
sipush 6777
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6778
iadd
sipush 2033
ineg
iload 1
sipush 6778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6779
iadd
sipush 3968
iload 1
sipush 6779
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6780
iadd
bipush 56
iload 1
sipush 6780
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6806
iadd
sipush 32528
ineg
iload 1
sipush 6806
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6807
iadd
sipush 2033
ineg
iload 1
sipush 6807
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6808
iadd
sipush 3968
iload 1
sipush 6808
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6809
iadd
sipush 16132
ineg
iload 1
sipush 6809
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6810
iadd
sipush 1009
ineg
iload 1
sipush 6810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6811
iadd
sipush 4032
iload 1
sipush 6811
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6812
iadd
bipush 60
iload 1
sipush 6812
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6838
iadd
sipush 16272
ineg
iload 1
sipush 6838
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6839
iadd
sipush 31751
iload 1
sipush 6839
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6840
iadd
sipush 1984
iload 1
sipush 6840
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6841
iadd
sipush 16260
ineg
iload 1
sipush 6841
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6842
iadd
sipush 31751
iload 1
sipush 6842
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6843
iadd
sipush 2016
iload 1
sipush 6843
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6844
iadd
bipush 62
iload 1
sipush 6844
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6870
iadd
sipush 16336
ineg
iload 1
sipush 6870
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6871
iadd
sipush 15363
iload 1
sipush 6871
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6872
iadd
sipush 960
iload 1
sipush 6872
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6873
iadd
sipush 8130
ineg
iload 1
sipush 6873
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6874
iadd
sipush 15875
iload 1
sipush 6874
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6875
iadd
sipush 992
iload 1
sipush 6875
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6876
iadd
bipush 62
iload 1
sipush 6876
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6902
iadd
sipush 8136
ineg
iload 1
sipush 6902
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6903
iadd
sipush 15875
iload 1
sipush 6903
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6904
iadd
sipush 480
iload 1
sipush 6904
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6905
iadd
sipush 8162
ineg
iload 1
sipush 6905
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6906
iadd
sipush 7681
iload 1
sipush 6906
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6907
iadd
sipush 496
iload 1
sipush 6907
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6908
iadd
bipush 31
iload 1
sipush 6908
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6934
iadd
sipush 4072
ineg
iload 1
sipush 6934
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6935
iadd
sipush 7937
iload 1
sipush 6935
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6936
iadd
sipush 496
iload 1
sipush 6936
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6937
iadd
sipush 4065
ineg
iload 1
sipush 6937
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6938
iadd
sipush 7937
iload 1
sipush 6938
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6939
iadd
sipush 32264
ineg
iload 1
sipush 6939
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6940
iadd
bipush 31
iload 1
sipush 6940
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6966
iadd
bipush 8
ineg
iload 1
sipush 6966
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6967
iadd
iconst_1
ineg
iload 1
sipush 6967
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6968
iadd
iconst_1
ineg
iload 1
sipush 6968
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6969
iadd
iconst_1
ineg
iload 1
sipush 6969
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6970
iadd
iconst_1
ineg
iload 1
sipush 6970
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6971
iadd
iconst_1
ineg
iload 1
sipush 6971
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6972
iadd
bipush 31
iload 1
sipush 6972
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6998
iadd
sipush 32767
ifne jump162
iconst_1
goto jump163
jump162:
iconst_0
jump163:
iload 1
sipush 6998
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6999
iadd
bipush 7
iload 1
sipush 6999
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7000
iadd
bipush 60
iload 1
sipush 7000
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7002
iadd
sipush 3840
iload 1
sipush 7002
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7003
iadd
sipush 15360
iload 1
sipush 7003
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7030
iadd
sipush 32767
ifne jump164
iconst_1
goto jump165
jump164:
iconst_0
jump165:
iload 1
sipush 7030
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7031
iadd
bipush 7
iload 1
sipush 7031
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7032
iadd
bipush 60
iload 1
sipush 7032
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7034
iadd
sipush 3840
iload 1
sipush 7034
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7035
iadd
sipush 15360
iload 1
sipush 7035
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7062
iadd
sipush 32767
ifne jump166
iconst_1
goto jump167
jump166:
iconst_0
jump167:
iload 1
sipush 7062
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7063
iadd
bipush 7
iload 1
sipush 7063
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7064
iadd
bipush 60
iload 1
sipush 7064
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7066
iadd
sipush 1920
iload 1
sipush 7066
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7067
iadd
sipush 30720
iload 1
sipush 7067
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7094
iadd
sipush 32767
ifne jump168
iconst_1
goto jump169
jump168:
iconst_0
jump169:
iload 1
sipush 7094
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7095
iadd
bipush 7
iload 1
sipush 7095
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7096
iadd
bipush 60
iload 1
sipush 7096
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7098
iadd
sipush 1920
iload 1
sipush 7098
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7099
iadd
sipush 30720
iload 1
sipush 7099
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7126
iadd
sipush 16384
ineg
iload 1
sipush 7126
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7127
iadd
iconst_3
iload 1
sipush 7127
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7128
iadd
bipush 60
iload 1
sipush 7128
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7130
iadd
sipush 1920
iload 1
sipush 7130
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7131
iadd
sipush 30720
iload 1
sipush 7131
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7158
iadd
sipush 16384
ineg
iload 1
sipush 7158
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7159
iadd
iconst_3
iload 1
sipush 7159
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7160
iadd
bipush 60
iload 1
sipush 7160
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7162
iadd
sipush 1920
iload 1
sipush 7162
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7163
iadd
sipush 28672
iload 1
sipush 7163
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7190
iadd
sipush 16384
ineg
iload 1
sipush 7190
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7191
iadd
iconst_3
iload 1
sipush 7191
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7192
iadd
bipush 124
iload 1
sipush 7192
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7194
iadd
sipush 1920
iload 1
sipush 7194
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7195
iadd
sipush 28672
iload 1
sipush 7195
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7222
iadd
sipush 16384
ineg
iload 1
sipush 7222
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7223
iadd
iconst_1
ineg
iload 1
sipush 7223
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7224
iadd
bipush 127
iload 1
sipush 7224
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7226
iadd
sipush 128
ineg
iload 1
sipush 7226
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7227
iadd
sipush 32767
iload 1
sipush 7227
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7254
iadd
sipush 16384
ineg
iload 1
sipush 7254
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7255
iadd
iconst_1
ineg
iload 1
sipush 7255
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7256
iadd
bipush 127
iload 1
sipush 7256
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7258
iadd
bipush 64
ineg
iload 1
sipush 7258
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7259
iadd
iconst_1
ineg
iload 1
sipush 7259
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7286
iadd
sipush 16384
ineg
iload 1
sipush 7286
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7287
iadd
iconst_1
ineg
iload 1
sipush 7287
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7288
iadd
bipush 127
iload 1
sipush 7288
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7290
iadd
bipush 64
ineg
iload 1
sipush 7290
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7291
iadd
iconst_1
ineg
iload 1
sipush 7291
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7318
iadd
sipush 8192
ineg
iload 1
sipush 7318
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7319
iadd
iconst_1
iload 1
sipush 7319
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7320
iadd
bipush 120
iload 1
sipush 7320
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7322
iadd
sipush 960
iload 1
sipush 7322
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7323
iadd
sipush 4096
ineg
iload 1
sipush 7323
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7350
iadd
sipush 8192
ineg
iload 1
sipush 7350
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7351
iadd
iconst_1
iload 1
sipush 7351
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7352
iadd
sipush 248
iload 1
sipush 7352
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7354
iadd
sipush 960
iload 1
sipush 7354
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7355
iadd
sipush 4096
ineg
iload 1
sipush 7355
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7382
iadd
sipush 8192
ineg
iload 1
sipush 7382
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7383
iadd
iconst_1
iload 1
sipush 7383
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7384
iadd
sipush 240
iload 1
sipush 7384
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7386
iadd
sipush 960
iload 1
sipush 7386
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7387
iadd
sipush 4096
ineg
iload 1
sipush 7387
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7414
iadd
sipush 8192
ineg
iload 1
sipush 7414
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7415
iadd
iconst_1
iload 1
sipush 7415
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7416
iadd
sipush 240
iload 1
sipush 7416
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7418
iadd
sipush 992
iload 1
sipush 7418
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7419
iadd
sipush 8192
ineg
iload 1
sipush 7419
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7420
iadd
iconst_1
iload 1
sipush 7420
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7446
iadd
sipush 8192
ineg
iload 1
sipush 7446
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7447
iadd
iconst_1
iload 1
sipush 7447
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7448
iadd
sipush 240
iload 1
sipush 7448
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7450
iadd
sipush 480
iload 1
sipush 7450
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7451
iadd
sipush 8192
ineg
iload 1
sipush 7451
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7452
iadd
iconst_1
iload 1
sipush 7452
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7478
iadd
sipush 4096
ineg
iload 1
sipush 7478
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7480
iadd
sipush 240
iload 1
sipush 7480
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7482
iadd
sipush 480
iload 1
sipush 7482
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7483
iadd
sipush 8192
ineg
iload 1
sipush 7483
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7484
iadd
iconst_1
iload 1
sipush 7484
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7510
iadd
sipush 4096
ineg
iload 1
sipush 7510
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7512
iadd
sipush 240
iload 1
sipush 7512
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7514
iadd
sipush 480
iload 1
sipush 7514
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7515
iadd
sipush 8192
ineg
iload 1
sipush 7515
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7516
iadd
iconst_1
iload 1
sipush 7516
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7542
iadd
sipush 4096
ineg
iload 1
sipush 7542
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7544
iadd
sipush 224
iload 1
sipush 7544
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7546
iadd
sipush 480
iload 1
sipush 7546
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7547
iadd
sipush 16384
ineg
iload 1
sipush 7547
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7548
iadd
iconst_1
iload 1
sipush 7548
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7574
iadd
sipush 4096
ineg
iload 1
sipush 7574
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7576
iadd
sipush 224
iload 1
sipush 7576
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7578
iadd
sipush 480
iload 1
sipush 7578
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7579
iadd
sipush 16384
ineg
iload 1
sipush 7579
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7580
iadd
iconst_1
iload 1
sipush 7580
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7606
iadd
sipush 24576
iload 1
sipush 7606
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7608
iadd
sipush 192
iload 1
sipush 7608
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7610
iadd
sipush 192
iload 1
sipush 7610
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7611
iadd
sipush 16384
ineg
iload 1
sipush 7611
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7612
iadd
iconst_1
iload 1
sipush 7612
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockLeftTiny(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4366
iadd
sipush 5462
iload 1
sipush 4366
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4398
iadd
sipush 2064
iload 1
sipush 4398
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4430
iadd
sipush 10924
iload 1
sipush 4430
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4462
iadd
sipush 6192
iload 1
sipush 4462
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4494
iadd
sipush 21848
iload 1
sipush 4494
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4526
iadd
sipush 6192
iload 1
sipush 4526
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4558
iadd
sipush 10320
iload 1
sipush 4558
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockLeftSmall(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4332
iadd
sipush 32767
ifne jump170
iconst_1
goto jump171
jump170:
iconst_0
jump171:
iload 1
sipush 4332
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4333
iadd
sipush 8192
iload 1
sipush 4333
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4364
iadd
sipush 16384
ineg
iload 1
sipush 4364
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4365
iadd
sipush 8192
iload 1
sipush 4365
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4396
iadd
sipush 16384
ineg
iload 1
sipush 4396
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4397
iadd
sipush 8192
iload 1
sipush 4397
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4428
iadd
sipush 27648
iload 1
sipush 4428
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4429
iadd
sipush 18725
ineg
iload 1
sipush 4429
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4430
iadd
iconst_1
iload 1
sipush 4430
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4460
iadd
sipush 9728
ineg
iload 1
sipush 4460
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4461
iadd
sipush 28086
iload 1
sipush 4461
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4462
iadd
iconst_1
iload 1
sipush 4462
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4492
iadd
sipush 18944
ineg
iload 1
sipush 4492
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4493
iadd
sipush 9363
ineg
iload 1
sipush 4493
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4524
iadd
sipush 16384
ineg
iload 1
sipush 4524
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4525
iadd
sipush 12288
iload 1
sipush 4525
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4556
iadd
sipush 16384
iload 1
sipush 4556
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4557
iadd
sipush 20481
iload 1
sipush 4557
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4588
iadd
sipush 10240
ineg
iload 1
sipush 4588
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4589
iadd
sipush 28086
iload 1
sipush 4589
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4590
iadd
iconst_3
iload 1
sipush 4590
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4620
iadd
sipush 19456
ineg
iload 1
sipush 4620
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4621
iadd
sipush 9363
ineg
iload 1
sipush 4621
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4622
iadd
iconst_2
iload 1
sipush 4622
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4652
iadd
sipush 27648
iload 1
sipush 4652
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4653
iadd
sipush 18725
ineg
iload 1
sipush 4653
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4654
iadd
iconst_1
iload 1
sipush 4654
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4684
iadd
sipush 8192
iload 1
sipush 4684
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4685
iadd
sipush 14335
ineg
iload 1
sipush 4685
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4716
iadd
sipush 8192
iload 1
sipush 4716
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4717
iadd
sipush 30717
ineg
iload 1
sipush 4717
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4748
iadd
sipush 19456
ineg
iload 1
sipush 4748
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4749
iadd
sipush 9363
ineg
iload 1
sipush 4749
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4750
iadd
bipush 7
iload 1
sipush 4750
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4780
iadd
sipush 27648
iload 1
sipush 4780
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4781
iadd
sipush 18725
ineg
iload 1
sipush 4781
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4782
iadd
iconst_5
iload 1
sipush 4782
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4812
iadd
sipush 10240
ineg
iload 1
sipush 4812
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4813
iadd
sipush 28086
iload 1
sipush 4813
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4814
iadd
iconst_3
iload 1
sipush 4814
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4844
iadd
sipush 4096
iload 1
sipush 4844
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4845
iadd
sipush 29694
ineg
iload 1
sipush 4845
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4876
iadd
sipush 4096
ineg
iload 1
sipush 4876
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4877
iadd
sipush 1021
ineg
iload 1
sipush 4877
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4878
iadd
iconst_1
iload 1
sipush 4878
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4908
iadd
sipush 4096
iload 1
sipush 4908
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4909
iadd
sipush 1030
iload 1
sipush 4909
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4910
iadd
iconst_1
iload 1
sipush 4910
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4940
iadd
sipush 4096
iload 1
sipush 4940
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4941
iadd
sipush 1028
iload 1
sipush 4941
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4942
iadd
iconst_1
iload 1
sipush 4942
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4973
iadd
sipush 1028
iload 1
sipush 4973
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4974
iadd
iconst_1
iload 1
sipush 4974
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockLeftMedium(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4266
iadd
bipush 64
iload 1
sipush 4266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4268
iadd
bipush 12
iload 1
sipush 4268
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4298
iadd
sipush 224
iload 1
sipush 4298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4300
iadd
bipush 30
iload 1
sipush 4300
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4330
iadd
sipush 224
iload 1
sipush 4330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4332
iadd
bipush 30
iload 1
sipush 4332
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4362
iadd
sipush 224
iload 1
sipush 4362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4364
iadd
bipush 30
iload 1
sipush 4364
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4394
iadd
sipush 224
iload 1
sipush 4394
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4396
iadd
bipush 30
iload 1
sipush 4396
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4426
iadd
sipush 224
iload 1
sipush 4426
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4428
iadd
bipush 12
iload 1
sipush 4428
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4457
iadd
sipush 512
ineg
iload 1
sipush 4457
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4458
iadd
iconst_1
ineg
iload 1
sipush 4458
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4459
iadd
iconst_1
ineg
iload 1
sipush 4459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4460
iadd
sipush 1023
iload 1
sipush 4460
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4489
iadd
sipush 6656
ineg
iload 1
sipush 4489
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4490
iadd
sipush 29127
ineg
iload 1
sipush 4490
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4491
iadd
sipush 14563
iload 1
sipush 4491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4492
iadd
sipush 910
iload 1
sipush 4492
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4521
iadd
sipush 14848
ineg
iload 1
sipush 4521
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4522
iadd
sipush 7281
iload 1
sipush 4522
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4523
iadd
sipush 29127
iload 1
sipush 4523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4524
iadd
sipush 1820
iload 1
sipush 4524
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4553
iadd
sipush 12800
ineg
iload 1
sipush 4553
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4554
iadd
sipush 15603
iload 1
sipush 4554
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4555
iadd
sipush 3121
ineg
iload 1
sipush 4555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4556
iadd
sipush 1852
iload 1
sipush 4556
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4585
iadd
sipush 25600
ineg
iload 1
sipush 4585
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4586
iadd
sipush 14567
iload 1
sipush 4586
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4587
iadd
sipush 7282
ineg
iload 1
sipush 4587
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4588
iadd
sipush 1592
iload 1
sipush 4588
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4617
iadd
sipush 1024
ineg
iload 1
sipush 4617
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4618
iadd
iconst_1
ineg
iload 1
sipush 4618
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4619
iadd
iconst_1
ineg
iload 1
sipush 4619
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4620
iadd
sipush 2047
iload 1
sipush 4620
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4650
iadd
sipush 432
iload 1
sipush 4650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4652
iadd
bipush 30
iload 1
sipush 4652
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4682
iadd
sipush 432
iload 1
sipush 4682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4684
iadd
bipush 26
iload 1
sipush 4684
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4714
iadd
sipush 432
iload 1
sipush 4714
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4716
iadd
bipush 27
iload 1
sipush 4716
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4746
iadd
sipush 440
iload 1
sipush 4746
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4748
iadd
bipush 51
iload 1
sipush 4748
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4777
iadd
sipush 2048
ineg
iload 1
sipush 4777
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4778
iadd
iconst_1
ineg
iload 1
sipush 4778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4779
iadd
iconst_1
ineg
iload 1
sipush 4779
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4780
iadd
sipush 4095
iload 1
sipush 4780
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4809
iadd
sipush 26624
ineg
iload 1
sipush 4809
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4810
iadd
sipush 14567
iload 1
sipush 4810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4811
iadd
sipush 7282
ineg
iload 1
sipush 4811
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4812
iadd
sipush 3640
iload 1
sipush 4812
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4841
iadd
sipush 6144
iload 1
sipush 4841
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4842
iadd
sipush 29127
iload 1
sipush 4842
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4843
iadd
sipush 14564
ineg
iload 1
sipush 4843
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4844
iadd
sipush 7281
iload 1
sipush 4844
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4873
iadd
sipush 14336
iload 1
sipush 4873
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4874
iadd
sipush 3121
ineg
iload 1
sipush 4874
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4875
iadd
sipush 12484
ineg
iload 1
sipush 4875
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4876
iadd
sipush 7411
iload 1
sipush 4876
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4905
iadd
sipush 28672
iload 1
sipush 4905
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4906
iadd
sipush 7266
ineg
iload 1
sipush 4906
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4907
iadd
sipush 29128
ineg
iload 1
sipush 4907
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4908
iadd
sipush 6371
iload 1
sipush 4908
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4937
iadd
sipush 4096
ineg
iload 1
sipush 4937
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4938
iadd
iconst_1
ineg
iload 1
sipush 4938
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4939
iadd
iconst_1
ineg
iload 1
sipush 4939
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4940
iadd
sipush 8191
iload 1
sipush 4940
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4970
iadd
sipush 1820
iload 1
sipush 4970
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4971
iadd
sipush 32767
ifne jump172
iconst_1
goto jump173
jump172:
iconst_0
jump173:
iload 1
sipush 4971
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4972
iadd
bipush 97
iload 1
sipush 4972
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5002
iadd
sipush 1820
iload 1
sipush 5002
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5003
iadd
sipush 32767
ifne jump174
iconst_1
goto jump175
jump174:
iconst_0
jump175:
iload 1
sipush 5003
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5004
iadd
bipush 97
iload 1
sipush 5004
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5034
iadd
sipush 1548
iload 1
sipush 5034
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5035
iadd
sipush 16384
ineg
iload 1
sipush 5035
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5036
iadd
sipush 224
iload 1
sipush 5036
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5066
iadd
sipush 1548
iload 1
sipush 5066
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5067
iadd
sipush 16384
ineg
iload 1
sipush 5067
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5068
iadd
sipush 224
iload 1
sipush 5068
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5097
iadd
sipush 4096
ineg
iload 1
sipush 5097
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5098
iadd
iconst_1
ineg
iload 1
sipush 5098
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5099
iadd
iconst_1
ineg
iload 1
sipush 5099
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5100
iadd
sipush 16383
iload 1
sipush 5100
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5129
iadd
sipush 8192
iload 1
sipush 5129
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5130
iadd
sipush 7282
ineg
iload 1
sipush 5130
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5131
iadd
sipush 29128
ineg
iload 1
sipush 5131
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5132
iadd
sipush 14563
iload 1
sipush 5132
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5161
iadd
sipush 24576
iload 1
sipush 5161
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5162
iadd
sipush 14564
ineg
iload 1
sipush 5162
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5163
iadd
sipush 25487
ineg
iload 1
sipush 5163
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5164
iadd
sipush 14823
iload 1
sipush 5164
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5193
iadd
sipush 8192
ineg
iload 1
sipush 5193
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5194
iadd
sipush 12484
ineg
iload 1
sipush 5194
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5195
iadd
sipush 7411
iload 1
sipush 5195
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5196
iadd
sipush 12743
iload 1
sipush 5196
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5225
iadd
sipush 8192
ineg
iload 1
sipush 5225
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5226
iadd
sipush 29063
ineg
iload 1
sipush 5226
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5227
iadd
sipush 14563
iload 1
sipush 5227
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5228
iadd
sipush 25486
iload 1
sipush 5228
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5257
iadd
sipush 16384
ineg
iload 1
sipush 5257
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5258
iadd
iconst_1
ineg
iload 1
sipush 5258
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5259
iadd
iconst_1
ineg
iload 1
sipush 5259
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5260
iadd
sipush 16383
iload 1
sipush 5260
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5290
iadd
sipush 3078
iload 1
sipush 5290
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5291
iadd
sipush 24576
iload 1
sipush 5291
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5292
iadd
sipush 448
iload 1
sipush 5292
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5322
iadd
sipush 7175
iload 1
sipush 5322
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5323
iadd
sipush 24576
iload 1
sipush 5323
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5324
iadd
sipush 384
iload 1
sipush 5324
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5354
iadd
sipush 7171
iload 1
sipush 5354
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5355
iadd
sipush 24576
iload 1
sipush 5355
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5356
iadd
sipush 384
iload 1
sipush 5356
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5386
iadd
sipush 8191
iload 1
sipush 5386
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5387
iadd
sipush 4096
ineg
iload 1
sipush 5387
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5388
iadd
sipush 511
iload 1
sipush 5388
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5418
iadd
sipush 8191
iload 1
sipush 5418
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5419
iadd
sipush 4096
ineg
iload 1
sipush 5419
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5420
iadd
sipush 511
iload 1
sipush 5420
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5450
iadd
sipush 6147
iload 1
sipush 5450
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5451
iadd
sipush 12288
iload 1
sipush 5451
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5452
iadd
sipush 896
iload 1
sipush 5452
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5481
iadd
sipush 32767
ifne jump176
iconst_1
goto jump177
jump176:
iconst_0
jump177:
iload 1
sipush 5481
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5482
iadd
sipush 14339
iload 1
sipush 5482
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5483
iadd
sipush 12288
iload 1
sipush 5483
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5484
iadd
sipush 896
iload 1
sipush 5484
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5513
iadd
sipush 32767
ifne jump178
iconst_1
goto jump179
jump178:
iconst_0
jump179:
iload 1
sipush 5513
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5514
iadd
sipush 14339
iload 1
sipush 5514
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5515
iadd
sipush 12288
iload 1
sipush 5515
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5516
iadd
sipush 768
iload 1
sipush 5516
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5545
iadd
sipush 32767
ifne jump180
iconst_1
goto jump181
jump180:
iconst_0
jump181:
iload 1
sipush 5545
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5546
iadd
sipush 14337
iload 1
sipush 5546
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5547
iadd
sipush 12288
iload 1
sipush 5547
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5548
iadd
sipush 768
iload 1
sipush 5548
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5578
iadd
sipush 4097
iload 1
sipush 5578
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5579
iadd
sipush 4096
iload 1
sipush 5579
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawRoadblockLeftLarge(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 4932
iadd
sipush 7680
iload 1
sipush 4932
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4936
iadd
bipush 60
iload 1
sipush 4936
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4964
iadd
sipush 16128
iload 1
sipush 4964
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4968
iadd
bipush 126
iload 1
sipush 4968
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 4996
iadd
sipush 16128
iload 1
sipush 4996
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5000
iadd
bipush 126
iload 1
sipush 5000
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5028
iadd
sipush 16128
iload 1
sipush 5028
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5032
iadd
bipush 126
iload 1
sipush 5032
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5060
iadd
sipush 16128
iload 1
sipush 5060
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5064
iadd
bipush 126
iload 1
sipush 5064
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5092
iadd
sipush 16128
iload 1
sipush 5092
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5096
iadd
bipush 126
iload 1
sipush 5096
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5124
iadd
sipush 16128
iload 1
sipush 5124
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5128
iadd
bipush 126
iload 1
sipush 5128
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5156
iadd
sipush 16128
iload 1
sipush 5156
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5160
iadd
bipush 126
iload 1
sipush 5160
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5188
iadd
sipush 32640
iload 1
sipush 5188
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5192
iadd
sipush 255
iload 1
sipush 5192
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5220
iadd
sipush 16128
iload 1
sipush 5220
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5224
iadd
bipush 126
iload 1
sipush 5224
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5252
iadd
sipush 7680
iload 1
sipush 5252
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5256
iadd
bipush 60
iload 1
sipush 5256
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5284
iadd
sipush 7680
iload 1
sipush 5284
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5288
iadd
bipush 60
iload 1
sipush 5288
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5315
iadd
iconst_1
ineg
iload 1
sipush 5315
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5316
iadd
iconst_1
ineg
iload 1
sipush 5316
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5317
iadd
iconst_1
ineg
iload 1
sipush 5317
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5318
iadd
iconst_1
ineg
iload 1
sipush 5318
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5319
iadd
iconst_1
ineg
iload 1
sipush 5319
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5320
iadd
iconst_1
ineg
iload 1
sipush 5320
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5321
iadd
iconst_3
iload 1
sipush 5321
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5347
iadd
sipush 15875
iload 1
sipush 5347
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5348
iadd
sipush 992
iload 1
sipush 5348
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5349
iadd
sipush 8130
ineg
iload 1
sipush 5349
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5350
iadd
sipush 7683
iload 1
sipush 5350
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5351
iadd
sipush 496
iload 1
sipush 5351
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5352
iadd
sipush 4065
ineg
iload 1
sipush 5352
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5353
iadd
iconst_3
iload 1
sipush 5353
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5379
iadd
sipush 31751
iload 1
sipush 5379
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5380
iadd
sipush 960
iload 1
sipush 5380
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5381
iadd
sipush 16324
ineg
iload 1
sipush 5381
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5382
iadd
sipush 15363
iload 1
sipush 5382
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5383
iadd
sipush 992
iload 1
sipush 5383
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5384
iadd
sipush 8130
ineg
iload 1
sipush 5384
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5385
iadd
iconst_3
iload 1
sipush 5385
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5411
iadd
sipush 31750
iload 1
sipush 5411
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5412
iadd
sipush 1984
iload 1
sipush 5412
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5413
iadd
sipush 16260
ineg
iload 1
sipush 5413
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5414
iadd
sipush 15367
iload 1
sipush 5414
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5415
iadd
sipush 960
iload 1
sipush 5415
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5416
iadd
sipush 16324
ineg
iload 1
sipush 5416
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5417
iadd
bipush 7
iload 1
sipush 5417
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5443
iadd
sipush 2034
ineg
iload 1
sipush 5443
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5444
iadd
sipush 3968
iload 1
sipush 5444
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5445
iadd
sipush 32520
ineg
iload 1
sipush 5445
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5446
iadd
sipush 30735
iload 1
sipush 5446
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5447
iadd
sipush 1984
iload 1
sipush 5447
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5448
iadd
sipush 16260
ineg
iload 1
sipush 5448
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5449
iadd
bipush 7
iload 1
sipush 5449
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5475
iadd
sipush 2018
ineg
iload 1
sipush 5475
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5476
iadd
sipush 8065
iload 1
sipush 5476
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5477
iadd
sipush 32264
ineg
iload 1
sipush 5477
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5478
iadd
sipush 2017
ineg
iload 1
sipush 5478
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5479
iadd
sipush 3968
iload 1
sipush 5479
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5480
iadd
sipush 32520
ineg
iload 1
sipush 5480
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5481
iadd
bipush 7
iload 1
sipush 5481
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5507
iadd
sipush 4034
ineg
iload 1
sipush 5507
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5508
iadd
sipush 7939
iload 1
sipush 5508
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5509
iadd
sipush 496
iload 1
sipush 5509
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5510
iadd
sipush 4065
ineg
iload 1
sipush 5510
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5511
iadd
sipush 7937
iload 1
sipush 5511
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5512
iadd
sipush 496
iload 1
sipush 5512
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5513
iadd
bipush 7
iload 1
sipush 5513
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5539
iadd
sipush 8130
ineg
iload 1
sipush 5539
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5540
iadd
sipush 15875
iload 1
sipush 5540
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5541
iadd
sipush 992
iload 1
sipush 5541
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5542
iadd
sipush 8130
ineg
iload 1
sipush 5542
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5543
iadd
sipush 7681
iload 1
sipush 5543
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5544
iadd
sipush 480
iload 1
sipush 5544
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5545
iadd
bipush 6
iload 1
sipush 5545
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5571
iadd
sipush 16260
ineg
iload 1
sipush 5571
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5572
iadd
sipush 15367
iload 1
sipush 5572
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5573
iadd
sipush 960
iload 1
sipush 5573
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5574
iadd
sipush 16324
ineg
iload 1
sipush 5574
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5575
iadd
sipush 15875
iload 1
sipush 5575
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5576
iadd
sipush 992
iload 1
sipush 5576
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5577
iadd
bipush 14
iload 1
sipush 5577
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5603
iadd
sipush 16132
ineg
iload 1
sipush 5603
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5604
iadd
sipush 31759
iload 1
sipush 5604
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5605
iadd
sipush 1984
iload 1
sipush 5605
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5606
iadd
sipush 16260
ineg
iload 1
sipush 5606
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5607
iadd
sipush 31751
iload 1
sipush 5607
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5608
iadd
sipush 1984
iload 1
sipush 5608
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5609
iadd
bipush 12
iload 1
sipush 5609
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5635
iadd
iconst_4
ineg
iload 1
sipush 5635
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5636
iadd
iconst_1
ineg
iload 1
sipush 5636
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5637
iadd
iconst_1
ineg
iload 1
sipush 5637
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5638
iadd
iconst_1
ineg
iload 1
sipush 5638
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5639
iadd
iconst_1
ineg
iload 1
sipush 5639
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5640
iadd
iconst_1
ineg
iload 1
sipush 5640
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5641
iadd
bipush 15
iload 1
sipush 5641
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5668
iadd
sipush 29568
iload 1
sipush 5668
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5672
iadd
bipush 119
iload 1
sipush 5672
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5700
iadd
sipush 29632
iload 1
sipush 5700
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5704
iadd
sipush 247
iload 1
sipush 5704
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5732
iadd
sipush 29632
iload 1
sipush 5732
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5736
iadd
sipush 231
iload 1
sipush 5736
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5764
iadd
sipush 3136
ineg
iload 1
sipush 5764
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5767
iadd
sipush 32767
ifne jump182
iconst_1
goto jump183
jump182:
iconst_0
jump183:
iload 1
sipush 5767
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5768
iadd
sipush 227
iload 1
sipush 5768
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5796
iadd
sipush 3648
ineg
iload 1
sipush 5796
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5799
iadd
sipush 32767
ifne jump184
iconst_1
goto jump185
jump184:
iconst_0
jump185:
iload 1
sipush 5799
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5800
iadd
sipush 227
iload 1
sipush 5800
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5828
iadd
sipush 3616
ineg
iload 1
sipush 5828
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5831
iadd
sipush 32767
ifne jump186
iconst_1
goto jump187
jump186:
iconst_0
jump187:
iload 1
sipush 5831
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5832
iadd
sipush 227
iload 1
sipush 5832
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5860
iadd
sipush 7712
ineg
iload 1
sipush 5860
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5863
iadd
sipush 16384
ineg
iload 1
sipush 5863
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5864
iadd
sipush 483
iload 1
sipush 5864
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5892
iadd
sipush 7712
ineg
iload 1
sipush 5892
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5895
iadd
sipush 16384
ineg
iload 1
sipush 5895
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5896
iadd
sipush 449
iload 1
sipush 5896
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5924
iadd
sipush 7968
ineg
iload 1
sipush 5924
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5925
iadd
iconst_1
iload 1
sipush 5925
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5927
iadd
sipush 16384
ineg
iload 1
sipush 5927
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5928
iadd
sipush 961
iload 1
sipush 5928
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5955
iadd
bipush 16
ineg
iload 1
sipush 5955
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5956
iadd
iconst_1
ineg
iload 1
sipush 5956
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5957
iadd
iconst_1
ineg
iload 1
sipush 5957
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5958
iadd
iconst_1
ineg
iload 1
sipush 5958
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5959
iadd
iconst_1
ineg
iload 1
sipush 5959
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5960
iadd
iconst_1
ineg
iload 1
sipush 5960
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5961
iadd
bipush 63
iload 1
sipush 5961
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5987
iadd
sipush 8144
ineg
iload 1
sipush 5987
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5988
iadd
sipush 15875
iload 1
sipush 5988
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5989
iadd
sipush 992
iload 1
sipush 5989
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5990
iadd
sipush 8130
ineg
iload 1
sipush 5990
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5991
iadd
sipush 7937
iload 1
sipush 5991
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5992
iadd
sipush 496
iload 1
sipush 5992
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5993
iadd
bipush 63
iload 1
sipush 5993
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6019
iadd
sipush 16272
ineg
iload 1
sipush 6019
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6020
iadd
sipush 15367
iload 1
sipush 6020
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6021
iadd
sipush 960
iload 1
sipush 6021
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6022
iadd
sipush 16324
ineg
iload 1
sipush 6022
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6023
iadd
sipush 15875
iload 1
sipush 6023
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6024
iadd
sipush 992
iload 1
sipush 6024
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6025
iadd
bipush 62
iload 1
sipush 6025
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6051
iadd
sipush 16288
ineg
iload 1
sipush 6051
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6052
iadd
sipush 31751
iload 1
sipush 6052
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6053
iadd
sipush 1984
iload 1
sipush 6053
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6054
iadd
sipush 16260
ineg
iload 1
sipush 6054
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6055
iadd
sipush 15363
iload 1
sipush 6055
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6056
iadd
sipush 960
iload 1
sipush 6056
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6057
iadd
bipush 124
iload 1
sipush 6057
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6083
iadd
sipush 32544
ineg
iload 1
sipush 6083
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6084
iadd
sipush 2033
ineg
iload 1
sipush 6084
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6085
iadd
sipush 3968
iload 1
sipush 6085
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6086
iadd
sipush 32520
ineg
iload 1
sipush 6086
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6087
iadd
sipush 31751
iload 1
sipush 6087
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6088
iadd
sipush 1984
iload 1
sipush 6088
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6089
iadd
bipush 124
iload 1
sipush 6089
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6115
iadd
sipush 32288
ineg
iload 1
sipush 6115
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6116
iadd
sipush 2017
ineg
iload 1
sipush 6116
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6117
iadd
sipush 8065
iload 1
sipush 6117
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6118
iadd
sipush 32264
ineg
iload 1
sipush 6118
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6119
iadd
sipush 2033
ineg
iload 1
sipush 6119
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6120
iadd
sipush 3968
iload 1
sipush 6120
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6121
iadd
bipush 120
iload 1
sipush 6121
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6147
iadd
sipush 992
iload 1
sipush 6147
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6148
iadd
sipush 4033
ineg
iload 1
sipush 6148
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6149
iadd
sipush 7937
iload 1
sipush 6149
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6150
iadd
sipush 496
iload 1
sipush 6150
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6151
iadd
sipush 4065
ineg
iload 1
sipush 6151
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6152
iadd
sipush 7937
iload 1
sipush 6152
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6153
iadd
bipush 112
iload 1
sipush 6153
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6179
iadd
sipush 992
iload 1
sipush 6179
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6180
iadd
sipush 8130
ineg
iload 1
sipush 6180
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6181
iadd
sipush 15875
iload 1
sipush 6181
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6182
iadd
sipush 992
iload 1
sipush 6182
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6183
iadd
sipush 8162
ineg
iload 1
sipush 6183
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6184
iadd
sipush 7681
iload 1
sipush 6184
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6185
iadd
bipush 96
iload 1
sipush 6185
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6211
iadd
sipush 1984
iload 1
sipush 6211
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6212
iadd
sipush 16260
ineg
iload 1
sipush 6212
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6213
iadd
sipush 15363
iload 1
sipush 6213
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6214
iadd
sipush 960
iload 1
sipush 6214
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6215
iadd
sipush 8132
ineg
iload 1
sipush 6215
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6216
iadd
sipush 15875
iload 1
sipush 6216
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6217
iadd
sipush 224
iload 1
sipush 6217
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6243
iadd
sipush 4032
iload 1
sipush 6243
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6244
iadd
sipush 16132
ineg
iload 1
sipush 6244
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6245
iadd
sipush 31751
iload 1
sipush 6245
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6246
iadd
sipush 1984
iload 1
sipush 6246
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6247
iadd
sipush 16260
ineg
iload 1
sipush 6247
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6248
iadd
sipush 31751
iload 1
sipush 6248
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6249
iadd
sipush 192
iload 1
sipush 6249
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6275
iadd
bipush 64
ineg
iload 1
sipush 6275
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6276
iadd
iconst_1
ineg
iload 1
sipush 6276
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6277
iadd
iconst_1
ineg
iload 1
sipush 6277
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6278
iadd
iconst_1
ineg
iload 1
sipush 6278
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6279
iadd
iconst_1
ineg
iload 1
sipush 6279
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6280
iadd
iconst_1
ineg
iload 1
sipush 6280
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6281
iadd
sipush 255
iload 1
sipush 6281
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6308
iadd
sipush 32648
ineg
iload 1
sipush 6308
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6309
iadd
bipush 7
iload 1
sipush 6309
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6311
iadd
sipush 4096
ineg
iload 1
sipush 6311
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6312
iadd
sipush 3968
iload 1
sipush 6312
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6340
iadd
sipush 32648
ineg
iload 1
sipush 6340
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6341
iadd
bipush 7
iload 1
sipush 6341
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6343
iadd
sipush 4096
ineg
iload 1
sipush 6343
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6344
iadd
sipush 3840
iload 1
sipush 6344
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6372
iadd
sipush 32648
ineg
iload 1
sipush 6372
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6373
iadd
bipush 7
iload 1
sipush 6373
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6375
iadd
sipush 28672
iload 1
sipush 6375
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6376
iadd
sipush 3840
iload 1
sipush 6376
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6404
iadd
sipush 32644
ineg
iload 1
sipush 6404
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6405
iadd
bipush 7
iload 1
sipush 6405
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6407
iadd
sipush 30720
iload 1
sipush 6407
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6408
iadd
sipush 3584
iload 1
sipush 6408
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6436
iadd
bipush 60
iload 1
sipush 6436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6437
iadd
bipush 15
iload 1
sipush 6437
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6439
iadd
sipush 30720
iload 1
sipush 6439
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6440
iadd
sipush 7680
iload 1
sipush 6440
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6468
iadd
bipush 60
iload 1
sipush 6468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6469
iadd
bipush 15
iload 1
sipush 6469
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6471
iadd
sipush 14336
iload 1
sipush 6471
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6472
iadd
sipush 7680
iload 1
sipush 6472
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6500
iadd
bipush 60
iload 1
sipush 6500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6501
iadd
bipush 15
iload 1
sipush 6501
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6503
iadd
sipush 14336
iload 1
sipush 6503
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6504
iadd
sipush 7680
iload 1
sipush 6504
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6532
iadd
bipush 60
iload 1
sipush 6532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6533
iadd
bipush 15
iload 1
sipush 6533
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6535
iadd
sipush 15360
iload 1
sipush 6535
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6536
iadd
sipush 7680
iload 1
sipush 6536
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6563
iadd
sipush 128
ineg
iload 1
sipush 6563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6564
iadd
iconst_1
ineg
iload 1
sipush 6564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6565
iadd
iconst_1
ineg
iload 1
sipush 6565
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6566
iadd
iconst_1
ineg
iload 1
sipush 6566
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6567
iadd
iconst_1
ineg
iload 1
sipush 6567
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6568
iadd
iconst_1
ineg
iload 1
sipush 6568
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6569
iadd
sipush 511
iload 1
sipush 6569
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6595
iadd
sipush 384
iload 1
sipush 6595
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6596
iadd
sipush 4065
ineg
iload 1
sipush 6596
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6597
iadd
sipush 7937
iload 1
sipush 6597
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6598
iadd
sipush 496
iload 1
sipush 6598
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6599
iadd
sipush 2033
ineg
iload 1
sipush 6599
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6600
iadd
sipush 3968
iload 1
sipush 6600
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6601
iadd
sipush 504
iload 1
sipush 6601
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6627
iadd
sipush 896
iload 1
sipush 6627
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6628
iadd
sipush 8130
ineg
iload 1
sipush 6628
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6629
iadd
sipush 7681
iload 1
sipush 6629
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6630
iadd
sipush 480
iload 1
sipush 6630
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6631
iadd
sipush 4066
ineg
iload 1
sipush 6631
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6632
iadd
sipush 7937
iload 1
sipush 6632
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6633
iadd
sipush 496
iload 1
sipush 6633
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6659
iadd
sipush 768
iload 1
sipush 6659
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6660
iadd
sipush 8130
ineg
iload 1
sipush 6660
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6661
iadd
sipush 15875
iload 1
sipush 6661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6662
iadd
sipush 992
iload 1
sipush 6662
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6663
iadd
sipush 8162
ineg
iload 1
sipush 6663
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6664
iadd
sipush 7681
iload 1
sipush 6664
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6665
iadd
sipush 992
iload 1
sipush 6665
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6691
iadd
sipush 1792
iload 1
sipush 6691
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6692
iadd
sipush 16260
ineg
iload 1
sipush 6692
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6693
iadd
sipush 31751
iload 1
sipush 6693
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6694
iadd
sipush 1984
iload 1
sipush 6694
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6695
iadd
sipush 8132
ineg
iload 1
sipush 6695
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6696
iadd
sipush 15875
iload 1
sipush 6696
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6697
iadd
sipush 992
iload 1
sipush 6697
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6723
iadd
sipush 3840
iload 1
sipush 6723
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6724
iadd
sipush 16132
ineg
iload 1
sipush 6724
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6725
iadd
sipush 1009
ineg
iload 1
sipush 6725
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6726
iadd
sipush 4032
iload 1
sipush 6726
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6727
iadd
sipush 16260
ineg
iload 1
sipush 6727
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6728
iadd
sipush 31751
iload 1
sipush 6728
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6729
iadd
sipush 960
iload 1
sipush 6729
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6755
iadd
sipush 7936
iload 1
sipush 6755
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6756
iadd
sipush 32264
ineg
iload 1
sipush 6756
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6757
iadd
sipush 2033
ineg
iload 1
sipush 6757
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6758
iadd
sipush 3968
iload 1
sipush 6758
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6759
iadd
sipush 32520
ineg
iload 1
sipush 6759
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6760
iadd
sipush 2033
ineg
iload 1
sipush 6760
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6761
iadd
sipush 896
iload 1
sipush 6761
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6787
iadd
sipush 7936
iload 1
sipush 6787
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6788
iadd
sipush 496
iload 1
sipush 6788
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6789
iadd
sipush 4065
ineg
iload 1
sipush 6789
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6790
iadd
sipush 7937
iload 1
sipush 6790
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6791
iadd
sipush 240
iload 1
sipush 6791
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6792
iadd
sipush 4081
ineg
iload 1
sipush 6792
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6793
iadd
sipush 768
iload 1
sipush 6793
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6819
iadd
sipush 15872
iload 1
sipush 6819
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6820
iadd
sipush 992
iload 1
sipush 6820
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6821
iadd
sipush 8162
ineg
iload 1
sipush 6821
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6822
iadd
sipush 7681
iload 1
sipush 6822
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6823
iadd
sipush 480
iload 1
sipush 6823
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6824
iadd
sipush 4065
ineg
iload 1
sipush 6824
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6825
iadd
sipush 1793
iload 1
sipush 6825
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6851
iadd
sipush 32256
iload 1
sipush 6851
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6852
iadd
sipush 2016
iload 1
sipush 6852
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6853
iadd
sipush 8130
ineg
iload 1
sipush 6853
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6854
iadd
sipush 15875
iload 1
sipush 6854
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6855
iadd
sipush 992
iload 1
sipush 6855
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6856
iadd
sipush 8130
ineg
iload 1
sipush 6856
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6857
iadd
sipush 1539
iload 1
sipush 6857
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6883
iadd
sipush 512
ineg
iload 1
sipush 6883
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6884
iadd
iconst_1
ineg
iload 1
sipush 6884
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6885
iadd
iconst_1
ineg
iload 1
sipush 6885
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6886
iadd
iconst_1
ineg
iload 1
sipush 6886
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6887
iadd
iconst_1
ineg
iload 1
sipush 6887
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6888
iadd
iconst_1
ineg
iload 1
sipush 6888
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6889
iadd
sipush 2047
iload 1
sipush 6889
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6916
iadd
bipush 15
iload 1
sipush 6916
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6917
iadd
bipush 60
iload 1
sipush 6917
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6919
iadd
sipush 3840
iload 1
sipush 6919
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6920
iadd
sipush 30720
iload 1
sipush 6920
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6948
iadd
bipush 15
iload 1
sipush 6948
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6949
iadd
bipush 60
iload 1
sipush 6949
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6951
iadd
sipush 3840
iload 1
sipush 6951
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6952
iadd
sipush 30720
iload 1
sipush 6952
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6979
iadd
sipush 32767
ifne jump188
iconst_1
goto jump189
jump188:
iconst_0
jump189:
iload 1
sipush 6979
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6980
iadd
bipush 7
iload 1
sipush 6980
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6981
iadd
bipush 120
iload 1
sipush 6981
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6983
iadd
sipush 3840
iload 1
sipush 6983
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6984
iadd
sipush 30720
iload 1
sipush 6984
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7011
iadd
sipush 32767
ifne jump190
iconst_1
goto jump191
jump190:
iconst_0
jump191:
iload 1
sipush 7011
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7012
iadd
bipush 7
iload 1
sipush 7012
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7013
iadd
bipush 120
iload 1
sipush 7013
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7015
iadd
sipush 3840
iload 1
sipush 7015
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7016
iadd
sipush 30720
iload 1
sipush 7016
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7043
iadd
sipush 32767
ifne jump192
iconst_1
goto jump193
jump192:
iconst_0
jump193:
iload 1
sipush 7043
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7044
iadd
bipush 7
iload 1
sipush 7044
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7045
iadd
bipush 120
iload 1
sipush 7045
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7047
iadd
sipush 3840
iload 1
sipush 7047
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7048
iadd
sipush 4096
ineg
iload 1
sipush 7048
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7075
iadd
sipush 32767
ifne jump194
iconst_1
goto jump195
jump194:
iconst_0
jump195:
iload 1
sipush 7075
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7076
iadd
iconst_3
iload 1
sipush 7076
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7077
iadd
bipush 120
iload 1
sipush 7077
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7079
iadd
sipush 3840
iload 1
sipush 7079
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7080
iadd
sipush 4096
ineg
iload 1
sipush 7080
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7107
iadd
sipush 32767
ifne jump196
iconst_1
goto jump197
jump196:
iconst_0
jump197:
iload 1
sipush 7107
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7108
iadd
iconst_3
iload 1
sipush 7108
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7109
iadd
bipush 120
iload 1
sipush 7109
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7111
iadd
sipush 3968
iload 1
sipush 7111
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7112
iadd
sipush 4096
ineg
iload 1
sipush 7112
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7139
iadd
sipush 32767
ifne jump198
iconst_1
goto jump199
jump198:
iconst_0
jump199:
iload 1
sipush 7139
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7140
iadd
iconst_1
ineg
iload 1
sipush 7140
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7141
iadd
bipush 127
iload 1
sipush 7141
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7143
iadd
sipush 128
ineg
iload 1
sipush 7143
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7144
iadd
iconst_1
ineg
iload 1
sipush 7144
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7171
iadd
sipush 16384
ineg
iload 1
sipush 7171
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7172
iadd
iconst_1
ineg
iload 1
sipush 7172
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7173
iadd
sipush 255
iload 1
sipush 7173
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7175
iadd
sipush 128
ineg
iload 1
sipush 7175
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7176
iadd
iconst_1
ineg
iload 1
sipush 7176
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7203
iadd
sipush 16384
ineg
iload 1
sipush 7203
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7204
iadd
iconst_1
ineg
iload 1
sipush 7204
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7205
iadd
sipush 255
iload 1
sipush 7205
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7207
iadd
sipush 128
ineg
iload 1
sipush 7207
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7208
iadd
iconst_1
ineg
iload 1
sipush 7208
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7235
iadd
sipush 16384
ineg
iload 1
sipush 7235
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7236
iadd
iconst_3
iload 1
sipush 7236
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7237
iadd
sipush 240
iload 1
sipush 7237
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7239
iadd
sipush 1920
iload 1
sipush 7239
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7240
iadd
sipush 8192
ineg
iload 1
sipush 7240
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7241
iadd
iconst_1
iload 1
sipush 7241
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7267
iadd
sipush 16384
ineg
iload 1
sipush 7267
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7268
iadd
iconst_3
iload 1
sipush 7268
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7269
iadd
sipush 240
iload 1
sipush 7269
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7271
iadd
sipush 1984
iload 1
sipush 7271
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7272
iadd
sipush 8192
ineg
iload 1
sipush 7272
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7273
iadd
iconst_1
iload 1
sipush 7273
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7299
iadd
sipush 16384
ineg
iload 1
sipush 7299
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7300
iadd
iconst_3
iload 1
sipush 7300
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7301
iadd
sipush 240
iload 1
sipush 7301
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7303
iadd
sipush 960
iload 1
sipush 7303
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7304
iadd
sipush 8192
ineg
iload 1
sipush 7304
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7305
iadd
iconst_1
iload 1
sipush 7305
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7331
iadd
sipush 8192
ineg
iload 1
sipush 7331
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7332
iadd
iconst_1
iload 1
sipush 7332
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7333
iadd
sipush 496
iload 1
sipush 7333
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7335
iadd
sipush 960
iload 1
sipush 7335
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7336
iadd
sipush 8192
ineg
iload 1
sipush 7336
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7337
iadd
iconst_1
iload 1
sipush 7337
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7363
iadd
sipush 8192
ineg
iload 1
sipush 7363
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7364
iadd
iconst_1
iload 1
sipush 7364
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7365
iadd
sipush 480
iload 1
sipush 7365
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7367
iadd
sipush 960
iload 1
sipush 7367
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7368
iadd
sipush 8192
ineg
iload 1
sipush 7368
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7369
iadd
iconst_1
iload 1
sipush 7369
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7395
iadd
sipush 8192
ineg
iload 1
sipush 7395
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7396
iadd
iconst_1
iload 1
sipush 7396
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7397
iadd
sipush 480
iload 1
sipush 7397
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7399
iadd
sipush 960
iload 1
sipush 7399
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7400
iadd
sipush 16384
ineg
iload 1
sipush 7400
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7401
iadd
iconst_3
iload 1
sipush 7401
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7427
iadd
sipush 8192
ineg
iload 1
sipush 7427
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7428
iadd
iconst_1
iload 1
sipush 7428
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7429
iadd
sipush 480
iload 1
sipush 7429
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7431
iadd
sipush 960
iload 1
sipush 7431
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7432
iadd
sipush 16384
ineg
iload 1
sipush 7432
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7433
iadd
iconst_3
iload 1
sipush 7433
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7459
iadd
sipush 8192
ineg
iload 1
sipush 7459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7461
iadd
sipush 480
iload 1
sipush 7461
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7463
iadd
sipush 448
iload 1
sipush 7463
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7464
iadd
sipush 16384
ineg
iload 1
sipush 7464
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7465
iadd
iconst_3
iload 1
sipush 7465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7491
iadd
sipush 8192
ineg
iload 1
sipush 7491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7493
iadd
sipush 480
iload 1
sipush 7493
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7495
iadd
sipush 448
iload 1
sipush 7495
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7496
iadd
sipush 16384
ineg
iload 1
sipush 7496
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7497
iadd
iconst_3
iload 1
sipush 7497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7523
iadd
sipush 8192
ineg
iload 1
sipush 7523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7525
iadd
sipush 192
iload 1
sipush 7525
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7527
iadd
sipush 192
iload 1
sipush 7527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7528
iadd
sipush 32767
ifne jump200
iconst_1
goto jump201
jump200:
iconst_0
jump201:
iload 1
sipush 7528
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7529
iadd
iconst_1
iload 1
sipush 7529
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawCarMiddle(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 5583
iadd
bipush 32
ineg
iload 1
sipush 5583
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5584
iadd
sipush 2047
iload 1
sipush 5584
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5615
iadd
iconst_2
ineg
iload 1
sipush 5615
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5616
iadd
sipush 32767
iload 1
sipush 5616
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5647
iadd
sipush 255
iload 1
sipush 5647
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5648
iadd
sipush 512
ineg
iload 1
sipush 5648
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5678
iadd
sipush 32767
ifne jump202
iconst_1
goto jump203
jump202:
iconst_0
jump203:
iload 1
sipush 5678
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5679
iadd
bipush 63
iload 1
sipush 5679
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5680
iadd
sipush 1024
ineg
iload 1
sipush 5680
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5681
iadd
iconst_1
iload 1
sipush 5681
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5710
iadd
sipush 16384
ineg
iload 1
sipush 5710
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5711
iadd
bipush 31
iload 1
sipush 5711
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5712
iadd
sipush 2048
ineg
iload 1
sipush 5712
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5713
iadd
iconst_3
iload 1
sipush 5713
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5742
iadd
sipush 16384
ineg
iload 1
sipush 5742
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5743
iadd
bipush 31
iload 1
sipush 5743
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5744
iadd
sipush 4096
ineg
iload 1
sipush 5744
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5745
iadd
iconst_3
iload 1
sipush 5745
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5774
iadd
sipush 512
ineg
iload 1
sipush 5774
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5775
iadd
bipush 15
iload 1
sipush 5775
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5776
iadd
sipush 2048
ineg
iload 1
sipush 5776
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5777
iadd
bipush 127
iload 1
sipush 5777
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5805
iadd
sipush 32767
ifne jump204
iconst_1
goto jump205
jump204:
iconst_0
jump205:
iload 1
sipush 5805
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5806
iadd
sipush 4879
iload 1
sipush 5806
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5807
iadd
bipush 31
iload 1
sipush 5807
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5808
iadd
sipush 1024
ineg
iload 1
sipush 5808
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5809
iadd
sipush 3892
ineg
iload 1
sipush 5809
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5810
iadd
iconst_1
iload 1
sipush 5810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5837
iadd
sipush 32767
ifne jump206
iconst_1
goto jump207
jump206:
iconst_0
jump207:
iload 1
sipush 5837
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5838
iadd
sipush 4511
iload 1
sipush 5838
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5839
iadd
bipush 31
iload 1
sipush 5839
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5840
iadd
sipush 1024
ineg
iload 1
sipush 5840
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5841
iadd
sipush 1640
ineg
iload 1
sipush 5841
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5842
iadd
iconst_1
iload 1
sipush 5842
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5869
iadd
sipush 8192
ineg
iload 1
sipush 5869
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5870
iadd
sipush 6303
iload 1
sipush 5870
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5871
iadd
bipush 63
iload 1
sipush 5871
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5872
iadd
sipush 512
ineg
iload 1
sipush 5872
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5873
iadd
sipush 1776
ineg
iload 1
sipush 5873
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5874
iadd
bipush 7
iload 1
sipush 5874
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5901
iadd
sipush 8192
ineg
iload 1
sipush 5901
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5902
iadd
sipush 3295
iload 1
sipush 5902
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5903
iadd
bipush 127
iload 1
sipush 5903
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5904
iadd
sipush 256
ineg
iload 1
sipush 5904
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5905
iadd
sipush 1232
ineg
iload 1
sipush 5905
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5906
iadd
bipush 7
iload 1
sipush 5906
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5933
iadd
sipush 8192
ineg
iload 1
sipush 5933
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5934
iadd
sipush 1663
iload 1
sipush 5934
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5935
iadd
bipush 127
iload 1
sipush 5935
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5936
iadd
sipush 256
ineg
iload 1
sipush 5936
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5937
iadd
sipush 416
ineg
iload 1
sipush 5937
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5938
iadd
bipush 7
iload 1
sipush 5938
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5966
iadd
sipush 880
iload 1
sipush 5966
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5967
iadd
sipush 255
iload 1
sipush 5967
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5968
iadd
sipush 128
ineg
iload 1
sipush 5968
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5969
iadd
sipush 3776
iload 1
sipush 5969
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5998
iadd
sipush 432
iload 1
sipush 5998
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5999
iadd
sipush 511
iload 1
sipush 5999
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6000
iadd
bipush 64
ineg
iload 1
sipush 6000
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6001
iadd
sipush 3200
iload 1
sipush 6001
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6030
iadd
sipush 152
iload 1
sipush 6030
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6031
iadd
sipush 1022
iload 1
sipush 6031
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6032
iadd
sipush 32736
iload 1
sipush 6032
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6033
iadd
sipush 6528
iload 1
sipush 6033
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6062
iadd
sipush 206
iload 1
sipush 6062
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6063
iadd
sipush 2044
iload 1
sipush 6063
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6064
iadd
sipush 16368
iload 1
sipush 6064
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6065
iadd
sipush 29440
iload 1
sipush 6065
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6094
iadd
bipush 67
iload 1
sipush 6094
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6095
iadd
sipush 4088
iload 1
sipush 6095
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6096
iadd
sipush 8176
iload 1
sipush 6096
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6097
iadd
sipush 14848
ineg
iload 1
sipush 6097
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6125
iadd
sipush 32767
ifne jump208
iconst_1
goto jump209
jump208:
iconst_0
jump209:
iload 1
sipush 6125
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6126
iadd
bipush 97
iload 1
sipush 6126
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6127
iadd
sipush 4088
iload 1
sipush 6127
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6128
iadd
sipush 8184
iload 1
sipush 6128
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6129
iadd
sipush 31744
ineg
iload 1
sipush 6129
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6130
iadd
iconst_1
iload 1
sipush 6130
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6157
iadd
sipush 8192
ineg
iload 1
sipush 6157
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6159
iadd
bipush 16
ineg
iload 1
sipush 6159
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6160
iadd
sipush 4095
iload 1
sipush 6160
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6161
iadd
sipush 3072
iload 1
sipush 6161
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6162
iadd
bipush 7
iload 1
sipush 6162
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6189
iadd
sipush 12288
iload 1
sipush 6189
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6191
iadd
sipush 128
ineg
iload 1
sipush 6191
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6192
iadd
sipush 511
iload 1
sipush 6192
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6194
iadd
bipush 12
iload 1
sipush 6194
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6221
iadd
sipush 7168
iload 1
sipush 6221
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6223
iadd
sipush 512
ineg
iload 1
sipush 6223
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6224
iadd
bipush 127
iload 1
sipush 6224
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6226
iadd
bipush 56
iload 1
sipush 6226
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6253
iadd
sipush 1536
iload 1
sipush 6253
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6255
iadd
sipush 1024
ineg
iload 1
sipush 6255
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6256
iadd
bipush 63
iload 1
sipush 6256
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6258
iadd
bipush 96
iload 1
sipush 6258
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6285
iadd
sipush 896
iload 1
sipush 6285
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6287
iadd
sipush 1024
ineg
iload 1
sipush 6287
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6288
iadd
bipush 63
iload 1
sipush 6288
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6290
iadd
sipush 448
iload 1
sipush 6290
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6317
iadd
sipush 192
iload 1
sipush 6317
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6322
iadd
sipush 768
iload 1
sipush 6322
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6349
iadd
sipush 1984
ineg
iload 1
sipush 6349
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6350
iadd
iconst_1
ineg
iload 1
sipush 6350
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6351
iadd
iconst_1
ineg
iload 1
sipush 6351
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6352
iadd
iconst_1
ineg
iload 1
sipush 6352
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6353
iadd
iconst_1
ineg
iload 1
sipush 6353
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6354
iadd
sipush 543
iload 1
sipush 6354
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6381
iadd
sipush 416
ineg
iload 1
sipush 6381
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6382
iadd
iconst_1
ineg
iload 1
sipush 6382
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6383
iadd
iconst_1
ineg
iload 1
sipush 6383
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6384
iadd
iconst_1
ineg
iload 1
sipush 6384
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6385
iadd
iconst_1
ineg
iload 1
sipush 6385
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6386
iadd
sipush 1663
iload 1
sipush 6386
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6413
iadd
bipush 80
ineg
iload 1
sipush 6413
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6414
iadd
iconst_1
ineg
iload 1
sipush 6414
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6415
iadd
iconst_1
ineg
iload 1
sipush 6415
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6416
iadd
iconst_1
ineg
iload 1
sipush 6416
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6417
iadd
iconst_1
ineg
iload 1
sipush 6417
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6418
iadd
sipush 3583
iload 1
sipush 6418
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6445
iadd
bipush 16
iload 1
sipush 6445
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6446
iadd
iconst_4
ineg
iload 1
sipush 6446
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6447
iadd
iconst_1
ineg
iload 1
sipush 6447
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6448
iadd
iconst_1
ineg
iload 1
sipush 6448
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6449
iadd
sipush 16383
iload 1
sipush 6449
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6450
iadd
sipush 2048
iload 1
sipush 6450
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6477
iadd
bipush 24
iload 1
sipush 6477
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6478
iadd
sipush 2032
iload 1
sipush 6478
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6479
iadd
bipush 32
ineg
iload 1
sipush 6479
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6480
iadd
sipush 2047
iload 1
sipush 6480
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6481
iadd
sipush 1008
iload 1
sipush 6481
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6482
iadd
sipush 6144
iload 1
sipush 6482
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6509
iadd
bipush 8
iload 1
sipush 6509
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6510
iadd
sipush 2016
iload 1
sipush 6510
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6511
iadd
bipush 32
ineg
iload 1
sipush 6511
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6512
iadd
sipush 2047
iload 1
sipush 6512
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6513
iadd
sipush 1008
iload 1
sipush 6513
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6514
iadd
sipush 4096
iload 1
sipush 6514
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6541
iadd
iconst_4
iload 1
sipush 6541
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6542
iadd
sipush 1984
iload 1
sipush 6542
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6543
iadd
bipush 32
iload 1
sipush 6543
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6544
iadd
sipush 1024
iload 1
sipush 6544
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6545
iadd
sipush 496
iload 1
sipush 6545
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6546
iadd
sipush 8192
iload 1
sipush 6546
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6573
iadd
bipush 6
iload 1
sipush 6573
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6574
iadd
sipush 1984
iload 1
sipush 6574
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6575
iadd
bipush 16
ineg
iload 1
sipush 6575
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6576
iadd
sipush 4095
iload 1
sipush 6576
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6577
iadd
sipush 496
iload 1
sipush 6577
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6578
iadd
sipush 24576
iload 1
sipush 6578
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6605
iadd
iconst_2
iload 1
sipush 6605
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6606
iadd
sipush 1920
iload 1
sipush 6606
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6607
iadd
bipush 16
ineg
iload 1
sipush 6607
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6608
iadd
sipush 4095
iload 1
sipush 6608
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6609
iadd
sipush 240
iload 1
sipush 6609
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6610
iadd
sipush 16384
iload 1
sipush 6610
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6637
iadd
iconst_3
iload 1
sipush 6637
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6638
iadd
sipush 1792
iload 1
sipush 6638
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6639
iadd
bipush 16
iload 1
sipush 6639
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6640
iadd
sipush 2048
iload 1
sipush 6640
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6641
iadd
sipush 240
iload 1
sipush 6641
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6642
iadd
sipush 16384
ineg
iload 1
sipush 6642
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6669
iadd
iconst_1
iload 1
sipush 6669
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6670
iadd
sipush 1792
iload 1
sipush 6670
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6671
iadd
bipush 16
ineg
iload 1
sipush 6671
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6672
iadd
sipush 4095
iload 1
sipush 6672
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6673
iadd
bipush 112
iload 1
sipush 6673
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6674
iadd
sipush 32767
ifne jump210
iconst_1
goto jump211
jump210:
iconst_0
jump211:
iload 1
sipush 6674
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6700
iadd
sipush 32767
ifne jump212
iconst_1
goto jump213
jump212:
iconst_0
jump213:
iload 1
sipush 6700
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6701
iadd
iconst_1
iload 1
sipush 6701
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6702
iadd
sipush 1536
iload 1
sipush 6702
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6703
iadd
bipush 16
ineg
iload 1
sipush 6703
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6704
iadd
sipush 4095
iload 1
sipush 6704
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6705
iadd
bipush 112
iload 1
sipush 6705
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6706
iadd
sipush 32767
ifne jump214
iconst_1
goto jump215
jump214:
iconst_0
jump215:
iload 1
sipush 6706
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6707
iadd
iconst_1
iload 1
sipush 6707
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6732
iadd
sipush 32767
ifne jump216
iconst_1
goto jump217
jump216:
iconst_0
jump217:
iload 1
sipush 6732
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6733
iadd
bipush 8
ineg
iload 1
sipush 6733
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6734
iadd
sipush 1151
iload 1
sipush 6734
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6737
iadd
sipush 464
ineg
iload 1
sipush 6737
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6738
iadd
sipush 8191
iload 1
sipush 6738
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6739
iadd
iconst_1
iload 1
sipush 6739
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6764
iadd
sipush 16384
ineg
iload 1
sipush 6764
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6765
iadd
iconst_4
ineg
iload 1
sipush 6765
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6766
iadd
sipush 255
iload 1
sipush 6766
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6769
iadd
sipush 240
ineg
iload 1
sipush 6769
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6770
iadd
sipush 16383
iload 1
sipush 6770
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6771
iadd
iconst_3
iload 1
sipush 6771
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6796
iadd
sipush 16384
iload 1
sipush 6796
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6797
iadd
iconst_2
ineg
iload 1
sipush 6797
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6798
iadd
sipush 1023
iload 1
sipush 6798
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6801
iadd
bipush 64
ineg
iload 1
sipush 6801
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6802
iadd
sipush 32767
iload 1
sipush 6802
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6803
iadd
iconst_2
iload 1
sipush 6803
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6828
iadd
sipush 16384
iload 1
sipush 6828
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6829
iadd
sipush 241
ineg
iload 1
sipush 6829
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6830
iadd
sipush 2047
iload 1
sipush 6830
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6833
iadd
bipush 32
ineg
iload 1
sipush 6833
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6834
iadd
sipush 3841
ineg
iload 1
sipush 6834
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6835
iadd
iconst_2
iload 1
sipush 6835
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6860
iadd
sipush 16384
iload 1
sipush 6860
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6861
iadd
sipush 15879
iload 1
sipush 6861
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6862
iadd
bipush 8
ineg
iload 1
sipush 6862
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6863
iadd
iconst_1
ineg
iload 1
sipush 6863
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6864
iadd
iconst_1
ineg
iload 1
sipush 6864
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6865
iadd
sipush 8191
iload 1
sipush 6865
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6866
iadd
sipush 8068
ineg
iload 1
sipush 6866
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6867
iadd
iconst_2
iload 1
sipush 6867
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6892
iadd
sipush 16384
iload 1
sipush 6892
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6893
iadd
sipush 7683
iload 1
sipush 6893
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6894
iadd
bipush 16
ineg
iload 1
sipush 6894
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6895
iadd
iconst_1
ineg
iload 1
sipush 6895
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6896
iadd
iconst_1
ineg
iload 1
sipush 6896
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6897
iadd
sipush 4095
iload 1
sipush 6897
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6898
iadd
sipush 16264
ineg
iload 1
sipush 6898
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6899
iadd
iconst_2
iload 1
sipush 6899
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6924
iadd
sipush 16384
iload 1
sipush 6924
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6925
iadd
sipush 3635
iload 1
sipush 6925
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6926
iadd
bipush 16
ineg
iload 1
sipush 6926
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6927
iadd
iconst_1
ineg
iload 1
sipush 6927
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6928
iadd
iconst_1
ineg
iload 1
sipush 6928
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6929
iadd
sipush 4095
iload 1
sipush 6929
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6930
iadd
sipush 13200
ineg
iload 1
sipush 6930
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6931
iadd
iconst_2
iload 1
sipush 6931
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6956
iadd
sipush 16384
iload 1
sipush 6956
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6957
iadd
sipush 29109
ineg
iload 1
sipush 6957
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6958
iadd
bipush 31
ineg
iload 1
sipush 6958
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6959
iadd
sipush 8191
iload 1
sipush 6959
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6960
iadd
bipush 8
ineg
iload 1
sipush 6960
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6961
iadd
sipush 30721
ineg
iload 1
sipush 6961
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6962
iadd
sipush 11663
ineg
iload 1
sipush 6962
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6963
iadd
iconst_2
iload 1
sipush 6963
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6988
iadd
sipush 16384
iload 1
sipush 6988
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6989
iadd
sipush 20043
iload 1
sipush 6989
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6990
iadd
bipush 30
ineg
iload 1
sipush 6990
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6991
iadd
sipush 8191
iload 1
sipush 6991
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6992
iadd
bipush 8
ineg
iload 1
sipush 6992
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6993
iadd
sipush 18431
iload 1
sipush 6993
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6994
iadd
sipush 11662
ineg
iload 1
sipush 6994
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6995
iadd
iconst_2
iload 1
sipush 6995
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7020
iadd
sipush 16384
iload 1
sipush 7020
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7021
iadd
sipush 20019
iload 1
sipush 7021
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7022
iadd
bipush 30
ineg
iload 1
sipush 7022
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7023
iadd
sipush 16383
iload 1
sipush 7023
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7024
iadd
iconst_4
ineg
iload 1
sipush 7024
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7025
iadd
sipush 18431
iload 1
sipush 7025
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7026
iadd
sipush 13198
ineg
iload 1
sipush 7026
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7027
iadd
iconst_2
iload 1
sipush 7027
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7052
iadd
sipush 16384
iload 1
sipush 7052
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7053
iadd
sipush 19971
iload 1
sipush 7053
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7054
iadd
bipush 30
ineg
iload 1
sipush 7054
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7055
iadd
sipush 32767
iload 1
sipush 7055
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7056
iadd
iconst_2
ineg
iload 1
sipush 7056
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7057
iadd
sipush 18431
iload 1
sipush 7057
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7058
iadd
sipush 16270
ineg
iload 1
sipush 7058
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7059
iadd
iconst_2
iload 1
sipush 7059
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7084
iadd
sipush 16384
iload 1
sipush 7084
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7085
iadd
sipush 29177
ineg
iload 1
sipush 7085
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7086
iadd
bipush 31
ineg
iload 1
sipush 7086
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7087
iadd
iconst_1
ineg
iload 1
sipush 7087
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7088
iadd
iconst_1
ineg
iload 1
sipush 7088
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7089
iadd
sipush 30721
ineg
iload 1
sipush 7089
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7090
iadd
sipush 8079
ineg
iload 1
sipush 7090
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7091
iadd
iconst_2
iload 1
sipush 7091
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7116
iadd
sipush 16384
iload 1
sipush 7116
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7117
iadd
sipush 7950
iload 1
sipush 7117
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7118
iadd
bipush 16
ineg
iload 1
sipush 7118
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7119
iadd
iconst_1
ineg
iload 1
sipush 7119
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7120
iadd
iconst_1
ineg
iload 1
sipush 7120
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7121
iadd
sipush 4095
iload 1
sipush 7121
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7122
iadd
sipush 28920
iload 1
sipush 7122
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7123
iadd
iconst_2
iload 1
sipush 7123
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7148
iadd
sipush 16384
iload 1
sipush 7148
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7149
iadd
sipush 16380
iload 1
sipush 7149
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7150
iadd
sipush 1016
iload 1
sipush 7150
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7153
iadd
sipush 8128
iload 1
sipush 7153
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7154
iadd
sipush 16380
iload 1
sipush 7154
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7155
iadd
iconst_2
iload 1
sipush 7155
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7180
iadd
sipush 16384
iload 1
sipush 7180
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7181
iadd
bipush 8
ineg
iload 1
sipush 7181
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7182
iadd
bipush 127
iload 1
sipush 7182
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7185
iadd
sipush 512
ineg
iload 1
sipush 7185
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7186
iadd
sipush 8191
iload 1
sipush 7186
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7187
iadd
iconst_2
iload 1
sipush 7187
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7212
iadd
sipush 16384
iload 1
sipush 7212
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7213
iadd
sipush 2048
ineg
iload 1
sipush 7213
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7214
iadd
bipush 31
iload 1
sipush 7214
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7217
iadd
sipush 2048
ineg
iload 1
sipush 7217
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7218
iadd
bipush 31
iload 1
sipush 7218
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7219
iadd
iconst_2
iload 1
sipush 7219
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7244
iadd
sipush 16384
iload 1
sipush 7244
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7251
iadd
iconst_2
iload 1
sipush 7251
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7276
iadd
sipush 16384
iload 1
sipush 7276
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7283
iadd
iconst_2
iload 1
sipush 7283
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7308
iadd
sipush 16384
iload 1
sipush 7308
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7315
iadd
iconst_2
iload 1
sipush 7315
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7340
iadd
sipush 16384
iload 1
sipush 7340
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7347
iadd
iconst_2
iload 1
sipush 7347
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7372
iadd
sipush 16384
iload 1
sipush 7372
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7373
iadd
sipush 248
iload 1
sipush 7373
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7378
iadd
sipush 7936
iload 1
sipush 7378
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7379
iadd
iconst_2
iload 1
sipush 7379
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7404
iadd
sipush 16384
iload 1
sipush 7404
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7405
iadd
sipush 2040
iload 1
sipush 7405
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7410
iadd
sipush 8160
iload 1
sipush 7410
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7411
iadd
iconst_2
iload 1
sipush 7411
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7436
iadd
sipush 16384
iload 1
sipush 7436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7437
iadd
sipush 4080
iload 1
sipush 7437
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7442
iadd
sipush 4080
iload 1
sipush 7442
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7443
iadd
iconst_2
iload 1
sipush 7443
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7468
iadd
sipush 16384
ineg
iload 1
sipush 7468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7469
iadd
sipush 8160
iload 1
sipush 7469
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7474
iadd
sipush 2040
iload 1
sipush 7474
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7475
iadd
iconst_3
iload 1
sipush 7475
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7500
iadd
sipush 16384
ineg
iload 1
sipush 7500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7501
iadd
sipush 8128
iload 1
sipush 7501
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7506
iadd
sipush 1016
iload 1
sipush 7506
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7507
iadd
iconst_3
iload 1
sipush 7507
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7532
iadd
sipush 16384
ineg
iload 1
sipush 7532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7539
iadd
iconst_3
iload 1
sipush 7539
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7564
iadd
sipush 16384
ineg
iload 1
sipush 7564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7571
iadd
iconst_3
iload 1
sipush 7571
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7596
iadd
sipush 16384
ineg
iload 1
sipush 7596
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7603
iadd
iconst_3
iload 1
sipush 7603
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7628
iadd
sipush 16384
ineg
iload 1
sipush 7628
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7629
iadd
sipush 32767
ineg
iload 1
sipush 7629
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7630
iadd
iconst_1
ineg
iload 1
sipush 7630
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7631
iadd
iconst_3
iload 1
sipush 7631
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7632
iadd
sipush 16384
ineg
iload 1
sipush 7632
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7633
iadd
iconst_1
ineg
iload 1
sipush 7633
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7634
iadd
sipush 32767
ineg
iload 1
sipush 7634
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7635
iadd
iconst_3
iload 1
sipush 7635
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7660
iadd
sipush 16384
ineg
iload 1
sipush 7660
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7661
iadd
sipush 16369
ineg
iload 1
sipush 7661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7662
iadd
sipush 8190
iload 1
sipush 7662
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7663
iadd
iconst_1
ineg
iload 1
sipush 7663
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7664
iadd
iconst_1
ineg
iload 1
sipush 7664
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7665
iadd
sipush 32760
iload 1
sipush 7665
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7666
iadd
sipush 4093
ineg
iload 1
sipush 7666
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7667
iadd
iconst_3
iload 1
sipush 7667
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7692
iadd
sipush 16384
ineg
iload 1
sipush 7692
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7693
iadd
sipush 24831
iload 1
sipush 7693
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7694
iadd
sipush 26618
ineg
iload 1
sipush 7694
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7695
iadd
iconst_1
iload 1
sipush 7695
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7696
iadd
sipush 32767
ifne jump218
iconst_1
goto jump219
jump218:
iconst_0
jump219:
iload 1
sipush 7696
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7697
iadd
sipush 24601
iload 1
sipush 7697
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7698
iadd
sipush 250
ineg
iload 1
sipush 7698
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7699
iadd
iconst_3
iload 1
sipush 7699
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7724
iadd
sipush 16384
ineg
iload 1
sipush 7724
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7725
iadd
sipush 16383
iload 1
sipush 7725
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7726
iadd
sipush 26618
ineg
iload 1
sipush 7726
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7729
iadd
sipush 24601
iload 1
sipush 7729
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7730
iadd
iconst_4
ineg
iload 1
sipush 7730
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7731
iadd
iconst_3
iload 1
sipush 7731
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7756
iadd
sipush 16384
ineg
iload 1
sipush 7756
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7757
iadd
sipush 4095
iload 1
sipush 7757
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7758
iadd
sipush 14332
ineg
iload 1
sipush 7758
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7761
iadd
sipush 8211
iload 1
sipush 7761
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7762
iadd
bipush 16
ineg
iload 1
sipush 7762
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7763
iadd
iconst_3
iload 1
sipush 7763
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7788
iadd
sipush 16384
ineg
iload 1
sipush 7788
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7789
iadd
sipush 4095
iload 1
sipush 7789
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7790
iadd
sipush 28668
iload 1
sipush 7790
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7793
iadd
sipush 16374
iload 1
sipush 7793
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7794
iadd
bipush 16
ineg
iload 1
sipush 7794
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7795
iadd
iconst_3
iload 1
sipush 7795
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7820
iadd
sipush 16384
ineg
iload 1
sipush 7820
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7821
iadd
sipush 4095
iload 1
sipush 7821
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7822
iadd
sipush 7184
ineg
iload 1
sipush 7822
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7823
iadd
iconst_1
ineg
iload 1
sipush 7823
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7824
iadd
iconst_1
ineg
iload 1
sipush 7824
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7825
iadd
sipush 4039
iload 1
sipush 7825
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7826
iadd
bipush 16
ineg
iload 1
sipush 7826
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7827
iadd
iconst_3
iload 1
sipush 7827
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7852
iadd
sipush 16384
ineg
iload 1
sipush 7852
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7853
iadd
sipush 4095
iload 1
sipush 7853
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7855
iadd
sipush 1024
ineg
iload 1
sipush 7855
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7856
iadd
bipush 63
iload 1
sipush 7856
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7858
iadd
bipush 16
ineg
iload 1
sipush 7858
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7859
iadd
iconst_3
iload 1
sipush 7859
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7884
iadd
sipush 32767
ifne jump220
iconst_1
goto jump221
jump220:
iconst_0
jump221:
iload 1
sipush 7884
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7885
iadd
sipush 4095
iload 1
sipush 7885
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7890
iadd
bipush 16
ineg
iload 1
sipush 7890
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7891
iadd
iconst_1
iload 1
sipush 7891
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7917
iadd
sipush 1022
iload 1
sipush 7917
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7922
iadd
sipush 32704
iload 1
sipush 7922
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawCarRight(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 5719
iadd
sipush 2048
ineg
iload 1
sipush 5719
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5720
iadd
iconst_1
ineg
iload 1
sipush 5720
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5721
iadd
bipush 63
iload 1
sipush 5721
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5751
iadd
sipush 512
ineg
iload 1
sipush 5751
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5752
iadd
iconst_1
ineg
iload 1
sipush 5752
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5753
iadd
sipush 16383
iload 1
sipush 5753
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5783
iadd
sipush 3328
ineg
iload 1
sipush 5783
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5784
iadd
iconst_1
ineg
iload 1
sipush 5784
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5785
iadd
iconst_1
ineg
iload 1
sipush 5785
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5786
iadd
iconst_1
iload 1
sipush 5786
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5815
iadd
sipush 3712
ineg
iload 1
sipush 5815
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5816
iadd
sipush 8191
iload 1
sipush 5816
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5817
iadd
sipush 256
ineg
iload 1
sipush 5817
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5818
iadd
bipush 7
iload 1
sipush 5818
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5847
iadd
sipush 8000
ineg
iload 1
sipush 5847
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5848
iadd
sipush 4095
iload 1
sipush 5848
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5849
iadd
sipush 1024
ineg
iload 1
sipush 5849
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5850
iadd
bipush 31
iload 1
sipush 5850
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5879
iadd
sipush 16288
ineg
iload 1
sipush 5879
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5880
iadd
sipush 2047
iload 1
sipush 5880
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5881
iadd
sipush 4096
ineg
iload 1
sipush 5881
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5882
iadd
bipush 63
iload 1
sipush 5882
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5910
iadd
sipush 1024
ineg
iload 1
sipush 5910
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5911
iadd
sipush 16321
ineg
iload 1
sipush 5911
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5912
iadd
sipush 2044
iload 1
sipush 5912
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5913
iadd
sipush 8192
ineg
iload 1
sipush 5913
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5914
iadd
bipush 127
iload 1
sipush 5914
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5942
iadd
sipush 1920
iload 1
sipush 5942
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5943
iadd
sipush 16408
iload 1
sipush 5943
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5944
iadd
sipush 1016
iload 1
sipush 5944
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5945
iadd
sipush 16384
ineg
iload 1
sipush 5945
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5946
iadd
sipush 255
iload 1
sipush 5946
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5974
iadd
sipush 2016
iload 1
sipush 5974
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5975
iadd
sipush 16396
iload 1
sipush 5975
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5976
iadd
sipush 4080
iload 1
sipush 5976
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5978
iadd
sipush 2047
iload 1
sipush 5978
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6006
iadd
sipush 2032
iload 1
sipush 6006
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6007
iadd
sipush 16390
iload 1
sipush 6007
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6008
iadd
sipush 8160
iload 1
sipush 6008
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6010
iadd
sipush 8190
iload 1
sipush 6010
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6038
iadd
sipush 4080
iload 1
sipush 6038
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6039
iadd
sipush 24578
iload 1
sipush 6039
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6040
iadd
sipush 8128
iload 1
sipush 6040
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6042
iadd
sipush 7422
iload 1
sipush 6042
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6070
iadd
sipush 4080
iload 1
sipush 6070
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6071
iadd
sipush 8198
iload 1
sipush 6071
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6072
iadd
sipush 32704
iload 1
sipush 6072
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6074
iadd
sipush 6398
iload 1
sipush 6074
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6102
iadd
sipush 3808
iload 1
sipush 6102
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6103
iadd
sipush 8220
iload 1
sipush 6103
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6104
iadd
sipush 128
ineg
iload 1
sipush 6104
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6106
iadd
sipush 12542
iload 1
sipush 6106
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6134
iadd
sipush 128
iload 1
sipush 6134
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6135
iadd
sipush 8240
iload 1
sipush 6135
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6136
iadd
sipush 256
ineg
iload 1
sipush 6136
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6137
iadd
iconst_1
iload 1
sipush 6137
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6138
iadd
sipush 24830
iload 1
sipush 6138
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6166
iadd
sipush 128
iload 1
sipush 6166
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6167
iadd
sipush 8288
iload 1
sipush 6167
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6168
iadd
sipush 512
ineg
iload 1
sipush 6168
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6169
iadd
iconst_3
iload 1
sipush 6169
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6170
iadd
sipush 16638
iload 1
sipush 6170
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6198
iadd
sipush 128
iload 1
sipush 6198
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6199
iadd
sipush 8384
iload 1
sipush 6199
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6200
iadd
sipush 1024
ineg
iload 1
sipush 6200
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6201
iadd
bipush 15
iload 1
sipush 6201
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6202
iadd
sipush 16129
ineg
iload 1
sipush 6202
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6230
iadd
sipush 192
iload 1
sipush 6230
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6231
iadd
sipush 14208
iload 1
sipush 6231
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6232
iadd
sipush 2048
ineg
iload 1
sipush 6232
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6233
iadd
sipush 32705
ineg
iload 1
sipush 6233
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6234
iadd
sipush 32641
ineg
iload 1
sipush 6234
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6235
iadd
iconst_1
iload 1
sipush 6235
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6262
iadd
sipush 192
iload 1
sipush 6262
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6263
iadd
sipush 7168
iload 1
sipush 6263
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6264
iadd
sipush 8192
ineg
iload 1
sipush 6264
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6265
iadd
iconst_1
ineg
iload 1
sipush 6265
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6266
iadd
bipush 127
iload 1
sipush 6266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6267
iadd
iconst_1
iload 1
sipush 6267
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6294
iadd
sipush 224
iload 1
sipush 6294
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6296
iadd
sipush 16384
ineg
iload 1
sipush 6296
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6297
iadd
iconst_1
ineg
iload 1
sipush 6297
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6298
iadd
bipush 31
iload 1
sipush 6298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6299
iadd
sipush 254
iload 1
sipush 6299
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6326
iadd
sipush 224
iload 1
sipush 6326
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6327
iadd
sipush 1536
iload 1
sipush 6327
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6328
iadd
sipush 32767
ifne jump222
iconst_1
goto jump223
jump222:
iconst_0
jump223:
iload 1
sipush 6328
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6329
iadd
iconst_1
ineg
iload 1
sipush 6329
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6330
iadd
bipush 15
iload 1
sipush 6330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6331
iadd
sipush 3968
iload 1
sipush 6331
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6358
iadd
sipush 224
iload 1
sipush 6358
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6359
iadd
sipush 768
iload 1
sipush 6359
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6361
iadd
iconst_4
ineg
iload 1
sipush 6361
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6362
iadd
bipush 7
iload 1
sipush 6362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6363
iadd
sipush 2048
ineg
iload 1
sipush 6363
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6364
iadd
bipush 63
iload 1
sipush 6364
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6390
iadd
sipush 224
iload 1
sipush 6390
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6391
iadd
sipush 384
iload 1
sipush 6391
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6396
iadd
sipush 992
iload 1
sipush 6396
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6422
iadd
sipush 224
iload 1
sipush 6422
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6423
iadd
sipush 192
iload 1
sipush 6423
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6428
iadd
sipush 3584
iload 1
sipush 6428
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6454
iadd
sipush 224
iload 1
sipush 6454
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6455
iadd
bipush 96
iload 1
sipush 6455
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6456
iadd
sipush 128
ineg
iload 1
sipush 6456
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6457
iadd
iconst_1
ineg
iload 1
sipush 6457
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6458
iadd
iconst_1
ineg
iload 1
sipush 6458
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6459
iadd
iconst_1
ineg
iload 1
sipush 6459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6460
iadd
sipush 6147
iload 1
sipush 6460
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6486
iadd
sipush 224
iload 1
sipush 6486
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6487
iadd
bipush 48
iload 1
sipush 6487
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6488
iadd
bipush 8
ineg
iload 1
sipush 6488
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6489
iadd
iconst_1
ineg
iload 1
sipush 6489
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6490
iadd
iconst_1
ineg
iload 1
sipush 6490
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6491
iadd
iconst_1
ineg
iload 1
sipush 6491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6492
iadd
sipush 12319
iload 1
sipush 6492
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6518
iadd
sipush 224
iload 1
sipush 6518
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6519
iadd
sipush 16360
ineg
iload 1
sipush 6519
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6520
iadd
iconst_1
ineg
iload 1
sipush 6520
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6521
iadd
iconst_1
ineg
iload 1
sipush 6521
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6522
iadd
iconst_1
ineg
iload 1
sipush 6522
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6523
iadd
iconst_1
ineg
iload 1
sipush 6523
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6524
iadd
sipush 16383
iload 1
sipush 6524
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6550
iadd
sipush 224
iload 1
sipush 6550
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6551
iadd
bipush 8
iload 1
sipush 6551
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6552
iadd
sipush 4096
ineg
iload 1
sipush 6552
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6553
iadd
iconst_1
ineg
iload 1
sipush 6553
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6554
iadd
iconst_1
ineg
iload 1
sipush 6554
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6555
iadd
iconst_1
ineg
iload 1
sipush 6555
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6556
iadd
sipush 16263
iload 1
sipush 6556
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6582
iadd
sipush 224
iload 1
sipush 6582
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6583
iadd
bipush 12
iload 1
sipush 6583
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6584
iadd
sipush 4096
ineg
iload 1
sipush 6584
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6585
iadd
bipush 61
ineg
iload 1
sipush 6585
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6586
iadd
sipush 4095
iload 1
sipush 6586
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6587
iadd
iconst_1
ineg
iload 1
sipush 6587
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6588
iadd
sipush 385
iload 1
sipush 6588
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6614
iadd
sipush 224
iload 1
sipush 6614
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6615
iadd
iconst_4
iload 1
sipush 6615
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6616
iadd
sipush 4096
ineg
iload 1
sipush 6616
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6617
iadd
bipush 61
ineg
iload 1
sipush 6617
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6618
iadd
sipush 8191
iload 1
sipush 6618
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6619
iadd
iconst_2
ineg
iload 1
sipush 6619
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6620
iadd
sipush 769
iload 1
sipush 6620
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6646
iadd
sipush 28896
iload 1
sipush 6646
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6647
iadd
bipush 6
iload 1
sipush 6647
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6648
iadd
sipush 4096
ineg
iload 1
sipush 6648
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6649
iadd
bipush 67
iload 1
sipush 6649
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6650
iadd
sipush 4096
iload 1
sipush 6650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6651
iadd
iconst_4
ineg
iload 1
sipush 6651
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6652
iadd
sipush 1536
iload 1
sipush 6652
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6678
iadd
sipush 30944
iload 1
sipush 6678
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6679
iadd
iconst_2
iload 1
sipush 6679
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6680
iadd
sipush 8192
ineg
iload 1
sipush 6680
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6681
iadd
bipush 61
ineg
iload 1
sipush 6681
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6682
iadd
sipush 16383
iload 1
sipush 6682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6683
iadd
sipush 32752
iload 1
sipush 6683
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6684
iadd
sipush 3072
iload 1
sipush 6684
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6710
iadd
sipush 30944
iload 1
sipush 6710
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6711
iadd
iconst_3
iload 1
sipush 6711
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6712
iadd
sipush 8192
ineg
iload 1
sipush 6712
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6713
iadd
sipush 253
ineg
iload 1
sipush 6713
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6714
iadd
iconst_1
ineg
iload 1
sipush 6714
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6715
iadd
sipush 32736
iload 1
sipush 6715
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6716
iadd
sipush 6144
iload 1
sipush 6716
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6742
iadd
sipush 31200
iload 1
sipush 6742
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6743
iadd
iconst_1
iload 1
sipush 6743
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6744
iadd
sipush 8192
ineg
iload 1
sipush 6744
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6745
iadd
sipush 259
iload 1
sipush 6745
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6746
iadd
sipush 32767
ifne jump224
iconst_1
goto jump225
jump224:
iconst_0
jump225:
iload 1
sipush 6746
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6747
iadd
sipush 16321
iload 1
sipush 6747
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6748
iadd
sipush 12288
iload 1
sipush 6748
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6774
iadd
sipush 32224
iload 1
sipush 6774
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6775
iadd
iconst_1
iload 1
sipush 6775
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6776
iadd
sipush 16384
ineg
iload 1
sipush 6776
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6777
iadd
sipush 253
ineg
iload 1
sipush 6777
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6778
iadd
iconst_1
ineg
iload 1
sipush 6778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6779
iadd
sipush 7939
iload 1
sipush 6779
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6780
iadd
sipush 16384
iload 1
sipush 6780
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6806
iadd
sipush 32192
iload 1
sipush 6806
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6807
iadd
iconst_1
iload 1
sipush 6807
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6809
iadd
sipush 1021
ineg
iload 1
sipush 6809
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6810
iadd
iconst_1
ineg
iload 1
sipush 6810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6811
iadd
sipush 7939
iload 1
sipush 6811
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6812
iadd
sipush 16384
ineg
iload 1
sipush 6812
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6838
iadd
sipush 32192
iload 1
sipush 6838
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6839
iadd
iconst_1
iload 1
sipush 6839
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6841
iadd
sipush 1022
ineg
iload 1
sipush 6841
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6842
iadd
iconst_1
ineg
iload 1
sipush 6842
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6843
iadd
sipush 3075
iload 1
sipush 6843
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6844
iadd
sipush 16385
ineg
iload 1
sipush 6844
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6845
iadd
iconst_1
iload 1
sipush 6845
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6870
iadd
sipush 32128
iload 1
sipush 6870
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6871
iadd
sipush 511
ineg
iload 1
sipush 6871
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6872
iadd
iconst_1
ineg
iload 1
sipush 6872
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6875
iadd
sipush 13312
ineg
iload 1
sipush 6875
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6876
iadd
sipush 32767
iload 1
sipush 6876
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6877
iadd
iconst_3
iload 1
sipush 6877
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6902
iadd
sipush 32512
iload 1
sipush 6902
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6903
iadd
sipush 256
ineg
iload 1
sipush 6903
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6904
iadd
iconst_1
ineg
iload 1
sipush 6904
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6905
iadd
iconst_1
iload 1
sipush 6905
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6907
iadd
sipush 8192
ineg
iload 1
sipush 6907
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6908
iadd
iconst_1
ineg
iload 1
sipush 6908
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6909
iadd
bipush 6
iload 1
sipush 6909
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6934
iadd
sipush 32512
iload 1
sipush 6934
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6935
iadd
sipush 128
ineg
iload 1
sipush 6935
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6936
iadd
iconst_1
ineg
iload 1
sipush 6936
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6937
iadd
iconst_3
iload 1
sipush 6937
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6939
iadd
sipush 2048
ineg
iload 1
sipush 6939
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6940
iadd
iconst_1
ineg
iload 1
sipush 6940
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6941
iadd
iconst_5
iload 1
sipush 6941
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6966
iadd
sipush 32256
iload 1
sipush 6966
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6967
iadd
sipush 15936
ineg
iload 1
sipush 6967
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6968
iadd
iconst_1
ineg
iload 1
sipush 6968
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6969
iadd
iconst_1
ineg
iload 1
sipush 6969
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6970
iadd
iconst_1
ineg
iload 1
sipush 6970
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6971
iadd
iconst_1
ineg
iload 1
sipush 6971
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6972
iadd
sipush 12409
ineg
iload 1
sipush 6972
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6973
iadd
iconst_5
iload 1
sipush 6973
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6998
iadd
sipush 32256
iload 1
sipush 6998
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6999
iadd
sipush 32576
ineg
iload 1
sipush 6999
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7000
iadd
sipush 961
ineg
iload 1
sipush 7000
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7001
iadd
iconst_1
ineg
iload 1
sipush 7001
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7002
iadd
iconst_1
ineg
iload 1
sipush 7002
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7003
iadd
iconst_1
ineg
iload 1
sipush 7003
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7004
iadd
sipush 30973
ineg
iload 1
sipush 7004
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7005
iadd
iconst_5
iload 1
sipush 7005
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7030
iadd
sipush 32256
iload 1
sipush 7030
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7031
iadd
sipush 7264
iload 1
sipush 7031
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7032
iadd
sipush 2017
ineg
iload 1
sipush 7032
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7033
iadd
iconst_1
ineg
iload 1
sipush 7033
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7034
iadd
iconst_1
ineg
iload 1
sipush 7034
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7035
iadd
iconst_1
ineg
iload 1
sipush 7035
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7036
iadd
sipush 12849
iload 1
sipush 7036
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7037
iadd
iconst_5
iload 1
sipush 7037
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7062
iadd
sipush 32256
iload 1
sipush 7062
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7063
iadd
sipush 8800
iload 1
sipush 7063
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7064
iadd
sipush 4081
ineg
iload 1
sipush 7064
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7065
iadd
iconst_1
ineg
iload 1
sipush 7065
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7066
iadd
sipush 993
ineg
iload 1
sipush 7066
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7067
iadd
iconst_1
ineg
iload 1
sipush 7067
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7068
iadd
sipush 19017
iload 1
sipush 7068
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7069
iadd
iconst_5
iload 1
sipush 7069
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7094
iadd
sipush 31744
iload 1
sipush 7094
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7095
iadd
sipush 8800
iload 1
sipush 7095
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7096
iadd
sipush 3697
ineg
iload 1
sipush 7096
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7097
iadd
iconst_1
ineg
iload 1
sipush 7097
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7098
iadd
sipush 993
ineg
iload 1
sipush 7098
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7099
iadd
iconst_1
ineg
iload 1
sipush 7099
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7100
iadd
sipush 19017
iload 1
sipush 7100
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7101
iadd
iconst_5
iload 1
sipush 7101
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7126
iadd
sipush 31744
iload 1
sipush 7126
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7127
iadd
sipush 8800
iload 1
sipush 7127
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7128
iadd
sipush 3505
ineg
iload 1
sipush 7128
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7129
iadd
iconst_1
ineg
iload 1
sipush 7129
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7130
iadd
sipush 449
ineg
iload 1
sipush 7130
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7131
iadd
iconst_1
ineg
iload 1
sipush 7131
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7132
iadd
sipush 12849
iload 1
sipush 7132
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7133
iadd
iconst_5
iload 1
sipush 7133
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7158
iadd
sipush 31744
iload 1
sipush 7158
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7159
iadd
sipush 7264
iload 1
sipush 7159
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7160
iadd
sipush 3505
ineg
iload 1
sipush 7160
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7161
iadd
iconst_1
ineg
iload 1
sipush 7161
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7162
iadd
sipush 129
ineg
iload 1
sipush 7162
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7163
iadd
iconst_1
ineg
iload 1
sipush 7163
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7164
iadd
sipush 30973
ineg
iload 1
sipush 7164
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7165
iadd
iconst_5
iload 1
sipush 7165
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7190
iadd
sipush 15360
iload 1
sipush 7190
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7191
iadd
sipush 192
iload 1
sipush 7191
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7192
iadd
sipush 3697
ineg
iload 1
sipush 7192
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7193
iadd
iconst_1
ineg
iload 1
sipush 7193
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7194
iadd
iconst_1
ineg
iload 1
sipush 7194
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7195
iadd
iconst_1
ineg
iload 1
sipush 7195
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7196
iadd
sipush 12409
ineg
iload 1
sipush 7196
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7197
iadd
bipush 6
iload 1
sipush 7197
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7222
iadd
sipush 15360
iload 1
sipush 7222
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7223
iadd
sipush 32320
ineg
iload 1
sipush 7223
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7224
iadd
sipush 2017
ineg
iload 1
sipush 7224
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7225
iadd
iconst_1
ineg
iload 1
sipush 7225
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7226
iadd
iconst_1
ineg
iload 1
sipush 7226
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7227
iadd
iconst_1
ineg
iload 1
sipush 7227
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7228
iadd
iconst_1
ineg
iload 1
sipush 7228
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7229
iadd
bipush 6
iload 1
sipush 7229
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7254
iadd
sipush 15360
iload 1
sipush 7254
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7255
iadd
sipush 128
ineg
iload 1
sipush 7255
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7256
iadd
sipush 961
ineg
iload 1
sipush 7256
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7257
iadd
iconst_1
iload 1
sipush 7257
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7259
iadd
sipush 32767
ifne jump226
iconst_1
goto jump227
jump226:
iconst_0
jump227:
iload 1
sipush 7259
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7260
iadd
sipush 32767
iload 1
sipush 7260
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7261
iadd
iconst_2
iload 1
sipush 7261
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7286
iadd
sipush 15360
iload 1
sipush 7286
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7287
iadd
sipush 256
ineg
iload 1
sipush 7287
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7288
iadd
iconst_1
ineg
iload 1
sipush 7288
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7292
iadd
bipush 126
iload 1
sipush 7292
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7293
iadd
iconst_2
iload 1
sipush 7293
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7318
iadd
sipush 15360
iload 1
sipush 7318
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7319
iadd
sipush 2048
ineg
iload 1
sipush 7319
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7320
iadd
sipush 32767
iload 1
sipush 7320
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7325
iadd
iconst_2
iload 1
sipush 7325
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7350
iadd
sipush 15360
iload 1
sipush 7350
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7352
iadd
sipush 8184
iload 1
sipush 7352
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7357
iadd
iconst_3
iload 1
sipush 7357
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7382
iadd
sipush 15360
iload 1
sipush 7382
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7389
iadd
iconst_3
iload 1
sipush 7389
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7414
iadd
sipush 15360
iload 1
sipush 7414
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7421
iadd
iconst_3
iload 1
sipush 7421
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7446
iadd
sipush 15360
iload 1
sipush 7446
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7452
iadd
sipush 15872
iload 1
sipush 7452
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7453
iadd
iconst_3
iload 1
sipush 7453
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7478
iadd
sipush 15360
iload 1
sipush 7478
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7484
iadd
sipush 16640
ineg
iload 1
sipush 7484
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7485
iadd
iconst_3
iload 1
sipush 7485
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7510
iadd
sipush 15360
iload 1
sipush 7510
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7511
iadd
sipush 128
ineg
iload 1
sipush 7511
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7512
iadd
iconst_1
iload 1
sipush 7512
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7516
iadd
sipush 24704
ineg
iload 1
sipush 7516
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7517
iadd
iconst_3
iload 1
sipush 7517
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7542
iadd
sipush 15360
iload 1
sipush 7542
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7543
iadd
sipush 128
ineg
iload 1
sipush 7543
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7544
iadd
iconst_3
iload 1
sipush 7544
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7548
iadd
sipush 28736
ineg
iload 1
sipush 7548
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7549
iadd
iconst_3
iload 1
sipush 7549
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7574
iadd
sipush 15360
iload 1
sipush 7574
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7575
iadd
sipush 256
ineg
iload 1
sipush 7575
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7576
iadd
bipush 7
iload 1
sipush 7576
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7580
iadd
sipush 32767
ifne jump228
iconst_1
goto jump229
jump228:
iconst_0
jump229:
iload 1
sipush 7580
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7581
iadd
iconst_3
iload 1
sipush 7581
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7606
iadd
sipush 31744
iload 1
sipush 7606
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7607
iadd
sipush 512
ineg
iload 1
sipush 7607
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7608
iadd
bipush 15
iload 1
sipush 7608
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7612
iadd
sipush 32767
ifne jump230
iconst_1
goto jump231
jump230:
iconst_0
jump231:
iload 1
sipush 7612
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7613
iadd
iconst_3
iload 1
sipush 7613
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7638
iadd
sipush 31744
iload 1
sipush 7638
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7639
iadd
sipush 1024
ineg
iload 1
sipush 7639
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7640
iadd
bipush 15
iload 1
sipush 7640
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7644
iadd
sipush 32767
ifne jump232
iconst_1
goto jump233
jump232:
iconst_0
jump233:
iload 1
sipush 7644
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7645
iadd
iconst_3
iload 1
sipush 7645
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7670
iadd
sipush 1024
ineg
iload 1
sipush 7670
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7676
iadd
sipush 32767
ifne jump234
iconst_1
goto jump235
jump234:
iconst_0
jump235:
iload 1
sipush 7676
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7677
iadd
iconst_3
iload 1
sipush 7677
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7702
iadd
sipush 1024
ineg
iload 1
sipush 7702
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7703
iadd
iconst_1
iload 1
sipush 7703
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7707
iadd
bipush 16
ineg
iload 1
sipush 7707
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7708
iadd
sipush 8161
ineg
iload 1
sipush 7708
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7709
iadd
iconst_3
iload 1
sipush 7709
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7734
iadd
sipush 2048
ineg
iload 1
sipush 7734
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7735
iadd
iconst_3
iload 1
sipush 7735
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7736
iadd
bipush 64
ineg
iload 1
sipush 7736
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7737
iadd
iconst_1
ineg
iload 1
sipush 7737
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7738
iadd
iconst_1
ineg
iload 1
sipush 7738
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7739
iadd
sipush 1951
iload 1
sipush 7739
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7740
iadd
sipush 1988
ineg
iload 1
sipush 7740
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7741
iadd
iconst_3
iload 1
sipush 7741
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7766
iadd
sipush 2048
ineg
iload 1
sipush 7766
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7767
iadd
bipush 15
iload 1
sipush 7767
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7768
iadd
sipush 992
iload 1
sipush 7768
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7769
iadd
sipush 252
iload 1
sipush 7769
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7771
iadd
sipush 1984
iload 1
sipush 7771
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7772
iadd
iconst_4
ineg
iload 1
sipush 7772
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7773
iadd
iconst_3
iload 1
sipush 7773
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7798
iadd
sipush 2048
ineg
iload 1
sipush 7798
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7799
iadd
bipush 15
iload 1
sipush 7799
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7800
iadd
sipush 864
iload 1
sipush 7800
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7801
iadd
bipush 76
iload 1
sipush 7801
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7803
iadd
sipush 3776
iload 1
sipush 7803
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7804
iadd
bipush 20
ineg
iload 1
sipush 7804
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7805
iadd
iconst_3
iload 1
sipush 7805
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7830
iadd
sipush 4096
ineg
iload 1
sipush 7830
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7831
iadd
sipush 1023
iload 1
sipush 7831
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7832
iadd
sipush 1848
iload 1
sipush 7832
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7833
iadd
bipush 108
iload 1
sipush 7833
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7835
iadd
sipush 3200
iload 1
sipush 7835
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7836
iadd
bipush 20
ineg
iload 1
sipush 7836
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7837
iadd
iconst_3
iload 1
sipush 7837
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7862
iadd
sipush 16384
ineg
iload 1
sipush 7862
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7863
iadd
iconst_1
ineg
iload 1
sipush 7863
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7864
iadd
sipush 1599
iload 1
sipush 7864
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7865
iadd
bipush 54
iload 1
sipush 7865
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7867
iadd
sipush 1920
ineg
iload 1
sipush 7867
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7868
iadd
bipush 25
ineg
iload 1
sipush 7868
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7869
iadd
iconst_3
iload 1
sipush 7869
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7895
iadd
sipush 512
ineg
iload 1
sipush 7895
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7896
iadd
sipush 1009
ineg
iload 1
sipush 7896
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7897
iadd
bipush 23
iload 1
sipush 7897
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7899
iadd
sipush 1664
ineg
iload 1
sipush 7899
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7900
iadd
bipush 57
ineg
iload 1
sipush 7900
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7901
iadd
iconst_1
iload 1
sipush 7901
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7928
iadd
sipush 1024
ineg
iload 1
sipush 7928
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7929
iadd
iconst_5
ineg
iload 1
sipush 7929
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7930
iadd
iconst_1
ineg
iload 1
sipush 7930
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7931
iadd
sipush 3585
ineg
iload 1
sipush 7931
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7932
iadd
bipush 125
ineg
iload 1
sipush 7932
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7960
iadd
sipush 2048
ineg
iload 1
sipush 7960
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7961
iadd
bipush 7
ineg
iload 1
sipush 7961
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7962
iadd
iconst_1
ineg
iload 1
sipush 7962
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7963
iadd
sipush 511
iload 1
sipush 7963
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7993
iadd
sipush 8192
ineg
iload 1
sipush 7993
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7994
iadd
iconst_1
ineg
iload 1
sipush 7994
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
.method public static drawCarLeft(I)V
.limit stack 10
.limit locals 2
iconst_0
istore 1
getstatic Graphics.buffer LOS/Array;
invokevirtual OS/Array.getBaseAddress()I
iload 0
iadd
istore 1
iload 1
sipush 5670
iadd
sipush 512
ineg
iload 1
sipush 5670
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5671
iadd
iconst_1
ineg
iload 1
sipush 5671
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5672
iadd
bipush 15
iload 1
sipush 5672
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5702
iadd
iconst_2
ineg
iload 1
sipush 5702
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5703
iadd
iconst_1
ineg
iload 1
sipush 5703
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5704
iadd
bipush 63
iload 1
sipush 5704
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5733
iadd
sipush 16384
ineg
iload 1
sipush 5733
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5734
iadd
iconst_1
ineg
iload 1
sipush 5734
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5735
iadd
iconst_1
ineg
iload 1
sipush 5735
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5736
iadd
bipush 103
iload 1
sipush 5736
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5765
iadd
sipush 4096
ineg
iload 1
sipush 5765
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5766
iadd
bipush 127
iload 1
sipush 5766
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5767
iadd
iconst_4
ineg
iload 1
sipush 5767
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5768
iadd
sipush 199
iload 1
sipush 5768
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5797
iadd
sipush 1024
ineg
iload 1
sipush 5797
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5798
iadd
bipush 31
iload 1
sipush 5798
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5799
iadd
bipush 8
ineg
iload 1
sipush 5799
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5800
iadd
sipush 387
iload 1
sipush 5800
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5829
iadd
sipush 512
ineg
iload 1
sipush 5829
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5830
iadd
bipush 7
iload 1
sipush 5830
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5831
iadd
bipush 16
ineg
iload 1
sipush 5831
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5832
iadd
sipush 769
iload 1
sipush 5832
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5861
iadd
sipush 256
ineg
iload 1
sipush 5861
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5862
iadd
iconst_3
iload 1
sipush 5862
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5863
iadd
sipush 24592
ineg
iload 1
sipush 5863
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5864
iadd
sipush 511
ineg
iload 1
sipush 5864
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5865
iadd
bipush 31
iload 1
sipush 5865
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5893
iadd
sipush 128
ineg
iload 1
sipush 5893
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5894
iadd
iconst_1
iload 1
sipush 5894
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5895
iadd
sipush 4064
iload 1
sipush 5895
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5896
iadd
sipush 3073
iload 1
sipush 5896
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5897
iadd
sipush 240
iload 1
sipush 5897
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5925
iadd
sipush 32752
iload 1
sipush 5925
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5927
iadd
sipush 2040
iload 1
sipush 5927
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5928
iadd
sipush 6145
iload 1
sipush 5928
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5929
iadd
sipush 1008
iload 1
sipush 5929
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5957
iadd
sipush 16380
iload 1
sipush 5957
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5959
iadd
sipush 1020
iload 1
sipush 5959
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5960
iadd
sipush 12289
iload 1
sipush 5960
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5961
iadd
sipush 2032
iload 1
sipush 5961
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5989
iadd
sipush 16284
iload 1
sipush 5989
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5991
iadd
sipush 508
iload 1
sipush 5991
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5992
iadd
sipush 8195
iload 1
sipush 5992
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 5993
iadd
sipush 2040
iload 1
sipush 5993
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6021
iadd
sipush 16268
iload 1
sipush 6021
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6023
iadd
sipush 511
iload 1
sipush 6023
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6024
iadd
sipush 12290
iload 1
sipush 6024
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6025
iadd
sipush 1016
iload 1
sipush 6025
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6053
iadd
sipush 16262
iload 1
sipush 6053
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6054
iadd
sipush 32767
ifne jump236
iconst_1
goto jump237
jump236:
iconst_0
jump237:
iload 1
sipush 6054
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6055
iadd
sipush 255
iload 1
sipush 6055
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6056
iadd
sipush 7170
iload 1
sipush 6056
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6057
iadd
sipush 184
iload 1
sipush 6057
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6085
iadd
sipush 16259
iload 1
sipush 6085
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6086
iadd
sipush 16384
ineg
iload 1
sipush 6086
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6087
iadd
bipush 127
iload 1
sipush 6087
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6088
iadd
sipush 1538
iload 1
sipush 6088
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6089
iadd
sipush 128
iload 1
sipush 6089
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6117
iadd
sipush 16257
iload 1
sipush 6117
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6118
iadd
sipush 8192
ineg
iload 1
sipush 6118
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6119
iadd
bipush 63
iload 1
sipush 6119
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6120
iadd
sipush 770
iload 1
sipush 6120
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6121
iadd
sipush 128
iload 1
sipush 6121
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6148
iadd
sipush 32767
ifne jump238
iconst_1
goto jump239
jump238:
iconst_0
jump239:
iload 1
sipush 6148
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6149
iadd
sipush 32641
iload 1
sipush 6149
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6150
iadd
sipush 2048
ineg
iload 1
sipush 6150
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6151
iadd
bipush 31
iload 1
sipush 6151
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6152
iadd
sipush 386
iload 1
sipush 6152
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6153
iadd
sipush 128
iload 1
sipush 6153
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6180
iadd
sipush 16384
ineg
iload 1
sipush 6180
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6181
iadd
sipush 256
ineg
iload 1
sipush 6181
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6182
iadd
sipush 512
ineg
iload 1
sipush 6182
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6183
iadd
bipush 15
iload 1
sipush 6183
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6184
iadd
sipush 246
iload 1
sipush 6184
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6185
iadd
sipush 384
iload 1
sipush 6185
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6212
iadd
sipush 16384
iload 1
sipush 6212
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6213
iadd
sipush 256
ineg
iload 1
sipush 6213
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6214
iadd
iconst_1
ineg
iload 1
sipush 6214
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6215
iadd
iconst_3
iload 1
sipush 6215
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6216
iadd
bipush 28
iload 1
sipush 6216
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6217
iadd
sipush 384
iload 1
sipush 6217
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6244
iadd
sipush 16256
iload 1
sipush 6244
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6245
iadd
sipush 1024
ineg
iload 1
sipush 6245
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6246
iadd
iconst_1
ineg
iload 1
sipush 6246
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6247
iadd
iconst_1
iload 1
sipush 6247
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6249
iadd
sipush 896
iload 1
sipush 6249
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6276
iadd
sipush 248
iload 1
sipush 6276
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6277
iadd
sipush 2048
ineg
iload 1
sipush 6277
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6278
iadd
iconst_1
ineg
iload 1
sipush 6278
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6280
iadd
bipush 48
iload 1
sipush 6280
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6281
iadd
sipush 896
iload 1
sipush 6281
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6307
iadd
sipush 512
ineg
iload 1
sipush 6307
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6308
iadd
bipush 15
iload 1
sipush 6308
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6309
iadd
sipush 4096
ineg
iload 1
sipush 6309
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6310
iadd
sipush 8191
iload 1
sipush 6310
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6312
iadd
bipush 96
iload 1
sipush 6312
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6313
iadd
sipush 896
iload 1
sipush 6313
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6339
iadd
sipush 992
iload 1
sipush 6339
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6344
iadd
sipush 192
iload 1
sipush 6344
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6345
iadd
sipush 896
iload 1
sipush 6345
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6371
iadd
bipush 56
iload 1
sipush 6371
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6376
iadd
sipush 384
iload 1
sipush 6376
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6377
iadd
sipush 896
iload 1
sipush 6377
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6403
iadd
sipush 8180
ineg
iload 1
sipush 6403
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6404
iadd
iconst_1
ineg
iload 1
sipush 6404
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6405
iadd
iconst_1
ineg
iload 1
sipush 6405
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6406
iadd
iconst_1
ineg
iload 1
sipush 6406
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6407
iadd
sipush 255
iload 1
sipush 6407
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6408
iadd
sipush 768
iload 1
sipush 6408
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6409
iadd
sipush 896
iload 1
sipush 6409
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6435
iadd
sipush 1018
ineg
iload 1
sipush 6435
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6436
iadd
iconst_1
ineg
iload 1
sipush 6436
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6437
iadd
iconst_1
ineg
iload 1
sipush 6437
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6438
iadd
iconst_1
ineg
iload 1
sipush 6438
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6439
iadd
sipush 4095
iload 1
sipush 6439
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6440
iadd
sipush 1536
iload 1
sipush 6440
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6441
iadd
sipush 896
iload 1
sipush 6441
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6467
iadd
iconst_2
ineg
iload 1
sipush 6467
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6468
iadd
iconst_1
ineg
iload 1
sipush 6468
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6469
iadd
iconst_1
ineg
iload 1
sipush 6469
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6470
iadd
iconst_1
ineg
iload 1
sipush 6470
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6471
iadd
iconst_1
ineg
iload 1
sipush 6471
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6472
iadd
sipush 3073
iload 1
sipush 6472
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6473
iadd
sipush 896
iload 1
sipush 6473
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6499
iadd
sipush 3968
ineg
iload 1
sipush 6499
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6500
iadd
iconst_1
ineg
iload 1
sipush 6500
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6501
iadd
iconst_1
ineg
iload 1
sipush 6501
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6502
iadd
iconst_1
ineg
iload 1
sipush 6502
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6503
iadd
bipush 7
iload 1
sipush 6503
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6504
iadd
sipush 2048
iload 1
sipush 6504
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6505
iadd
sipush 896
iload 1
sipush 6505
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6531
iadd
sipush 16192
ineg
iload 1
sipush 6531
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6532
iadd
sipush 32767
iload 1
sipush 6532
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6533
iadd
bipush 8
ineg
iload 1
sipush 6533
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6534
iadd
sipush 7681
ineg
iload 1
sipush 6534
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6535
iadd
bipush 7
iload 1
sipush 6535
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6536
iadd
sipush 6144
iload 1
sipush 6536
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6537
iadd
sipush 896
iload 1
sipush 6537
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6563
iadd
sipush 16288
ineg
iload 1
sipush 6563
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6564
iadd
sipush 16383
iload 1
sipush 6564
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6565
iadd
iconst_4
ineg
iload 1
sipush 6565
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6566
iadd
sipush 7681
ineg
iload 1
sipush 6566
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6567
iadd
bipush 7
iload 1
sipush 6567
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6568
iadd
sipush 4096
iload 1
sipush 6568
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6569
iadd
sipush 896
iload 1
sipush 6569
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6595
iadd
sipush 32720
ineg
iload 1
sipush 6595
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6596
iadd
sipush 8191
iload 1
sipush 6596
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6597
iadd
iconst_4
iload 1
sipush 6597
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6598
iadd
sipush 7936
ineg
iload 1
sipush 6598
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6599
iadd
bipush 7
iload 1
sipush 6599
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6600
iadd
sipush 12288
iload 1
sipush 6600
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6601
iadd
sipush 903
iload 1
sipush 6601
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6627
iadd
bipush 24
iload 1
sipush 6627
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6628
iadd
sipush 2047
iload 1
sipush 6628
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6629
iadd
iconst_2
ineg
iload 1
sipush 6629
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6630
iadd
sipush 7681
ineg
iload 1
sipush 6630
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6631
iadd
iconst_3
iload 1
sipush 6631
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6632
iadd
sipush 8192
iload 1
sipush 6632
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6633
iadd
sipush 911
iload 1
sipush 6633
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6659
iadd
bipush 12
iload 1
sipush 6659
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6660
iadd
sipush 31745
ineg
iload 1
sipush 6660
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6661
iadd
iconst_1
ineg
iload 1
sipush 6661
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6662
iadd
sipush 8065
ineg
iload 1
sipush 6662
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6663
iadd
iconst_3
iload 1
sipush 6663
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6664
iadd
sipush 24576
iload 1
sipush 6664
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6665
iadd
sipush 911
iload 1
sipush 6665
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6691
iadd
bipush 6
iload 1
sipush 6691
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6692
iadd
sipush 15874
ineg
iload 1
sipush 6692
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6694
iadd
sipush 8128
ineg
iload 1
sipush 6694
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6695
iadd
iconst_3
iload 1
sipush 6695
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6696
iadd
sipush 16384
iload 1
sipush 6696
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6697
iadd
sipush 975
iload 1
sipush 6697
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6723
iadd
iconst_1
iload 1
sipush 6723
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6724
iadd
sipush 8068
ineg
iload 1
sipush 6724
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6725
iadd
iconst_1
ineg
iload 1
sipush 6725
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6726
iadd
sipush 8065
ineg
iload 1
sipush 6726
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6727
iadd
iconst_1
iload 1
sipush 6727
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6728
iadd
sipush 16384
iload 1
sipush 6728
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6729
iadd
sipush 479
iload 1
sipush 6729
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6754
iadd
sipush 32767
ifne jump240
iconst_1
goto jump241
jump240:
iconst_0
jump241:
iload 1
sipush 6754
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6755
iadd
iconst_1
iload 1
sipush 6755
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6756
iadd
sipush 8068
ineg
iload 1
sipush 6756
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6757
iadd
iconst_1
ineg
iload 1
sipush 6757
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6758
iadd
sipush 24607
iload 1
sipush 6758
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6760
iadd
sipush 16384
iload 1
sipush 6760
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6761
iadd
sipush 479
iload 1
sipush 6761
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6786
iadd
sipush 16384
ineg
iload 1
sipush 6786
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6787
iadd
sipush 32766
iload 1
sipush 6787
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6788
iadd
sipush 8168
ineg
iload 1
sipush 6788
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6789
iadd
iconst_1
ineg
iload 1
sipush 6789
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6790
iadd
sipush 8223
iload 1
sipush 6790
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6792
iadd
sipush 16384
iload 1
sipush 6792
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6793
iadd
sipush 223
iload 1
sipush 6793
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6818
iadd
sipush 24576
iload 1
sipush 6818
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6819
iadd
iconst_1
ineg
iload 1
sipush 6819
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6820
iadd
bipush 25
iload 1
sipush 6820
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6822
iadd
sipush 32767
ifne jump242
iconst_1
goto jump243
jump242:
iconst_0
jump243:
iload 1
sipush 6822
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6823
iadd
iconst_1
ineg
iload 1
sipush 6823
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6824
iadd
sipush 16447
iload 1
sipush 6824
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6825
iadd
bipush 95
iload 1
sipush 6825
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6850
iadd
sipush 20480
ineg
iload 1
sipush 6850
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6851
iadd
iconst_1
ineg
iload 1
sipush 6851
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6852
iadd
iconst_3
iload 1
sipush 6852
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6854
iadd
sipush 16384
ineg
iload 1
sipush 6854
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6855
iadd
iconst_1
ineg
iload 1
sipush 6855
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6856
iadd
bipush 127
iload 1
sipush 6856
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6857
iadd
bipush 127
iload 1
sipush 6857
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6882
iadd
sipush 12288
ineg
iload 1
sipush 6882
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6883
iadd
iconst_1
ineg
iload 1
sipush 6883
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6884
iadd
bipush 15
iload 1
sipush 6884
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6886
iadd
sipush 8192
ineg
iload 1
sipush 6886
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6887
iadd
iconst_1
ineg
iload 1
sipush 6887
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6888
iadd
sipush 255
iload 1
sipush 6888
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6889
iadd
bipush 63
iload 1
sipush 6889
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6914
iadd
sipush 12288
ineg
iload 1
sipush 6914
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6915
iadd
sipush 3847
ineg
iload 1
sipush 6915
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6916
iadd
iconst_1
ineg
iload 1
sipush 6916
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6917
iadd
iconst_1
ineg
iload 1
sipush 6917
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6918
iadd
iconst_1
ineg
iload 1
sipush 6918
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6919
iadd
iconst_1
ineg
iload 1
sipush 6919
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6920
iadd
sipush 449
iload 1
sipush 6920
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6921
iadd
bipush 63
iload 1
sipush 6921
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6946
iadd
sipush 12288
ineg
iload 1
sipush 6946
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6947
iadd
sipush 8080
ineg
iload 1
sipush 6947
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6948
iadd
iconst_1
ineg
iload 1
sipush 6948
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6949
iadd
iconst_1
ineg
iload 1
sipush 6949
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6950
iadd
iconst_1
ineg
iload 1
sipush 6950
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6951
iadd
sipush 481
ineg
iload 1
sipush 6951
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6952
iadd
sipush 384
iload 1
sipush 6952
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6953
iadd
bipush 63
iload 1
sipush 6953
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6978
iadd
sipush 20480
iload 1
sipush 6978
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6979
iadd
sipush 14810
ineg
iload 1
sipush 6979
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6980
iadd
iconst_1
ineg
iload 1
sipush 6980
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6981
iadd
iconst_1
ineg
iload 1
sipush 6981
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6982
iadd
iconst_1
ineg
iload 1
sipush 6982
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6983
iadd
sipush 31759
iload 1
sipush 6983
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6984
iadd
sipush 796
iload 1
sipush 6984
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 6985
iadd
bipush 63
iload 1
sipush 6985
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7010
iadd
sipush 20480
iload 1
sipush 7010
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7011
iadd
sipush 14039
ineg
iload 1
sipush 7011
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7012
iadd
iconst_1
ineg
iload 1
sipush 7012
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7013
iadd
sipush 993
ineg
iload 1
sipush 7013
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7014
iadd
iconst_1
ineg
iload 1
sipush 7014
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7015
iadd
sipush 30727
iload 1
sipush 7015
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7016
iadd
sipush 802
iload 1
sipush 7016
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7017
iadd
bipush 31
iload 1
sipush 7017
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7042
iadd
sipush 20480
iload 1
sipush 7042
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7043
iadd
sipush 14039
ineg
iload 1
sipush 7043
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7044
iadd
iconst_1
ineg
iload 1
sipush 7044
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7045
iadd
sipush 993
ineg
iload 1
sipush 7045
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7046
iadd
iconst_1
ineg
iload 1
sipush 7046
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7047
iadd
sipush 30919
iload 1
sipush 7047
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7048
iadd
sipush 802
iload 1
sipush 7048
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7049
iadd
bipush 31
iload 1
sipush 7049
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7074
iadd
sipush 20480
iload 1
sipush 7074
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7075
iadd
sipush 14810
ineg
iload 1
sipush 7075
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7076
iadd
iconst_1
ineg
iload 1
sipush 7076
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7077
iadd
sipush 449
ineg
iload 1
sipush 7077
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7078
iadd
iconst_1
ineg
iload 1
sipush 7078
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7079
iadd
sipush 31015
iload 1
sipush 7079
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7080
iadd
sipush 802
iload 1
sipush 7080
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7081
iadd
bipush 31
iload 1
sipush 7081
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7106
iadd
sipush 12288
ineg
iload 1
sipush 7106
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7107
iadd
sipush 8080
ineg
iload 1
sipush 7107
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7108
iadd
iconst_1
ineg
iload 1
sipush 7108
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7109
iadd
sipush 129
ineg
iload 1
sipush 7109
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7110
iadd
iconst_1
ineg
iload 1
sipush 7110
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7111
iadd
sipush 31015
iload 1
sipush 7111
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7112
iadd
sipush 796
iload 1
sipush 7112
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7113
iadd
bipush 31
iload 1
sipush 7113
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7138
iadd
sipush 20480
ineg
iload 1
sipush 7138
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7139
iadd
sipush 3847
ineg
iload 1
sipush 7139
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7140
iadd
iconst_1
ineg
iload 1
sipush 7140
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7141
iadd
iconst_1
ineg
iload 1
sipush 7141
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7142
iadd
iconst_1
ineg
iload 1
sipush 7142
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7143
iadd
sipush 30919
iload 1
sipush 7143
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7144
iadd
sipush 384
iload 1
sipush 7144
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7145
iadd
bipush 30
iload 1
sipush 7145
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7170
iadd
sipush 24576
ineg
iload 1
sipush 7170
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7171
iadd
iconst_1
ineg
iload 1
sipush 7171
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7172
iadd
iconst_1
ineg
iload 1
sipush 7172
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7173
iadd
iconst_1
ineg
iload 1
sipush 7173
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7174
iadd
iconst_1
ineg
iload 1
sipush 7174
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7175
iadd
sipush 1009
ineg
iload 1
sipush 7175
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7176
iadd
sipush 448
iload 1
sipush 7176
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7177
iadd
bipush 30
iload 1
sipush 7177
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7202
iadd
sipush 8192
iload 1
sipush 7202
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7203
iadd
iconst_1
ineg
iload 1
sipush 7203
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7206
iadd
sipush 16384
ineg
iload 1
sipush 7206
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7207
iadd
sipush 481
ineg
iload 1
sipush 7207
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7208
iadd
sipush 255
iload 1
sipush 7208
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7209
iadd
bipush 30
iload 1
sipush 7209
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7234
iadd
sipush 8192
iload 1
sipush 7234
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7235
iadd
sipush 16128
iload 1
sipush 7235
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7238
iadd
sipush 32767
ifne jump244
iconst_1
goto jump245
jump244:
iconst_0
jump245:
iload 1
sipush 7238
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7239
iadd
iconst_1
ineg
iload 1
sipush 7239
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7240
iadd
bipush 127
iload 1
sipush 7240
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7241
iadd
bipush 30
iload 1
sipush 7241
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7266
iadd
sipush 8192
iload 1
sipush 7266
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7271
iadd
iconst_1
ineg
iload 1
sipush 7271
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7272
iadd
bipush 15
iload 1
sipush 7272
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7273
iadd
bipush 30
iload 1
sipush 7273
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7298
iadd
sipush 24576
iload 1
sipush 7298
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7303
iadd
sipush 4092
iload 1
sipush 7303
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7305
iadd
bipush 30
iload 1
sipush 7305
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7330
iadd
sipush 24576
iload 1
sipush 7330
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7337
iadd
bipush 30
iload 1
sipush 7337
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7362
iadd
sipush 24576
iload 1
sipush 7362
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7369
iadd
bipush 30
iload 1
sipush 7369
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7394
iadd
sipush 24576
iload 1
sipush 7394
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7395
iadd
bipush 62
iload 1
sipush 7395
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7401
iadd
bipush 30
iload 1
sipush 7401
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7426
iadd
sipush 8192
ineg
iload 1
sipush 7426
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7427
iadd
bipush 126
iload 1
sipush 7427
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7433
iadd
bipush 30
iload 1
sipush 7433
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7458
iadd
sipush 8192
ineg
iload 1
sipush 7458
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7459
iadd
sipush 252
iload 1
sipush 7459
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7463
iadd
sipush 16384
ineg
iload 1
sipush 7463
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7464
iadd
sipush 255
iload 1
sipush 7464
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7465
iadd
bipush 30
iload 1
sipush 7465
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7490
iadd
sipush 8192
ineg
iload 1
sipush 7490
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7491
iadd
sipush 504
iload 1
sipush 7491
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7495
iadd
sipush 8192
ineg
iload 1
sipush 7495
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7496
iadd
sipush 255
iload 1
sipush 7496
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7497
iadd
bipush 30
iload 1
sipush 7497
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7522
iadd
sipush 8192
ineg
iload 1
sipush 7522
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7527
iadd
sipush 4096
ineg
iload 1
sipush 7527
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7528
iadd
bipush 127
iload 1
sipush 7528
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7529
iadd
bipush 30
iload 1
sipush 7529
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7554
iadd
sipush 8192
ineg
iload 1
sipush 7554
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7559
iadd
sipush 2048
ineg
iload 1
sipush 7559
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7560
iadd
bipush 63
iload 1
sipush 7560
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7561
iadd
bipush 31
iload 1
sipush 7561
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7586
iadd
sipush 8192
ineg
iload 1
sipush 7586
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7591
iadd
sipush 2048
ineg
iload 1
sipush 7591
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7592
iadd
bipush 31
iload 1
sipush 7592
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7593
iadd
bipush 31
iload 1
sipush 7593
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7618
iadd
sipush 8192
ineg
iload 1
sipush 7618
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7624
iadd
sipush 32767
ifne jump246
iconst_1
goto jump247
jump246:
iconst_0
jump247:
iload 1
sipush 7624
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7625
iadd
bipush 31
iload 1
sipush 7625
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7650
iadd
sipush 8192
ineg
iload 1
sipush 7650
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7651
iadd
sipush 1021
ineg
iload 1
sipush 7651
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7652
iadd
sipush 2047
iload 1
sipush 7652
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7656
iadd
sipush 16384
ineg
iload 1
sipush 7656
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7657
iadd
bipush 15
iload 1
sipush 7657
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7682
iadd
sipush 8192
ineg
iload 1
sipush 7682
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7683
iadd
sipush 7695
iload 1
sipush 7683
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7684
iadd
sipush 784
ineg
iload 1
sipush 7684
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7685
iadd
iconst_1
ineg
iload 1
sipush 7685
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7686
iadd
iconst_1
ineg
iload 1
sipush 7686
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7687
iadd
sipush 511
iload 1
sipush 7687
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7688
iadd
sipush 8192
ineg
iload 1
sipush 7688
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7689
iadd
bipush 15
iload 1
sipush 7689
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7714
iadd
sipush 8192
ineg
iload 1
sipush 7714
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7715
iadd
sipush 7167
iload 1
sipush 7715
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7716
iadd
sipush 432
iload 1
sipush 7716
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7718
iadd
sipush 6528
iload 1
sipush 7718
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7719
iadd
sipush 864
iload 1
sipush 7719
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7720
iadd
sipush 2048
ineg
iload 1
sipush 7720
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7721
iadd
bipush 15
iload 1
sipush 7721
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7746
iadd
sipush 8192
ineg
iload 1
sipush 7746
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7747
iadd
sipush 7167
iload 1
sipush 7747
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7748
iadd
sipush 408
iload 1
sipush 7748
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7750
iadd
sipush 6400
iload 1
sipush 7750
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7751
iadd
sipush 608
iload 1
sipush 7751
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7752
iadd
sipush 2048
ineg
iload 1
sipush 7752
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7753
iadd
bipush 7
iload 1
sipush 7753
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7778
iadd
sipush 8192
ineg
iload 1
sipush 7778
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7779
iadd
sipush 5119
iload 1
sipush 7779
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7780
iadd
sipush 136
iload 1
sipush 7780
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7782
iadd
sipush 4864
iload 1
sipush 7782
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7783
iadd
sipush 3632
iload 1
sipush 7783
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7784
iadd
bipush 32
ineg
iload 1
sipush 7784
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7785
iadd
iconst_1
iload 1
sipush 7785
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7810
iadd
sipush 16384
ineg
iload 1
sipush 7810
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7811
iadd
sipush 3585
ineg
iload 1
sipush 7811
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7812
iadd
sipush 143
iload 1
sipush 7812
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7814
iadd
sipush 13824
iload 1
sipush 7814
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7815
iadd
sipush 2032
ineg
iload 1
sipush 7815
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7816
iadd
bipush 63
iload 1
sipush 7816
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7842
iadd
sipush 32767
ifne jump248
iconst_1
goto jump249
jump248:
iconst_0
jump249:
iload 1
sipush 7842
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7843
iadd
sipush 7937
ineg
iload 1
sipush 7843
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7844
iadd
sipush 199
iload 1
sipush 7844
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7846
iadd
sipush 7168
ineg
iload 1
sipush 7846
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7847
iadd
bipush 31
iload 1
sipush 7847
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7876
iadd
bipush 64
ineg
iload 1
sipush 7876
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7877
iadd
iconst_1
ineg
iload 1
sipush 7877
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7878
iadd
sipush 12289
ineg
iload 1
sipush 7878
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7879
iadd
bipush 15
iload 1
sipush 7879
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7908
iadd
sipush 32767
ifne jump250
iconst_1
goto jump251
jump250:
iconst_0
jump251:
iload 1
sipush 7908
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7909
iadd
iconst_1
ineg
iload 1
sipush 7909
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
iload 1
sipush 7910
iadd
iconst_3
iload 1
sipush 7910
iadd
invokestatic OS/Memory.peek(I)I
ior
invokestatic OS/Memory.poke(II)V
return
.end method
