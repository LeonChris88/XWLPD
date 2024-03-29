.class Lcom/android/email/adapter/SevenAdapter$MySevenListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "SevenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/adapter/SevenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySevenListener"
.end annotation


# instance fields
.field public mAccountId:J

.field public mAccountStatus:I

.field public mMailBoxId:J

.field public mRemoteAccountId:J

.field final synthetic this$0:Lcom/android/email/adapter/SevenAdapter;


# direct methods
.method public constructor <init>(Lcom/android/email/adapter/SevenAdapter;Landroid/os/Handler;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-object p1, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->this$0:Lcom/android/email/adapter/SevenAdapter;

    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    iput-wide v0, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountId:J

    iput-wide v0, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mMailBoxId:J

    iput-wide v0, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mRemoteAccountId:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountStatus:I

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 14

    const/4 v1, 0x0

    const/16 v3, 0x4d

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const-string v0, "event-id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v11

    const-string v0, "SevenAdapter"

    const-string v2, "SevenListener:onCallback() is called : do not show private informations.!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_0

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    sget-object v0, Lcom/android/email/adapter/SevenAdapter$1;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v11}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    int-to-long v2, v10

    iget-wide v4, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mMailBoxId:J

    const/16 v6, 0x64

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    iget-wide v2, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mMailBoxId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mMailBoxId:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v13

    iget v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v4, 0x190

    const/4 v6, 0x7

    move-object v5, v1

    move v8, v7

    invoke-static/range {v2 .. v8}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    int-to-long v3, v10

    move-wide v8, v5

    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    :pswitch_2
    const-string v0, "obj"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_0

    iget v0, p0, Lcom/android/email/adapter/SevenAdapter$MySevenListener;->mAccountStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/email/adapter/ProtocolAdapter;->mResultCallback:Lcom/android/email/Controller$Result;

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    int-to-long v3, v10

    move-wide v8, v5

    invoke-virtual/range {v1 .. v9}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 8

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getSystemCallbackType()Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    const-string v5, "SevenAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SevenListener:onCallback() is called : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/email/adapter/SevenAdapter$1;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

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

    invoke-virtual {v2}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->getConnectors()Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_0

    sget-object v5, Lcom/seven/util/Z7Result;->Z7_E_TIMEOUT:Lcom/seven/util/Z7Result;

    invoke-virtual {v3, v5}, Lcom/seven/util/Z7Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_NO_AVAILABLE_CONNECTORS:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasErrorText()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasErrorCode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v5, 0x7f080438

    invoke-static {v5}, Lcom/seven/Z7/shared/ANSharedCommon;->fetchString(I)Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
