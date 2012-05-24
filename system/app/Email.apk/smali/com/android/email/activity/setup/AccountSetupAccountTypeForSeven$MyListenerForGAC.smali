.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupAccountTypeForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListenerForGAC"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 9

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getSystemCallbackType()Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$11;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v3, Lcom/seven/util/Z7Result;

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getResultCode()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/seven/util/Z7Result;-><init>(I)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1700(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    invoke-static {v3}, Lcom/seven/util/Z7Result;->Z7_SUCCEEDED(Lcom/seven/util/Z7Result;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getObject()Ljava/lang/Object;

    move-result-object v4

    new-instance v2, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;

    check-cast v4, Lcom/seven/util/IntArrayMap;

    invoke-direct {v2, v4}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;-><init>(Lcom/seven/util/IntArrayMap;)V

    invoke-virtual {v2}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->isImScope()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2000(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v6, 0x2713

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    sget-object v5, Lcom/seven/util/Z7Result;->Z7_E_TIMEOUT:Lcom/seven/util/Z7Result;

    invoke-virtual {v3, v5}, Lcom/seven/util/Z7Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const-string v6, ""

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SEND_TIMEDOUT:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    invoke-static {v7}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$1;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$1;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V

    invoke-static {v5, v6, v7, v8}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_NO_AVAILABLE_CONNECTORS:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v7, 0x7f0804af

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v8, 0x7f0804b0

    invoke-virtual {v7, v8}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$2;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V

    invoke-static {v5, v6, v7, v8}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2400(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasErrorText()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const-string v6, ""

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$3;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V

    invoke-static {v5, v6, v1, v7}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasErrorCode()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    const v5, 0x7f080438

    invoke-static {v5}, Lcom/seven/Z7/shared/ANSharedCommon;->fetchString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
