.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->checkDuplicationAccount()V
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

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$402(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    return-void
.end method
