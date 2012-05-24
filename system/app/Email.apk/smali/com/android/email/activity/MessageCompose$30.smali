.class Lcom/android/email/activity/MessageCompose$30;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/email/activity/FindLocationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.email.intent.extra.is_from_map"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$10300(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_0

    const-string v1, "com.android.email.intent.extra.is_from_map"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$30;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$10300(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
