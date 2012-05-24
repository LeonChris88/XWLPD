.class public Lcom/android/email/activity/setup/snc/AccountSetupSncHelp;
.super Landroid/app/Activity;
.source "AccountSetupSncHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "AccountSetupSncHelp"

    const-string v1, "User pressed Back"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncHelp;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002c1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AccountSetupSncHelp"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncHelp;->setContentView(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncHelp;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "AccountSetupSncHelp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncHelp;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002c1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "AccountSetupSncHelp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "AccountSetupSncHelp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
