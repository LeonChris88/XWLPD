.class public Lcom/digc/seven/SevenBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SevenBroadCastReceiver.java"


# static fields
.field private static SEVEN_ACTION:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SevenBroadCastReceiver"

    iput-object v0, p0, Lcom/digc/seven/SevenBroadCastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "=============================================="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "\tSevenBroadCastReceiver.onReceive() "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tintent.getAction() :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "=============================================="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2, p1}, Lcom/digc/seven/SevenMessageManager;->makeMessage(Landroid/content/Intent;Landroid/content/Context;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_RECEIVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_SENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "message_id"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {p1, v5}, Lcom/digc/seven/SevenMessageManager;->basicMoveToSent(Landroid/content/Context;I)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_SENT BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncUpdateMessage(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_REMOVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.EMAIL_UPDATED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncUpdateMessage(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_EMAIL_UPDATED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.FOLDER_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncFolder(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_FOLDER_ADDED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.FOLDER_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-static {p2, p1, v5}, Lcom/digc/seven/SevenMessageManager;->syncFolder(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_FOLDER_REMOVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.ACCOUNT_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "isp_type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : EVENT_ACCOUNT_REMOVED from IM."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End EVENT_ACCOUNT_REMOVED BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/email/adapter/SevenAdapter;->getAccountFacade()Lcom/android/email/combined/AccountFacade;

    move-result-object v5

    const-string v6, "account_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/email/combined/AccountFacade;->removeAccount(I)V

    goto/16 :goto_0

    :cond_9
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.ACCOUNT_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "isp_type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : ACCOUNT_ADDED from IM."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : ACCOUNT_ADDED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/email/adapter/SevenAdapter;->getAccountFacade()Lcom/android/email/combined/AccountFacade;

    move-result-object v5

    const-string v6, "account_id"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "account_name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/email/combined/AccountFacade;->addedAccount(ILjava/lang/String;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End ACCOUNT_ADD BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "package:com.seven.Z7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "SEVEN_ACTION = package:com.seven.Z7 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/email/adapter/SevenAdapter;->deleteSevenAccountForEmail(Landroid/content/Context;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "data clear success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    :cond_c
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBooleanExtra = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "package:com.seven.Z7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "SEVEN_ACTION = package:com.seven.Z7 "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/email/adapter/SevenAdapter;->deleteSevenAccountForEmail(Landroid/content/Context;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "data clear success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {v11}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Lcom/android/email/adapter/ProtocolAdapter;->setEnabled(ZZ)Z

    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    :cond_e
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "com.seven.Z7.RANGE_EMAIL_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :EVENT_RANGE_EMAIL_REMOVED "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_f
    invoke-static {p2, p1}, Lcom/digc/seven/SevenMessageManager;->syncMessageTimeLimit(Landroid/content/Intent;Landroid/content/Context;)V

    const-string v5, "SevenBroadCastReceiver"

    const-string v6, "--------------------End TimeLimitMessage BroadCast----------------------"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    sget-object v5, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v11}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Lcom/android/email/adapter/ProtocolAdapter;->setEnabled(ZZ)Z

    goto/16 :goto_0

    :cond_11
    const-string v5, "SevenBroadCastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEVEN_ACTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/digc/seven/SevenBroadCastReceiver;->SEVEN_ACTION:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :Not Used Action Event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
