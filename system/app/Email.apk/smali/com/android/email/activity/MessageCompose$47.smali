.class Lcom/android/email/activity/MessageCompose$47;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$qrString:[Ljava/lang/String;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, p2}, Lcom/android/email/activity/MessageCompose;->access$11802(Lcom/android/email/activity/MessageCompose;I)I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$47;->val$qrString:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$11800(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$47;->val$qrString:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$11800(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    aget-object v1, v1, v2

    sget-object v2, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    goto :goto_0
.end method
