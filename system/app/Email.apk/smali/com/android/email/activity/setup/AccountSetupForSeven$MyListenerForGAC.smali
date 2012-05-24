.class Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListenerForGAC"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 9

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getSystemCallbackType()Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    const-string v5, "AccountSetupForSeven>>MyListenerForGAC>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCallback() ---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/email/activity/setup/AccountSetupForSeven$7;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1300(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    new-instance v3, Lcom/seven/util/Z7Result;

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getResultCode()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/seven/util/Z7Result;-><init>(I)V

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

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v2}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->getConnectors()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1402(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/util/List;)Ljava/util/List;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$800(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v6, 0x2713

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/seven/util/Z7Result;->Z7_E_TIMEOUT:Lcom/seven/util/Z7Result;

    invoke-virtual {v3, v5}, Lcom/seven/util/Z7Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const-string v6, ""

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SEND_TIMEDOUT:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    invoke-static {v7}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$1;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$1;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;)V

    invoke-static {v5, v6, v7, v8}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1500(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_NO_AVAILABLE_CONNECTORS:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const v7, 0x7f0804af

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const v8, 0x7f0804b0

    invoke-virtual {v7, v8}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$2;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;)V

    invoke-static {v5, v6, v7, v8}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1600(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasErrorText()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorText()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const-string v6, ""

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$3;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;)V

    invoke-static {v5, v6, v1, v7}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1700(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
