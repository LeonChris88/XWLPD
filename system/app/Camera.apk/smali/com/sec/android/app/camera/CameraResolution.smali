.class public Lcom/sec/android/app/camera/CameraResolution;
.super Ljava/lang/Object;
.source "CameraResolution.java"


# static fields
.field public static final RESOLUTION_1280X720:I = 0xe

.field public static final RESOLUTION_1280X800:I = 0x15

.field public static final RESOLUTION_1280X960:I = 0xa

.field public static final RESOLUTION_1600X1200:I = 0x8

.field public static final RESOLUTION_1600X960:I = 0x9

.field public static final RESOLUTION_176X144:I = 0x12

.field public static final RESOLUTION_1920X1080:I = 0xd

.field public static final RESOLUTION_2048X1232:I = 0x7

.field public static final RESOLUTION_2048X1536:I = 0x6

.field public static final RESOLUTION_2560X1440:I = 0x14

.field public static final RESOLUTION_2560X1536:I = 0x5

.field public static final RESOLUTION_2560X1920:I = 0x4

.field public static final RESOLUTION_3072X1856:I = 0x3

.field public static final RESOLUTION_3072X2304:I = 0x2

.field public static final RESOLUTION_320X240:I = 0x11

.field public static final RESOLUTION_3264X1836:I = 0x13

.field public static final RESOLUTION_3264X1968:I = 0x1

.field public static final RESOLUTION_3264X2448:I = 0x0

.field public static final RESOLUTION_400X240:I = 0x10

.field public static final RESOLUTION_640X480:I = 0xb

.field public static final RESOLUTION_720X480:I = 0xf

.field public static final RESOLUTION_800X480:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    sub-int v1, v2, v3

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    sub-int v0, v2, v3

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez v1, :cond_0

    if-lez v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIntHeight(I)I
    .locals 1

    const/16 v0, 0x1e0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x990

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x900

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x7b0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x780

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x740

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x72c

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x600

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x5a0

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x4d0

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x4b0

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x438

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x3c0

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x2d0

    goto :goto_0

    :pswitch_f
    const/16 v0, 0xf0

    goto :goto_0

    :pswitch_10
    const/16 v0, 0x90

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_6
        :pswitch_8
        :pswitch_d
    .end packed-switch
.end method

.method public static getIntWidth(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xcc0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xc00

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa00

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x800

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x780

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x640

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x280

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x320

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x500

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x2d0

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x190

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x140

    goto :goto_0

    :pswitch_c
    const/16 v0, 0xb0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public static getResolutionID(Ljava/lang/String;)I
    .locals 1

    const-string v0, "3264x2448"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "3264x1968"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "3264x1836"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto :goto_0

    :cond_2
    const-string v0, "3072x2304"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v0, "3072x1856"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v0, "2560x1920"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const-string v0, "2560x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const-string v0, "2560x1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x14

    goto :goto_0

    :cond_7
    const-string v0, "2048x1536"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_0

    :cond_8
    const-string v0, "2048x1232"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x7

    goto :goto_0

    :cond_9
    const-string v0, "1920x1080"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0xd

    goto :goto_0

    :cond_a
    const-string v0, "1600x1200"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x8

    goto :goto_0

    :cond_b
    const-string v0, "1600x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x9

    goto :goto_0

    :cond_c
    const-string v0, "1280x960"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_d
    const-string v0, "800x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_e
    const-string v0, "640x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_f
    const-string v0, "1280x800"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_10
    const-string v0, "1280x720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_11
    const-string v0, "720x480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_12
    const-string v0, "400x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_13
    const-string v0, "320x240"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_14
    const-string v0, "176x144"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x12

    goto/16 :goto_0

    :cond_15
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getResolutionString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "176x144"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "3264x2448"

    goto :goto_0

    :pswitch_1
    const-string v0, "3264x1968"

    goto :goto_0

    :pswitch_2
    const-string v0, "3264x1836"

    goto :goto_0

    :pswitch_3
    const-string v0, "3072x2304"

    goto :goto_0

    :pswitch_4
    const-string v0, "3072x1856"

    goto :goto_0

    :pswitch_5
    const-string v0, "2560x1920"

    goto :goto_0

    :pswitch_6
    const-string v0, "2560x1536"

    goto :goto_0

    :pswitch_7
    const-string v0, "2560x1440"

    goto :goto_0

    :pswitch_8
    const-string v0, "2048x1536"

    goto :goto_0

    :pswitch_9
    const-string v0, "2048x1232"

    goto :goto_0

    :pswitch_a
    const-string v0, "1920x1080"

    goto :goto_0

    :pswitch_b
    const-string v0, "1600x1200"

    goto :goto_0

    :pswitch_c
    const-string v0, "1600x960"

    goto :goto_0

    :pswitch_d
    const-string v0, "1280x960"

    goto :goto_0

    :pswitch_e
    const-string v0, "1280x800"

    goto :goto_0

    :pswitch_f
    const-string v0, "800x480"

    goto :goto_0

    :pswitch_10
    const-string v0, "640x480"

    goto :goto_0

    :pswitch_11
    const-string v0, "1280x720"

    goto :goto_0

    :pswitch_12
    const-string v0, "720x480"

    goto :goto_0

    :pswitch_13
    const-string v0, "400x240"

    goto :goto_0

    :pswitch_14
    const-string v0, "320x240"

    goto :goto_0

    :pswitch_15
    const-string v0, "176x144"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_2
        :pswitch_7
        :pswitch_e
    .end packed-switch
.end method

.method public static isWideResolution(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
