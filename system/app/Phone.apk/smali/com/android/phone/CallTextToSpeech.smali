.class public Lcom/android/phone/CallTextToSpeech;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTextToSpeech$1;,
        Lcom/android/phone/CallTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static mInstance:Lcom/android/phone/CallTextToSpeech;


# instance fields
.field private DEFAULT_TTS_STREAM:Ljava/lang/String;

.field private DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

.field private final INVALID_VOLUME_LEVEL:I

.field private IsTtsInitiated:Z

.field private NewVoicemail:Ljava/lang/String;

.field private incomingCallInfo:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mOriginNotiVolume:I

.field private mOriginRingVolume:I

.field private mOriginTtsVolume:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsId:I

.field private mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->INVALID_VOLUME_LEVEL:I

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    iput v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    iput v2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->incomingCallInfo:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iput p2, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    new-instance v1, Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, p0, v3}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-boolean v1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/CallTextToSpeech;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallTextToSpeech;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallTextToSpeech;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->speakTts(I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/phone/CallTextToSpeech;
    .locals 2

    const-class v1, Lcom/android/phone/CallTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    :cond_0
    new-instance v0, Lcom/android/phone/CallTextToSpeech;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    sget-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resetVolumeForTts(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    :cond_1
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v3, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setVolumeForTts(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/16 v4, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginTtsVolume:I

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-le v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/phone/CallTextToSpeech;->mOriginRingVolume:I

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-gt v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/CallTextToSpeech;->mOriginNotiVolume:I

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private speakTts(I)V
    .locals 11

    const v10, 0x7f0e029f

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Default locale is null, this is problem"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    if-eq v5, v9, :cond_3

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    :cond_3
    :goto_2
    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "utteranceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS ended : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v6, "TTS_IDLE : callerinfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_2

    :cond_6
    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v8

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    const/4 v0, 0x0

    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "utteranceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS ended : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    sget-object v5, Lcom/android/phone/CallTextToSpeech;->LOG_TAG:Ljava/lang/String;

    const-string v6, "TTS_DURING_CALL : callerinfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    goto/16 :goto_0

    :cond_7
    new-array v4, v9, [Ljava/lang/String;

    aput-object v1, v4, v8

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v5, v6, v4}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v5}, Lcom/android/phone/CallTextToSpeech;->setVolumeForTts(I)V

    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM_DURING_CALL:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v5, "utteranceId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS ended : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v6, 0x7f0e019f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    invoke-virtual {v5, v6, v8, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v5, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->mTtsListener:Lcom/android/phone/CallTextToSpeech$TtsListener;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :cond_8
    const-string v5, "streamType"

    iget-object v6, p0, Lcom/android/phone/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IsSpeakingTts()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallTextToSpeech;->mInstance:Lcom/android/phone/CallTextToSpeech;

    :cond_0
    return-void
.end method

.method public stopTts()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget v0, p0, Lcom/android/phone/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallTextToSpeech;->resetVolumeForTts(I)V

    invoke-virtual {p0}, Lcom/android/phone/CallTextToSpeech;->destroy()V

    :cond_0
    return-void
.end method
