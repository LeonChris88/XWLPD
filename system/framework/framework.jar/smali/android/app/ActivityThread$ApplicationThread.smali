.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"

.field private static final TWO_COUNT_COLUMNS_DB:Ljava/lang/String; = "%21s %8d %21s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 52

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v28, v44, v46

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v24, v44, v46

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v26, v44, v46

    new-instance v23, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static/range {v23 .. v23}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v23

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v17, v44, v46

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v15, v44, v46

    sub-long v13, v17, v15

    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v40

    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v42

    const-class v44, Landroid/app/ContextImpl;

    invoke-static/range {v44 .. v44}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v7

    const-class v44, Landroid/app/Activity;

    invoke-static/range {v44 .. v44}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v5

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v20

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v21

    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v11

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v12

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v10

    const-class v44, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static/range {v44 .. v44}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v30

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getHeapAllocatedSize()J

    move-result-wide v44

    const-wide/16 v46, 0x400

    div-long v37, v44, v46

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v39

    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    :goto_1
    const/16 v44, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v44

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v44, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v44, v28, v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v44, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v44, v24, v13

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string v44, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-long v44, v26, v15

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v44, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v44, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v44, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v45, v0

    add-int v44, v44, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v44, v0

    move/from16 v0, v44

    div-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v44, v0

    move/from16 v0, v44

    div-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v44, v0

    move/from16 v0, v44

    div-int/lit16 v0, v0, 0x400

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v22

    move/from16 v1, v44

    if-ge v0, v1, :cond_3

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v44, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    :cond_2
    const-string/jumbo v35, "unknown"

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    :cond_4
    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Shared"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "Private"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "Heap"

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, "Heap"

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, "Heap"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "Pss"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Dirty"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "Dirty"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "Size"

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, "Alloc"

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, "Free"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, "------"

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, "------"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Native"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x5

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x6

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Dalvik"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v33, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v34, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v32, v0

    const/16 v22, 0x0

    :goto_3
    const/16 v44, 0x9

    move/from16 v0, v22

    move/from16 v1, v44

    if-ge v0, v1, :cond_5

    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, ""

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v44

    sub-int v33, v33, v44

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v44

    sub-int v34, v34, v44

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v44

    sub-int v32, v32, v44

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    :cond_5
    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Unknown"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x5

    const-string v47, ""

    aput-object v47, v45, v46

    const/16 v46, 0x6

    const-string v47, ""

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v45, 0x7

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "TOTAL"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v47

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x4

    add-long v47, v28, v17

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x5

    add-long v47, v24, v13

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x6

    add-long v47, v26, v15

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v44, " Objects"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v44, "%21s %8d %21s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Views:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "ViewRootImpl:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%21s %8d %21s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "AppContexts:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Activities:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%21s %8d %21s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Assets:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "AssetManagers:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%21s %8d %21s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Local Binders:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Proxy Binders:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%21s %8d"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "Death Recipients:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%21s %8d"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "OpenSSL Sockets:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v44, " SQL"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v44, "%21s %8d %21s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "heap:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "MEMORY_USED:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v47, v0

    move/from16 v0, v47

    div-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, "%21s %8d %21s %8d"

    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string v47, "PAGECACHE_OVERFLOW:"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflo:I

    move/from16 v47, v0

    move/from16 v0, v47

    div-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "MALLOC_SIZE:"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    move-object/from16 v0, v39

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v47, v0

    move/from16 v0, v47

    div-int/lit16 v0, v0, 0x400

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    const-string v44, " DATABASES"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v44, "  %8s %8s %14s %14s  %s"

    const/16 v45, 0x5

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const-string/jumbo v47, "pgsz"

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const-string v47, "dbsz"

    aput-object v47, v45, v46

    const/16 v46, 0x2

    const-string v47, "Lookaside(b)"

    aput-object v47, v45, v46

    const/16 v46, 0x3

    const-string v47, "cache"

    aput-object v47, v45, v46

    const/16 v46, 0x4

    const-string v47, "Dbname"

    aput-object v47, v45, v46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v4, :cond_9

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    const-string v45, "  %8s %8s %14s %14s  %s"

    const/16 v44, 0x5

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x0

    cmp-long v44, v48, v50

    if-lez v44, :cond_6

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v44

    :goto_5
    aput-object v44, v46, v47

    const/16 v47, 0x1

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v48, v0

    const-wide/16 v50, 0x0

    cmp-long v44, v48, v50

    if-lez v44, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v44

    :goto_6
    aput-object v44, v46, v47

    const/16 v47, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v44, v0

    if-lez v44, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v44

    :goto_7
    aput-object v44, v46, v47

    const/16 v44, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v47, v0

    aput-object v47, v46, v44

    const/16 v44, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v47, v0

    aput-object v47, v46, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    :cond_6
    const-string v44, " "

    goto :goto_5

    :cond_7
    const-string v44, " "

    goto :goto_6

    :cond_8
    const-string v44, " "

    goto :goto_7

    :cond_9
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v44, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v44, " Asset Allocations"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p15, :cond_0

    invoke-static/range {p15 .. p15}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    :cond_0
    move-object/from16 v0, p16

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    iput-object p9, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    iput p10, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    iput-boolean p11, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public clearDnsCache()V
    .locals 0

    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x88

    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->dumpGfxInfo(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    iput-object p2, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iput-object p3, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x87

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-direct {p0, v1, p2, p3, p4}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7b

    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0

    invoke-static {p1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    return-void
.end method

.method public processInBackground()V
    .locals 3

    const/16 v2, 0x78

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 4

    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ProfilerControlData;-><init>()V

    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7f

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDelayJITCompilation(J)V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldalvik/system/VMRuntime;->pauseJitCompilation(J)V

    return-void
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    iput-boolean p10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    iput-boolean p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    move/from16 v0, p14

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x66

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v1, p1, v0, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/16 v0, 0x65

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8

    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v7}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;)V

    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    iput-object p3, v0, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface/range {p1 .. p7}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6b

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x89

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void

    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x69

    :goto_0
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    return-void
.end method
