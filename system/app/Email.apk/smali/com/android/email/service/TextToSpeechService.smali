.class public Lcom/android/email/service/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# static fields
.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private alertOnCallMode:I

.field private drivingMode:I

.field private emailTTSMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private isOnCall:Z

.field private mServiceStartId:I

.field private mSpeechText:Ljava/lang/String;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    new-instance v0, Lcom/android/email/service/TextToSpeechService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/TextToSpeechService$1;-><init>(Lcom/android/email/service/TextToSpeechService;)V

    iput-object v0, p0, Lcom/android/email/service/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000()Landroid/speech/tts/TextToSpeech;
    .locals 1

    sget-object v0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/service/TextToSpeechService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->speakNewMessageInfo()V

    return-void
.end method

.method private makeTts()V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/email/service/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "New Message TTS"

    const-string v2, "########## TTS create failed !!!!! ##########"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_0
.end method

.method private speakNewMessageInfo()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "utteranceId"

    const-string v2, "New message tts ended"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    sget-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_1
    const-string v0, "New Message TTS"

    const-string v1, "########## Destroy called !!!!! ##########"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->drivingMode:I

    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_email_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->emailTTSMode:I

    iput p2, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    :try_start_0
    const-string v1, "TTS_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    if-ne v1, v4, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "New message received"

    iput-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->makeTts()V

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->emailTTSMode:I

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->drivingMode:I

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->makeTts()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    return-void
.end method
