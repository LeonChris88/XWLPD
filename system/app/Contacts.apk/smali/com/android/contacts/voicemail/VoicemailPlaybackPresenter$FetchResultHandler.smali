.class Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;
.super Landroid/database/ContentObserver;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchResultHandler"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getTimeoutRunnable()Ljava/lang/Runnable;
    .locals 0

    return-object p0
.end method

.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$500(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;-><init>(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mResultStillPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;->access$100(Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter;)Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setFetchContentTimeout()V

    :cond_0
    return-void
.end method
