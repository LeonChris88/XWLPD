.class Lcom/android/phone/Ringer$HeadsetRingtonePlayer;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetRingtonePlayer"
.end annotation


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;

.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v1, "Ringer"

    const-string v2, "HeadsetRingtonePlayer..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x9

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HeadsetRingtonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method public stopRingtone()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method
