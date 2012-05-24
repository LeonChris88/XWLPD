.class Lcom/android/email/activity/setup/AccountSetupForSeven$6;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$500(Lcom/android/email/activity/setup/AccountSetupForSeven;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$402(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    return-void
.end method
