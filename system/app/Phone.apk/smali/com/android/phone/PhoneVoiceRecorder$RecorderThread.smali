.class Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneVoiceRecorder;Lcom/android/phone/PhoneVoiceRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/PhoneVoiceRecorder;)V

    return-void
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/16 v1, 0xa

    if-ge p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createFilePath()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PhoneVoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    return-object v1
.end method

.method private isPhoneNumberChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 0

    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".amr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createNewFileName()Ljava/lang/String;
    .locals 5

    const-string v3, "PhoneVoiceRecorder"

    const-string v4, "createNewFileName()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$800(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v3
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneVoiceRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo mr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "onInfo - MediaRecorder.MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->stopRecording()V

    :cond_1
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PhoneVoiceRecorder"

    const-string v1, "releaseMediaRecorder..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneVoiceRecorder;->access$402(Lcom/android/phone/PhoneVoiceRecorder;J)J

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "PhoneVoiceRecorder"

    const-string v4, "run"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v3, v4}, Lcom/android/phone/PhoneVoiceRecorder;->access$102(Lcom/android/phone/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->createFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0x2fa8

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$402(Lcom/android/phone/PhoneVoiceRecorder;J)J

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    iput-boolean v6, v3, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/CallCard;->visibleRecInfoView()V

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v4, v7, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v3, "PhoneVoiceRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    iget-object v5, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e03b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v3, v4, v7, v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public stopRecording()V
    .locals 15

    const-string v9, "PhoneVoiceRecorder"

    const-string v10, "stopRecording"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$100(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->stop()V

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/phone/PhoneVoiceRecorder;->isRecording:Z

    invoke-virtual {p0}, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v1, v9

    const-wide/16 v9, 0x3e8

    cmp-long v9, v1, v9

    if-gez v9, :cond_0

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFilePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "title"

    iget-object v10, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "mime_type"

    const-string v10, "audio/amr"

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "date_modified"

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "is_sound"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x65

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v9, "PhoneVoiceRecorder"

    const-string v10, "Exception"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$500(Lcom/android/phone/PhoneVoiceRecorder;)Lcom/android/phone/CallCard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/CallCard;->invisibleRecInfoView()V

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->access$600()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->updateInCallScreen()V

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v13}, Lcom/android/phone/PhoneVoiceRecorder;->access$300(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e03b6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v9, p0, Lcom/android/phone/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-static {v9}, Lcom/android/phone/PhoneVoiceRecorder;->access$200(Lcom/android/phone/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
