.class Lcom/android/email/activity/MessageCompose$52;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onSpellCheckAddWord(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->selectLastTouchText()Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose;->suggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v1, v0, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$52;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearSelection()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$12902(J)J

    goto :goto_0
.end method
