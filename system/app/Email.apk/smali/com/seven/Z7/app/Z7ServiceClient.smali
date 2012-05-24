.class public Lcom/seven/Z7/app/Z7ServiceClient;
.super Ljava/lang/Object;
.source "Z7ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/app/Z7ServiceClient$1;,
        Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;
    }
.end annotation


# static fields
.field static instance:Lcom/seven/Z7/app/Z7ServiceClient;


# instance fields
.field callbackMessages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mApp:Lcom/android/email/Email;

.field protected mListener:Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mApp:Lcom/android/email/Email;

    new-instance v0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;

    invoke-static {}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getUIActionHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;-><init>(Lcom/seven/Z7/app/Z7ServiceClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mListener:Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;

    iget-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mApp:Lcom/android/email/Email;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mListener:Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;

    invoke-virtual {v0, v1}, Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/seven/Z7/app/Z7ServiceClient;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/seven/Z7/app/Z7ServiceClient;->handExtraCallback(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static getEmailAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "yahoo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.seven.Z7.yahoo"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "msn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.seven.Z7.msn"

    goto :goto_0

    :cond_1
    const-string v0, "gmail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.seven.Z7.gmail"

    goto :goto_0

    :cond_2
    const-string v0, "work"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.seven.Z7.work"

    goto :goto_0

    :cond_3
    const-string v0, "com.seven.Z7"

    goto :goto_0
.end method

.method public static final getInstance(Landroid/app/Activity;)Lcom/seven/Z7/app/Z7ServiceClient;
    .locals 1

    sget-object v0, Lcom/seven/Z7/app/Z7ServiceClient;->instance:Lcom/seven/Z7/app/Z7ServiceClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/seven/Z7/app/Z7ServiceClient;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7ServiceClient;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/seven/Z7/app/Z7ServiceClient;->instance:Lcom/seven/Z7/app/Z7ServiceClient;

    :cond_0
    sget-object v0, Lcom/seven/Z7/app/Z7ServiceClient;->instance:Lcom/seven/Z7/app/Z7ServiceClient;

    return-object v0
.end method

.method private handExtraCallback(ILandroid/os/Bundle;)Z
    .locals 23

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v20, "Z7ServiceClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handling "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v20, Lcom/seven/Z7/app/Z7ServiceClient$1;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v9}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    const/4 v15, 0x0

    :cond_0
    :goto_0
    move/from16 v20, v15

    :goto_1
    return v20

    :pswitch_0
    const-string v20, "is_email_scope"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v20, "email"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v20, "account_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v20, "isp"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v7, Landroid/accounts/Account;

    invoke-static/range {v18 .. v18}, Lcom/seven/Z7/app/Z7ServiceClient;->getEmailAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v4, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v20, "account_internal_id"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "account_isp"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    move-object v8, v6

    array-length v0, v8

    move/from16 v19, v0

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_1

    aget-object v5, v8, v13

    iget-object v0, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    :try_start_0
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v7, v0, v12}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const-string v20, "Z7ServiceClient"

    const-string v21, "do not show private informations.!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v15, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :pswitch_1
    const-string v20, "email"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_4

    :cond_3
    const/16 v20, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v20, "isp"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v20, "content_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v20, "is_sync_automatically"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v20, "is_syncable"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    new-instance v7, Landroid/accounts/Account;

    invoke-static/range {v18 .. v18}, Lcom/seven/Z7/app/Z7ServiceClient;->getEmailAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v4, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v10, :pswitch_data_1

    :goto_4
    const/4 v15, 0x1

    goto/16 :goto_0

    :pswitch_2
    const-string v20, "com.seven.provider.email"

    move-object/from16 v0, v20

    invoke-static {v7, v0, v14}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v20, "com.seven.provider.email"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_3
    const-string v20, "com.android.contacts"

    move-object/from16 v0, v20

    invoke-static {v7, v0, v14}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v20, "com.android.contacts"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_4
    sget-object v20, Lcom/seven/Z7/shared/ANSharedCommon;->CALENDAR_AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v7, v0, v14}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    sget-object v20, Lcom/seven/Z7/shared/ANSharedCommon;->CALENDAR_AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seven/Z7/app/Z7ServiceClient;->mApp:Lcom/android/email/Email;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/email/Email;->setEngineInitialized(Z)V

    const/4 v15, 0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x100
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public registerCallback(ILandroid/os/Handler;)V
    .locals 7

    const-string v4, "Z7ServiceClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for what:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-ne v1, p2, :cond_1

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method sendMessage(Landroid/os/Bundle;Landroid/os/Handler;)V
    .locals 4

    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-string v1, "event-id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "event-id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    :cond_1
    const-string v1, "arg2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "arg2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "Z7ServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found and sent to target with data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public unRegisterCallback(ILandroid/os/Handler;)V
    .locals 5

    const-string v2, "Z7ServiceClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegister callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
