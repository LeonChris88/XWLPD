.class Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Lcom/android/email/activity/setup/AccountSetupForSeven$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    return-void
.end method


# virtual methods
.method public setupAccountCallback(Landroid/os/Bundle;)V
    .locals 3

    const-string v2, "account_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "account_id_seven"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$ControllerResult;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-static {v2, v0, v1}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$2000(Lcom/android/email/activity/setup/AccountSetupForSeven;II)V

    return-void
.end method
