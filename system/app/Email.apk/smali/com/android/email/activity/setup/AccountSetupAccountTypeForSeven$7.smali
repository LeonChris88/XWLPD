.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$402(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0
.end method
