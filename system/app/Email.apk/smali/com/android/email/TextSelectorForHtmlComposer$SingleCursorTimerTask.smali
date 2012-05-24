.class public Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;
.super Ljava/util/TimerTask;
.source "TextSelectorForHtmlComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/TextSelectorForHtmlComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SingleCursorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/TextSelectorForHtmlComposer;


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v0, v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$100(Lcom/android/email/TextSelectorForHtmlComposer;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/TextSelectorForHtmlComposer$PastePopupMenu;->show()V

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$SingleCursorTimerTask;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-static {v0, v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$202(Lcom/android/email/TextSelectorForHtmlComposer;Z)Z

    return-void
.end method
