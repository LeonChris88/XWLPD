.class Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DuplicateCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckHost:Ljava/lang/String;

.field private final mCheckLogin:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDomain:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckLogin:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mCheckHost:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 6

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$700(Lcom/android/email/activity/setup/AccountSetupBasics;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "DuplicateAccountDialogFragment"

    invoke-virtual {v1, v3, v4}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    goto :goto_0

    :cond_1
    const-string v3, "mopera.net"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mDomain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v4

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-string v3, "back"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method
