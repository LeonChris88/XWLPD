.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupIncomingForSevenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private showDialog(I)V
    .locals 5

    const v4, 0x7f08045b

    const v3, 0x7f0801cb

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080435

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08049d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08049e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$4;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$4;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$3;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08049f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$6;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$6;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$5;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$5;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v2, 0x7f080437

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$7;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$7;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$8;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$8;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showPopupReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$300(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener$9;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$402(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$502(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$500(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$302(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Z7App"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 8

    const-string v6, "event-id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v6, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$4;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v1}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-static {v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$200(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)I

    move-result v6

    if-ne v0, v6, :cond_0

    const-string v6, "obj"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-virtual {v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "AccountSetupIncomingForSevenFragment"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_1

    const/16 v6, 0x2712

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto :goto_0

    :cond_1
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_LOGIN_FAILED_CE:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "obj"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_TRIALS_NOT_ACCEPTED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_3

    const/16 v6, 0x2714

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto :goto_0

    :cond_3
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_LIMIT_EXCEEDED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/16 v6, 0x2715

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_5

    const/16 v6, 0x2713

    invoke-direct {p0, v6}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showDialog(I)V

    goto/16 :goto_0

    :cond_5
    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "obj"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v7, 0x7f08049a

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    const v7, 0x7f08049b

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-direct {p0, v4, v2}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
