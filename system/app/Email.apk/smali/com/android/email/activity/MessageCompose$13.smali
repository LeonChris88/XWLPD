.class Lcom/android/email/activity/MessageCompose$13;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
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

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->isSelectedLastButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/bubblelayout/BubbleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/bubblelayout/BubbleLayout;->deSelectLastButton()V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AddressTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AddressTextView;->setCursorVisible(Z)V

    goto :goto_0
.end method
