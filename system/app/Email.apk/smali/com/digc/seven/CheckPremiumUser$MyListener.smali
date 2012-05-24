.class Lcom/digc/seven/CheckPremiumUser$MyListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "CheckPremiumUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/digc/seven/CheckPremiumUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/digc/seven/CheckPremiumUser;


# direct methods
.method public constructor <init>(Lcom/digc/seven/CheckPremiumUser;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/digc/seven/CheckPremiumUser$MyListener;->this$0:Lcom/digc/seven/CheckPremiumUser;

    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private getSelectedBrandId()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/digc/seven/CheckPremiumUser$MyListener;->this$0:Lcom/digc/seven/CheckPremiumUser;

    invoke-virtual {v1}, Lcom/digc/seven/CheckPremiumUser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accountType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 11

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getSystemCallbackType()Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v9, Lcom/digc/seven/CheckPremiumUser$2;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v6, Lcom/seven/util/Z7Result;

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getResultCode()I

    move-result v9

    invoke-direct {v6, v9}, Lcom/seven/util/Z7Result;-><init>(I)V

    iget-object v9, p0, Lcom/digc/seven/CheckPremiumUser$MyListener;->this$0:Lcom/digc/seven/CheckPremiumUser;

    invoke-static {v9}, Lcom/digc/seven/CheckPremiumUser;->access$100(Lcom/digc/seven/CheckPremiumUser;)V

    invoke-static {v6}, Lcom/seven/util/Z7Result;->Z7_SUCCEEDED(Lcom/seven/util/Z7Result;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getObject()Ljava/lang/Object;

    move-result-object v8

    new-instance v5, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;

    check-cast v8, Lcom/seven/util/IntArrayMap;

    invoke-direct {v5, v8}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;-><init>(Lcom/seven/util/IntArrayMap;)V

    invoke-virtual {v5}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->isImScope()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0}, Lcom/digc/seven/CheckPremiumUser$MyListener;->getSelectedBrandId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->getConnectors()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seven/util/IntArrayMap;

    const/16 v9, 0x31

    invoke-virtual {v1, v9}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/digc/seven/CheckPremiumUser$MyListener;->this$0:Lcom/digc/seven/CheckPremiumUser;

    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Lcom/seven/util/IntArrayMap;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/digc/seven/CheckPremiumUser;->access$202(Lcom/digc/seven/CheckPremiumUser;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v9, p0, Lcom/digc/seven/CheckPremiumUser$MyListener;->this$0:Lcom/digc/seven/CheckPremiumUser;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/digc/seven/CheckPremiumUser;->access$300(Lcom/digc/seven/CheckPremiumUser;Z)V

    iget-object v9, p0, Lcom/digc/seven/CheckPremiumUser$MyListener;->this$0:Lcom/digc/seven/CheckPremiumUser;

    invoke-static {v9}, Lcom/digc/seven/CheckPremiumUser;->access$400(Lcom/digc/seven/CheckPremiumUser;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v9

    sget-object v10, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v10}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v10

    if-eq v9, v10, :cond_4

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v9

    sget-object v10, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v10}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_0

    :cond_4
    iget-object v9, p0, Lcom/digc/seven/CheckPremiumUser$MyListener;->this$0:Lcom/digc/seven/CheckPremiumUser;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/digc/seven/CheckPremiumUser;->access$300(Lcom/digc/seven/CheckPremiumUser;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
