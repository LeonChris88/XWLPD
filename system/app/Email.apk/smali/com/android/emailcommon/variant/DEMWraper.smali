.class public Lcom/android/emailcommon/variant/DEMWraper;
.super Ljava/lang/Object;
.source "DEMWraper.java"


# static fields
.field private static sInstance:Lcom/android/emailcommon/variant/DEMWraper;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDEM:Landroid/dirEncryption/DirEncryptionManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    iput-object p1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;
    .locals 1

    sget-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/emailcommon/variant/DEMWraper;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/variant/DEMWraper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    :cond_0
    sget-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    return-object v0
.end method

.method private isSDMounted()Z
    .locals 11

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    const-string v10, "storage"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    iput-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    array-length v3, v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v6, v7, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_1

    const-string v9, "usb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "removed"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_1
    if-nez v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v6

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    const-string v9, "mounted"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    return v9

    :cond_6
    const/4 v9, 0x0

    goto :goto_2
.end method


# virtual methods
.method public checkSDStatus()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/emailcommon/variant/DEMWraper;->isSDMounted()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method public isDeviceEncrypted()Z
    .locals 3

    iget-object v1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getStorageEncryptionStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEncryptionSupported()Z
    .locals 2

    iget-object v1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getStorageEncryptionStatus()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
