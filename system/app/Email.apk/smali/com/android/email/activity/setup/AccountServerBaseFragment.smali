.class public abstract Lcom/android/email/activity/setup/AccountServerBaseFragment;
.super Landroid/app/Fragment;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;,
        Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;
    }
.end annotation


# static fields
.field public static mProceedButtonPressed:Z

.field protected static sDefaultUri:Ljava/net/URI;

.field public static sSetupModeArgs:Landroid/os/Bundle;


# instance fields
.field mBaseScheme:Ljava/lang/String;

.field protected mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

.field protected mContext:Landroid/content/Context;

.field mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field protected mLoadedUri:Ljava/net/URI;

.field public mProceedButton:Landroid/view/MenuItem;

.field protected mSettingsMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const-string v0, "protocol"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getSettingsModeArgs()Landroid/os/Bundle;
    .locals 4

    const-class v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    const-string v2, "AccountServerBaseFragment.settings"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public enableNextButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    invoke-interface {v0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onEnableProceedButtons(Z)V

    return-void
.end method

.method public haveSettingsChanged()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v7, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    :goto_1
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v6, v5

    :cond_1
    return v6

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(I)V
    .locals 2

    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100029
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccountServerBaseFragment.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    :cond_0
    sput-boolean v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public abstract onNext()V
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100029
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract saveSettingsAfterEdit()V
.end method

.method public abstract saveSettingsAfterSetup()V
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;JLjava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
