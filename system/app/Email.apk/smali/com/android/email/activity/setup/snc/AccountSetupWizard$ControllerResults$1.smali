.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;->getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$status:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;->val$status:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;->val$list:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;->this$1:Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;->val$status:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;->val$list:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->access$900(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method
