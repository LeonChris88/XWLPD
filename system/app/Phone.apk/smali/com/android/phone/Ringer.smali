.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$HeadsetRingtonePlayer;,
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/Ringer;


# instance fields
.field private final INIT_VOLUME:I

.field private final INIT_VOLUME_DELAY:I

.field private final RETURN_ORIGIN_VOLUME:I

.field mAudioManager:Landroid/media/AudioManager;

.field private mCallMotion:Lcom/android/phone/CallMotion;

.field private mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

.field private mOriginRingtoneVolume:I

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field mRingtone:Landroid/media/Ringtone;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/Ringer;->RETURN_ORIGIN_VOLUME:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME_DELAY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/Ringer;->INIT_VOLUME:I

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    iput-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/phone/Ringer;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/phone/Ringer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/phone/Ringer;)Lcom/android/phone/CallTextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/Ringer;Lcom/android/phone/CallTextToSpeech;)Lcom/android/phone/CallTextToSpeech;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Ringer;->mCallTextToSpeech:Lcom/android/phone/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/Ringer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4

    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRingtonePlaying()Z
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVibrating()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeLooper()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    new-instance v0, Lcom/android/phone/Ringer$1;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method initRingerContextForIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    return-void
.end method

.method isRinging()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isTTSenabled()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method isValidRingtoneURI(Landroid/net/Uri;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v7, :cond_2

    const-string v0, "Ringer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidRingtoneURI : Invalid URI - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v7
.end method

.method resetRingerContextFromIMS(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextForVOIP..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    return-void
.end method

.method ring()V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const/16 v3, 0xff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_9

    :goto_1
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingHandler: MOTION_OVERTURN is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/phone/CallMotion;

    iget-object v2, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/phone/CallMotion;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->startMotionCatch()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    new-instance v1, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- starting vibrator..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "skipping ring because volume is zero"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "Play Headset ringtone.."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_6
    new-instance v1, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->start()V

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-void

    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x1

    const v3, 0xffffff

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/phone/Ringer;->isTTSenabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    :goto_3
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_c
    :try_start_4
    iget-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_e

    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delaying ring by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method shouldVibrate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    return v0
.end method

.method stopRing()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/phone/Ringer;->mOriginRingtoneVolume:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    :cond_3
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "- stopRing: cleaning up headsetRingtone thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    :cond_5
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    invoke-virtual {v1}, Lcom/android/phone/CallMotion;->stopMotionCatch()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mCallMotion:Lcom/android/phone/CallMotion;

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method updateHeadsetRingtoneState()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer$HeadsetRingtonePlayer;->stopRingtone()V

    iput-object v2, p0, Lcom/android/phone/Ringer;->mHeadsetRingtoneThread:Lcom/android/phone/Ringer$HeadsetRingtonePlayer;

    goto :goto_0
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    return-void
.end method
