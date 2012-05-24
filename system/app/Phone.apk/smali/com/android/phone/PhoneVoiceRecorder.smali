.class public Lcom/android/phone/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final PHONE_PATH:Ljava/lang/String;

.field public static final SD_PATH:Ljava/lang/String;

.field private static app:Lcom/android/phone/PhoneApp;

.field public static mStartRecordTime:J


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final RECORD_FAILED:I

.field private final RECORD_START:I

.field private final RECORD_STOP:I

.field private callAddress:Ljava/lang/String;

.field public isRecording:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

.field private mRecordingTimeInMiliSecond:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->DBG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/external_sd/Sounds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->SD_PATH:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/phone/CallCard;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PhoneVoiceRecorder"

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->LOG_TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->RECORD_START:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->RECORD_STOP:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->RECORD_FAILED:I

    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneVoiceRecorder$1;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "PhoneVoiceRecorder Create : "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneVoiceRecorder;->app:Lcom/android/phone/PhoneApp;

    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->app:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/PhoneVoiceRecorder;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecordingTimeInMiliSecond:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$600()Lcom/android/phone/PhoneApp;
    .locals 1

    sget-object v0, Lcom/android/phone/PhoneVoiceRecorder;->app:Lcom/android/phone/PhoneApp;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private checkAvailableStorage()Z
    .locals 6

    const-wide/32 v2, 0xa00000

    const-wide/32 v0, 0x10000000

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->getAvailableStorage()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/phone/PhoneVoiceRecorder;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PhoneVoiceRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableStorage. storageDirectory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    iput-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    return-void
.end method


# virtual methods
.method public checkMediaScannerRunning(Landroid/content/ContentResolver;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "checkMediaScannerRunning()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    move v0, v9

    goto :goto_0
.end method

.method public checkSDCardMount()Z
    .locals 3

    const-string v1, "PhoneVoiceRecorder"

    const-string v2, "checkMediaScannerRunning()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVoiceRecording()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    return v0
.end method

.method public startRecord()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord : callAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder;->checkMediaScannerRunning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "checkMediaScannerRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0e03bb

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkSDCardMount()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "checkSDCardMount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0e03bd

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->checkAvailableStorage()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "checkAvailableStorage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const v1, 0x7f0e03b8

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->start()V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneVoiceRecorder;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord fail : callindex == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneVoiceRecorder;->callAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder;->mRecorderThread:Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()V

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder;->init()V

    :cond_0
    return-void
.end method
