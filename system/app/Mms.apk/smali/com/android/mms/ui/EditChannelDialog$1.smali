.class Lcom/android/mms/ui/EditChannelDialog$1;
.super Ljava/lang/Object;
.source "EditChannelDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditChannelDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditChannelDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditChannelDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EditChannelDialog$1;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog$1;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    iget-object v1, p0, Lcom/android/mms/ui/EditChannelDialog$1;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/EditChannelDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/EditChannelDialog;->access$002(Lcom/android/mms/ui/EditChannelDialog;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog$1;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    invoke-static {v0}, Lcom/android/mms/ui/EditChannelDialog;->access$000(Lcom/android/mms/ui/EditChannelDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/EditChannelDialog$1;->this$0:Lcom/android/mms/ui/EditChannelDialog;

    invoke-static {v0}, Lcom/android/mms/ui/EditChannelDialog;->access$000(Lcom/android/mms/ui/EditChannelDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
