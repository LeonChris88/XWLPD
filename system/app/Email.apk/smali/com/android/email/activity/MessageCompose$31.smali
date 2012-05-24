.class Lcom/android/email/activity/MessageCompose$31;
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

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$LocationSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    const/16 v2, 0x1389

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
