.class Lcom/android/phone/CallTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallTextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallTextToSpeech;Lcom/android/phone/CallTextToSpeech$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallTextToSpeech$TtsListener;-><init>(Lcom/android/phone/CallTextToSpeech;)V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/CallTextToSpeech;->access$102(Lcom/android/phone/CallTextToSpeech;Z)Z

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    invoke-static {v0}, Lcom/android/phone/CallTextToSpeech;->access$200(Lcom/android/phone/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    iget-object v1, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    invoke-static {v1}, Lcom/android/phone/CallTextToSpeech;->access$300(Lcom/android/phone/CallTextToSpeech;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/CallTextToSpeech;->access$400(Lcom/android/phone/CallTextToSpeech;I)V

    :cond_0
    return-void
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CallTextToSpeech$TtsListener;->this$0:Lcom/android/phone/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/phone/CallTextToSpeech;->stopTts()V

    return-void
.end method
