.class public Lcom/android/calendar/ImportExportVCalendar;
.super Ljava/lang/Object;
.source "ImportExportVCalendar.java"


# static fields
.field public static DEBUG:Z

.field private static mExternalSdCardIsFull:Z

.field private static mExternalSdCardMounted:Z

.field private static mExternalSdCardStoragePath:Ljava/lang/String;

.field private static mStorageListener:Landroid/os/storage/StorageEventListener;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private mExternalBackupDirectory:Ljava/io/File;

.field private mExternalVCalFileList:[Ljava/io/File;

.field private mFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/ImportExportVCalendar;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v0, ""

    sput-object v0, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    sput-boolean v1, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    sput-boolean v1, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    new-instance v0, Lcom/android/calendar/ImportExportVCalendar$1;

    invoke-direct {v0}, Lcom/android/calendar/ImportExportVCalendar$1;-><init>()V

    sput-object v0, Lcom/android/calendar/ImportExportVCalendar;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    iput-object v0, p0, Lcom/android/calendar/ImportExportVCalendar;->mTargetDirectory:Ljava/io/File;

    iput-object v0, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    return-void
.end method

.method public static checkStorageState(Landroid/app/Activity;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v8, ""

    sput-object v8, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    sput-boolean v12, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    sput-boolean v13, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v8, :cond_0

    const-string v8, "storage"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    sput-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v9, Lcom/android/calendar/ImportExportVCalendar;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    array-length v1, v6

    const-string v4, ""

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v5, v6, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_1

    sput-object v4, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    const-string v8, "mounted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sput-boolean v13, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    :goto_1
    new-instance v2, Landroid/os/StatFs;

    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-direct {v2, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    sput-boolean v12, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sput-boolean v12, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    goto :goto_1

    :cond_3
    sput-boolean v13, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    goto :goto_2

    :cond_4
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ImportExportVCalendar] checkStorageState : mExternalSdCardMounted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ImportExportVCalendar] checkStorageState : mExternalSdCardIsFull = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getVCalFilePathList(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/calendar/ImportExportVCalendar;->checkStorageState(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Backup/vCalendar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    new-instance v3, Lcom/android/calendar/ImportExportVCalendar$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/ImportExportVCalendar$2;-><init>(Lcom/android/calendar/ImportExportVCalendar;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    array-length v1, v2

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    if-eqz v2, :cond_6

    if-lez v1, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Backup/vCalendar/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_5
    const-string v2, "Calendar"

    const-string v3, "[ImportExportVCalendar] mExternalVCalFileList = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    return-object v2
.end method
