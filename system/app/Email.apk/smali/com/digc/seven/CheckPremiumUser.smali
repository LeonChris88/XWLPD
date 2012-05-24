.class public Lcom/digc/seven/CheckPremiumUser;
.super Lcom/seven/Z7/app/Z7AppBaseActivity;
.source "CheckPremiumUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digc/seven/CheckPremiumUser$2;,
        Lcom/digc/seven/CheckPremiumUser$MyListener;
    }
.end annotation


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private isActionForAddAccount:Z

.field private mListener:Lcom/digc/seven/CheckPremiumUser$MyListener;

.field private selectedProvisionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/digc/seven/CheckPremiumUser;)V
    .locals 0

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/digc/seven/CheckPremiumUser;)V
    .locals 0

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->stopConnectionTimeOut()V

    return-void
.end method

.method static synthetic access$202(Lcom/digc/seven/CheckPremiumUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/digc/seven/CheckPremiumUser;->selectedProvisionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/digc/seven/CheckPremiumUser;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/digc/seven/CheckPremiumUser;->resultForIsPremiumUser(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/digc/seven/CheckPremiumUser;)V
    .locals 0

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->changePrefToPremiumConnector()V

    return-void
.end method

.method private resultForIsPremiumUser(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/digc/seven/CheckPremiumUser;->isActionForAddAccount:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/digc/seven/CheckPremiumUser;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "extra_selected_provision_name"

    iget-object v2, p0, Lcom/digc/seven/CheckPremiumUser;->selectedProvisionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/digc/seven/CheckPremiumUser;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/digc/seven/CheckPremiumUser;->cls:Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected negativeActionForDialog(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/digc/seven/CheckPremiumUser;->requestWindowFeature(I)Z

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/digc/seven/SevenSyncProvider;->checkSevenApkVer(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.seven.action.ADD_ACCOUNT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/digc/seven/CheckPremiumUser;->isActionForAddAccount:Z

    :goto_1
    new-instance v1, Lcom/digc/seven/CheckPremiumUser$MyListener;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/digc/seven/CheckPremiumUser$MyListener;-><init>(Lcom/digc/seven/CheckPremiumUser;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/digc/seven/CheckPremiumUser;->mListener:Lcom/digc/seven/CheckPremiumUser$MyListener;

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->finish()V

    goto :goto_0

    :cond_2
    const-string v1, "extra_next_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lcom/digc/seven/CheckPremiumUser;->cls:Ljava/lang/Class;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/digc/seven/CheckPremiumUser;->stopConnectionTimeOut()V

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onResume()V

    return-void
.end method
