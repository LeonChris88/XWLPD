.class abstract Landroid/speech/tts/TextToSpeechService$SpeechItem;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SpeechItem"
.end annotation


# instance fields
.field private final mCallingApp:Ljava/lang/String;

.field protected final mParams:Landroid/os/Bundle;

.field private mStarted:Z

.field private mStopped:Z

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallingApp:Ljava/lang/String;

    iput-object p3, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public dispatchOnDone()V
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnDone(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchOnError()V
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchOnStart()V
    .locals 3

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getCallingApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCallingApp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mCallingApp:Ljava/lang/String;

    return-object v0
.end method

.method protected getFloatParam(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0
.end method

.method protected getIntParam(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public getPan()F
    .locals 2

    const-string/jumbo v0, "pan"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getFloatParam(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getStreamType()I
    .locals 2

    const-string/jumbo v0, "streamType"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getIntParam(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mParams:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "utteranceId"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getStringParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 2

    const-string/jumbo v0, "volume"

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->getFloatParam(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected declared-synchronized isStopped()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract isValid()Z
.end method

.method public play()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStarted:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->playImpl()I

    move-result v0

    return v0
.end method

.method protected abstract playImpl()I
.end method

.method public stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItem;->mStopped:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stopImpl()V

    return-void
.end method

.method protected abstract stopImpl()V
.end method
