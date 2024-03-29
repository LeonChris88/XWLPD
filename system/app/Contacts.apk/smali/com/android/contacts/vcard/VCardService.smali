.class public Lcom/android/contacts/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/VCardService$MyBinder;,
        Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

.field private mCurrentJobId:I

.field private mErrorReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExtensionsToConsider:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIndexMaximum:I

.field private mFileIndexMinimum:I

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/contacts/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private clearCache()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->fileList()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    const-string v4, "import_tmp_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "VCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/VCardService;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    const/4 v4, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    :goto_0
    if-lez v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v11, v11, 0xa

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%s%0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "d%s"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x8

    if-gt v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_2

    :cond_1
    const-string v12, "VCardService"

    const-string v13, "This code does not allow any long file name."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v12, 0x7f0a00e3

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "%s.%s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    const-string v12, "VCardService"

    const-string v13, "File name becomes too long."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :goto_1
    return-object v12

    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    if-gt v5, v12, :cond_7

    const/4 v7, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "%s/%s.%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    aput-object v10, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v12, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v7, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    const-string v12, "%s/%s.%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    const-string v12, "VCardService"

    const-string v13, "Reached vCard number limit. Maybe there are too many vCard in the storage"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v12, 0x7f0a00e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private initExporterParams()V
    .locals 9

    const v7, 0x7f0a0001

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    const v7, 0x7f0a0002

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    const v7, 0x7f0a0003

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    const v7, 0x7f0a0004

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    iget-object v8, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v7, 0x7f0a0005

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v7, 0x7f0b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    const v7, 0x7f0b0001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/vcard/ProcessorBase;

    invoke-virtual {v3}, Lcom/android/contacts/vcard/ProcessorBase;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    const-string v4, "VCardService"

    const-string v5, "Found unfinished job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "VCardService"

    const-string v5, "MediaScanner update is in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v4, "VCardService"

    const-string v5, "No unfinished job. Stop this service."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "VCardService"

    const-string v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/vcard/CancelRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z

    invoke-virtual {v2}, Lcom/android/contacts/vcard/ProcessorBase;->getType()I

    move-result v3

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    check-cast v2, Lcom/android/contacts/vcard/ExportProcessor;

    invoke-virtual {v2}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VCardService"

    const-string v5, "Cancel reservation for the path %s if appropriate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "VCardService"

    const-string v5, "Not reserved."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v4, "VCardService"

    const-string v5, "Tried to remove unknown job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/contacts/vcard/ExportProcessor;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/contacts/vcard/ExportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VCardService"

    const-string v2, "The path %s is already reserved. Reject export request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, p1, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)V

    :cond_2
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    if-eqz p2, :cond_0

    :try_start_2
    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/vcard/ProcessorBase;

    if-nez v0, :cond_0

    const-string v2, "VCardService"

    const-string v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/android/contacts/vcard/ExportProcessor;

    if-nez v2, :cond_1

    const-string v2, "VCardService"

    const-string v3, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    check-cast v0, Lcom/android/contacts/vcard/ExportProcessor;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VCardService"

    const-string v1, "Tried to remove unknown job (id: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/vcard/VCardImportExportListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/vcard/ImportRequest;

    new-instance v3, Lcom/android/contacts/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/android/contacts/vcard/ImportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, v1, v3, v0}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)V

    :cond_0
    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized handleRequestAvailableExportDestination(Landroid/os/Messenger;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x5

    const v5, 0x7f0d0012

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "VCardService"

    const-string v4, "Failed to send reply for available export destination request."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/vcard/VCardService;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->initExporterParams()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->clearCache()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setTargetDirectory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    return-void
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VCardService"

    const-string v2, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/vcard/VCardService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
