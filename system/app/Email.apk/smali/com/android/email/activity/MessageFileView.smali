.class public Lcom/android/email/activity/MessageFileView;
.super Lcom/android/email/activity/MessageViewBase;
.source "MessageFileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageFileView$LoadFilenameTask;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mFileEmailUri:Landroid/net/Uri;

.field private mFragment:Lcom/android/email/activity/MessageFileViewFragment;

.field private mLoadFilenameTask:Lcom/android/email/activity/MessageFileView$LoadFilenameTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageFileView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageFileView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/MessageFileView;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f08003e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/MessageFileView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected getAccountId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getFragment()Lcom/android/email/activity/MessageFileViewFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageFileView;->mFragment:Lcom/android/email/activity/MessageFileViewFragment;

    return-object v0
.end method

.method protected bridge synthetic getFragment()Lcom/android/email/activity/MessageViewFragmentBase;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getFragment()Lcom/android/email/activity/MessageFileViewFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f040079

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageFileView;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileView;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1001af

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageFileViewFragment;

    iput-object v1, p0, Lcom/android/email/activity/MessageFileView;->mFragment:Lcom/android/email/activity/MessageFileViewFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileView;->mFragment:Lcom/android/email/activity/MessageFileViewFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/MessageFileViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragmentBase$Callback;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageFileView;->mFileEmailUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileView;->mFileEmailUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    const-string v1, "Email"

    const-string v2, "Insufficient intent parameter.  Closing..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->getFragment()Lcom/android/email/activity/MessageFileViewFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageFileView;->mFileEmailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageFileViewFragment;->openMessage(Landroid/net/Uri;)V

    new-instance v1, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageFileView;->mFileEmailUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;-><init>(Lcom/android/email/activity/MessageFileView;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageFileView;->mLoadFilenameTask:Lcom/android/email/activity/MessageFileView$LoadFilenameTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileView;->mLoadFilenameTask:Lcom/android/email/activity/MessageFileView$LoadFilenameTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onDestroy()V

    iget-object v0, p0, Lcom/android/email/activity/MessageFileView;->mLoadFilenameTask:Lcom/android/email/activity/MessageFileView$LoadFilenameTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageFileView;->mLoadFilenameTask:Lcom/android/email/activity/MessageFileView$LoadFilenameTask;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileView;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onResume()V

    return-void
.end method
