.class Lcom/android/email/service/TextToSpeechService$1;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/TextToSpeechService;


# direct methods
.method constructor <init>(Lcom/android/email/service/TextToSpeechService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-virtual {v4}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_lang"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-virtual {v4}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_country"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-virtual {v4}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_variant"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/email/service/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/email/service/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/android/email/service/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/email/service/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :goto_1
    iget-object v4, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-static {v4}, Lcom/android/email/service/TextToSpeechService;->access$100(Lcom/android/email/service/TextToSpeechService;)V

    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/email/service/TextToSpeechService;->access$000()Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    goto :goto_1
.end method
