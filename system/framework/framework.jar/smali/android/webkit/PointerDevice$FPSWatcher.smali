.class public Landroid/webkit/PointerDevice$FPSWatcher;
.super Ljava/lang/Object;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PointerDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FPSWatcher"
.end annotation


# instance fields
.field mTimeStamps:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    return-void
.end method

.method private frameChars(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x11

    sub-long/2addr p1, v1

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    const-string v1, " "

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x32

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    const-wide/16 p1, 0x32

    :cond_1
    :goto_1
    cmp-long v1, p1, v3

    if-lez v1, :cond_2

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public onDraw()V
    .locals 14

    const/4 v13, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    aget-wide v10, v10, v13

    sub-long v2, v8, v10

    iget-object v10, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    iget-object v11, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    sub-long v0, v8, v10

    const-wide/16 v10, 0x1

    cmp-long v10, v0, v10

    if-gez v10, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    iget-object v10, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    array-length v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x447a

    mul-float/2addr v10, v11

    long-to-float v11, v0

    div-float v5, v10, v11

    float-to-int v6, v5

    const/16 v10, 0xa

    if-ge v6, v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v2, v3}, Landroid/webkit/PointerDevice$FPSWatcher;->frameChars(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v10, 0xa

    cmp-long v10, v2, v10

    if-gez v10, :cond_2

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Elapsed =    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , FPS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v10, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    array-length v10, v10

    add-int/lit8 v7, v10, -0x1

    :goto_2
    if-lez v7, :cond_5

    iget-object v10, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    iget-object v11, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    add-int/lit8 v12, v7, -0x1

    aget-wide v11, v11, v12

    aput-wide v11, v10, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-wide/16 v10, 0x64

    cmp-long v10, v2, v10

    if-gez v10, :cond_3

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Elapsed =   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , FPS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-wide/16 v10, 0x3e8

    cmp-long v10, v2, v10

    if-gez v10, :cond_4

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Elapsed =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , FPS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Elapsed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , FPS = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    iget-object v10, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    aput-wide v8, v10, v13

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v1, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/webkit/PointerDevice$FPSWatcher;->mTimeStamps:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
