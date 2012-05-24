.class public Lcom/android/email/activity/MessageFileViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageFileViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;
    }
.end annotation


# static fields
.field public static EML_ACCOUNTID:I

.field private static sFragmentCount:I


# instance fields
.field private mFileEmailUri:Landroid/net/Uri;

.field private mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

.field private final mLock:Ljava/lang/Object;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7ffffffe

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->EML_ACCOUNTID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageFileViewFragment;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method


# virtual methods
.method public clearContent()V
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isMessageSpecified()Z
    .locals 2

    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->deleteAttachmentMessages()V

    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    return-void
.end method

.method public openMessage(Landroid/net/Uri;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-super {p0, v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800be

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    new-instance v0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;-><init>(Lcom/android/email/activity/MessageFileViewFragment;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_0

    const v0, 0x7f0800bc

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
