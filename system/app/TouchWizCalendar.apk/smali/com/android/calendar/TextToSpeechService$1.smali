.class Lcom/android/calendar/TextToSpeechService$1;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/TextToSpeechService;


# direct methods
.method constructor <init>(Lcom/android/calendar/TextToSpeechService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/TextToSpeechService$1;->this$0:Lcom/android/calendar/TextToSpeechService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2

    invoke-static {}, Lcom/android/calendar/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/calendar/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/calendar/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/TextToSpeechService$1;->this$0:Lcom/android/calendar/TextToSpeechService;

    invoke-static {v0}, Lcom/android/calendar/TextToSpeechService;->access$100(Lcom/android/calendar/TextToSpeechService;)V

    return-void
.end method
