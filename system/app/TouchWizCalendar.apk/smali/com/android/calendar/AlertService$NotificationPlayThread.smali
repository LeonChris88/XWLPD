.class final Lcom/android/calendar/AlertService$NotificationPlayThread;
.super Ljava/lang/Thread;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationPlayThread"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mSoundUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/AlertService$NotificationPlayThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/calendar/AlertService$NotificationPlayThread;->mSoundUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v2, "AlertService"

    const-string v3, "notificationPlay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    new-instance v2, Lcom/android/calendar/AlertService$NotificationPlayThread$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/AlertService$NotificationPlayThread$1;-><init>(Lcom/android/calendar/AlertService$NotificationPlayThread;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v2, Lcom/android/calendar/AlertService$NotificationPlayThread$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/AlertService$NotificationPlayThread$2;-><init>(Lcom/android/calendar/AlertService$NotificationPlayThread;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v2, p0, Lcom/android/calendar/AlertService$NotificationPlayThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/AlertService$NotificationPlayThread;->mSoundUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AlertService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationPlay Fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method