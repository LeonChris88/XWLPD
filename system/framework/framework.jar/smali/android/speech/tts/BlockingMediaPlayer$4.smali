.class Landroid/speech/tts/BlockingMediaPlayer$4;
.super Ljava/lang/Object;
.source "BlockingMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/BlockingMediaPlayer;->startPlaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/BlockingMediaPlayer;


# direct methods
.method constructor <init>(Landroid/speech/tts/BlockingMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/BlockingMediaPlayer$4;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer$4;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/speech/tts/BlockingMediaPlayer;->access$302(Landroid/speech/tts/BlockingMediaPlayer;Z)Z

    iget-object v0, p0, Landroid/speech/tts/BlockingMediaPlayer$4;->this$0:Landroid/speech/tts/BlockingMediaPlayer;

    invoke-static {v0}, Landroid/speech/tts/BlockingMediaPlayer;->access$200(Landroid/speech/tts/BlockingMediaPlayer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
