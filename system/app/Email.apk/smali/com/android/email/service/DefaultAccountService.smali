.class public Lcom/android/email/service/DefaultAccountService;
.super Landroid/app/Service;
.source "DefaultAccountService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static actionGetDefaultAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Get"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionSetDefaultAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Set"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionSetDefaultAccount_oma(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Set_oma"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static actionUpdateAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private createOtherAccount(Landroid/content/Intent;)V
    .locals 38

    const/16 v24, 0x0

    const-string v4, "provider_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v4, "receive_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v4, "receive_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "receive_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v4, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "send_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v4, "send_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v4, "send_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "send_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v4, "send_auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v4, "sender_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "notify"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    const-string v4, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v4, "vibrate"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string v4, "vibrate_when_silent"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE ACCOUNT START<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v26, :cond_0

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider_id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v18, :cond_1

    const-string v4, ">>> DefAccount"

    const-string v5, "user_id : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v25, :cond_2

    const-string v4, ">>> DefAccount"

    const-string v5, "user_passwd : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v27, :cond_4

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v28, :cond_5

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recv_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v29, :cond_6

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v31, :cond_7

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_from : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v32, :cond_8

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v30, :cond_9

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_auth : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v33, :cond_a

    const-string v4, ">>> DefAccount"

    const-string v5, "sender_name : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v15, :cond_b

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_name : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v34, :cond_c

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate_when_silent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE ACCOUNT END<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_default"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    if-nez v24, :cond_d

    new-instance v24, Lcom/android/email/Account;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    :cond_d
    if-eqz v27, :cond_18

    const-string v4, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v35, ""

    const-string v16, ""

    if-eqz v18, :cond_f

    const-string v4, "@"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    aget-object v4, v19, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    const-string v4, ""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v36, v35

    :cond_e
    move-object/from16 v0, v19

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x1

    aget-object v4, v19, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    :cond_f
    const-string v4, ""

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v37, v25

    :cond_10
    const-string v4, ">>> DefAccount"

    const-string v5, "usr : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domain : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    if-eqz v28, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    :goto_0
    const/4 v4, -0x1

    if-ne v6, v4, :cond_12

    const-string v4, "pop3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_11

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_1f

    :cond_11
    const/16 v6, 0x3e3

    :cond_12
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_13
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    if-eqz v15, :cond_14

    const-string v4, ""

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_15
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    if-eqz v33, :cond_16

    const-string v4, ""

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    move-object/from16 v33, v35

    :cond_17
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    :cond_18
    if-eqz v29, :cond_1d

    const-string v4, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, ">>> DefAccount"

    const-string v5, "send : user_name "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v37

    const-string v4, ">>> DefAccount"

    const-string v5, "send : user_passwd "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendAddr(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityAuth(Ljava/lang/String;)V

    if-eqz v31, :cond_19

    const-string v4, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    :cond_19
    if-eqz v32, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    :goto_2
    const/4 v4, -0x1

    if-ne v11, v4, :cond_1b

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1a

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    :cond_1a
    const/16 v11, 0x1d1

    :cond_1b
    :goto_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setSendPort(I)V

    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    if-eqz v4, :cond_25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v5

    int-to-long v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v29, :cond_1d

    const-string v4, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    :try_start_1
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    :cond_1d
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    const-string v4, "false"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    :goto_5
    return-void

    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    goto/16 :goto_0

    :cond_1f
    const/16 v6, 0x6e

    goto/16 :goto_1

    :cond_20
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_21

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_22

    :cond_21
    const/16 v6, 0x3e1

    :goto_6
    goto/16 :goto_1

    :cond_22
    const/16 v6, 0x8f

    goto :goto_6

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_5

    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    goto/16 :goto_2

    :cond_24
    const/16 v11, 0x24b

    goto/16 :goto_3

    :cond_25
    const-string v3, "smtp"

    goto/16 :goto_4

    :catch_1
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_5
.end method

.method private createOtherAccount_oma(Landroid/content/Intent;)V
    .locals 37

    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/DefaultAccountService;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v23

    const-string v4, "provider_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v4, "receive_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v4, "receive_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "receive_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v4, "send_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v4, "send_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v4, "send_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v4, "send_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string v4, "send_auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v4, "sender_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v4, "notify"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    const-string v4, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "vibrate"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    const-string v4, "vibrate_when_silent"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE OMA ACCOUNT START<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v25, :cond_0

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider_id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v17, :cond_1

    const-string v4, ">>> DefAccount"

    const-string v5, "user_id : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v24, :cond_2

    const-string v4, ">>> DefAccount"

    const-string v5, "user_passwd : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v26, :cond_4

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v27, :cond_5

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recv_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v28, :cond_6

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v30, :cond_7

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_from : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v31, :cond_8

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v29, :cond_9

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_auth : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v32, :cond_a

    const-string v4, ">>> DefAccount"

    const-string v5, "sender_name : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v33, :cond_b

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate_when_silent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE OMA ACCOUNT END<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_default"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    if-nez v23, :cond_c

    new-instance v23, Lcom/android/email/Account;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    :cond_c
    if-eqz v26, :cond_1c

    const-string v4, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v34, ""

    const-string v15, ""

    if-eqz v17, :cond_e

    const-string v4, "@"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v35, v34

    :cond_d
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_e

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    :cond_e
    const-string v4, ""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v36, v24

    :cond_f
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usr : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domain : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xf

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    :goto_0
    const/4 v4, -0x1

    if-ne v6, v4, :cond_11

    const-string v4, "pop3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_10

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_18

    :cond_10
    const/16 v6, 0x3e3

    :cond_11
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_12
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    if-eqz v15, :cond_13

    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    :cond_13
    if-eqz v32, :cond_14

    const-string v4, ""

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    move-object/from16 v32, v34

    :cond_15
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    :cond_16
    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    const-string v4, "false"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    :goto_3
    return-void

    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    goto/16 :goto_0

    :cond_18
    const/16 v6, 0x6e

    goto/16 :goto_1

    :cond_19
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1a

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_1b

    :cond_1a
    const/16 v6, 0x3e1

    :goto_4
    goto/16 :goto_1

    :cond_1b
    const/16 v6, 0x8f

    goto :goto_4

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3

    :cond_1c
    if-eqz v28, :cond_16

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v36

    const-string v4, ">>> DefAccount"

    const-string v5, "send : user_passwd "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendAddr(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityAuth(Ljava/lang/String;)V

    if-eqz v30, :cond_1f

    const-string v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    const-string v4, "@"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const-string v15, ""

    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    if-nez v35, :cond_1e

    :cond_1d
    move-object/from16 v35, v30

    :cond_1e
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1f

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1f

    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    :cond_1f
    if-eqz v31, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    :goto_5
    const/4 v4, -0x1

    if-ne v11, v4, :cond_21

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_20

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    :cond_20
    const/16 v11, 0x1d1

    :cond_21
    :goto_6
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setSendPort(I)V

    :cond_22
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    if-eqz v4, :cond_25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v5

    int-to-long v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    if-eqz v28, :cond_16

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    :try_start_1
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    goto/16 :goto_5

    :cond_24
    const/16 v11, 0x24b

    goto :goto_6

    :cond_25
    const-string v3, "smtp"

    goto :goto_7

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private getCarrierAccount()Lcom/android/email/Account;
    .locals 1

    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v0

    return-object v0
.end method

.method private installCertificate(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    :try_start_0
    const-string v0, "temp.p12"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    new-instance v0, Lcom/android/email/cba/CertificateMgr;

    invoke-static {p1}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, p1}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const-string v5, "temp.p12"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5, p3}, Lcom/android/email/cba/CertificateMgr;->importCertificate(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :try_start_2
    const-string v3, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installCertificate() : Alias - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "temp.p12"

    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    const-string v0, ">>> DefAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installCertificate() : certificate installed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.sec.CBA_INSTALL_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-object v3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_1
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_2
    const-string v0, ">>> DefAccount"

    const-string v4, "installCertificate() : null parameters"

    invoke-static {v0, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v7, v0

    move-object v0, v3

    move-object v3, v7

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private onGetDefaultAccount()V
    .locals 15

    invoke-direct {p0}, Lcom/android/email/service/DefaultAccountService;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v0

    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.RECV_HOST"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    :try_start_0
    const-string v12, "id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "service"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "receive_host"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "receive_port"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "send_host"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "send_port"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "user_id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "user_passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/email/service/DefaultAccountService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v11, v12, v13

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v12

    const/16 v13, 0x6e

    if-ne v12, v13, :cond_1

    const-string v3, "pop"

    :goto_2
    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v12

    const/16 v13, 0x19

    if-ne v12, v13, :cond_2

    const-string v7, "smtp"

    :goto_3
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ">>> DefAccount"

    const-string v13, "passwd : "

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "service : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive_host : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive_port : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send_host : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send_port : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "service"

    invoke-virtual {v9, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "receive_host"

    invoke-virtual {v9, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "receive_port"

    invoke-virtual {v9, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "send_host"

    invoke-virtual {v9, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "send_port"

    invoke-virtual {v9, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "user_id"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "user_passwd"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    :try_start_1
    const-string v3, "pop+ssl"

    goto/16 :goto_2

    :cond_2
    const-string v7, "smtp+ssl"
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private onSetDefaultAccount(Landroid/content/Intent;)V
    .locals 4

    const-string v1, "service"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">>> DefAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetDefaultAccount() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/service/DefaultAccountService;->createEasAcount(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->createOtherAccount(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onSetDefaultAccount_oma(Landroid/content/Intent;)V
    .locals 2

    const-string v0, ">>> DefAccount"

    const-string v1, "onSetDefaultAccount_oma()  "

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->createOtherAccount_oma(Landroid/content/Intent;)V

    return-void
.end method

.method private updateAccount(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 13

    const-wide/16 v11, -0x1

    const-string v9, ">>> DefAccount"

    const-string v10, "updateAccount(): Entry "

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "user_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "service"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "receive_host"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "server_name"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    const-string v9, "eas"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v3, :cond_0

    if-eqz v7, :cond_0

    invoke-static {p2, v11, v12, v7, v3}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    const-string v9, ">>> DefAccount"

    const-string v10, "updateAccount(): account is null"

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v8, :cond_2

    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    const-string v9, ">>> DefAccount"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAccount(): Intent is wrong. type:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    invoke-static {p2, v11, v12, v6, v3}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v2

    if-eqz v0, :cond_6

    array-length v9, v2

    if-lez v9, :cond_6

    const/4 v4, 0x0

    :goto_2
    array-length v9, v2

    if-ge v4, v9, :cond_6

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getServerName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getServerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9, v5}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v9, "eas"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/email/service/DefaultAccountService;->updateEasAcount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/email/service/DefaultAccountService;->updateOtherAccount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private updateEasAcount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V
    .locals 33

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    new-instance v13, Lcom/android/email/Account;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v1, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    const-string v8, "peak"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v8, "off_peak"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v8, "peak_starttime"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    const-string v8, "peak_endtime"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v8, "peak_days"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v8, "roaming_schedule"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string v1, "period_email"

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const-string v1, "retrival_size"

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailRetrieveSize()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    const-string v1, "period_calendar"

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    new-instance v1, Landroid/accounts/Account;

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v9, "com.android.exchange"

    invoke-direct {v1, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "sync_contacts"

    const-string v9, "com.android.contacts"

    invoke-static {v1, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v8, "sync_calendar"

    const-string v9, "com.android.calendar"

    invoke-static {v1, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    const-string v8, "notify"

    and-int/lit8 v9, v1, 0x1

    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    const-string v8, "vibrate"

    and-int/lit8 v9, v9, 0x2

    const/4 v1, 0x2

    if-ne v9, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    const-string v8, "vibrate_when_silent"

    and-int/lit8 v1, v9, 0x40

    const/16 v9, 0x40

    if-ne v1, v9, :cond_4

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    const-string v1, "is_default"

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v8, "server_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v8, ""

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    if-eqz p4, :cond_d

    const-string v6, "@"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    move-object v12, v6

    :goto_3
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_0
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    :goto_4
    :try_start_0
    iget-wide v6, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    move-object/from16 v0, p3

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v1, "eas"

    iget v5, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v1, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "+ssl+trustallcerts"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v3, 0x1

    const/4 v2, 0x1

    move v1, v2

    move v2, v3

    :goto_5
    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    move-object v9, v3

    move-object v10, v5

    :goto_6
    const-string v3, "use_ssl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    const-string v2, "trust_all"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    const/4 v1, 0x1

    move/from16 v0, v31

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    move/from16 v0, v32

    if-ne v0, v1, :cond_6

    const-string v1, "eas+ssl+trustallcerts"

    move-object v2, v1

    :goto_7
    if-eqz v10, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_8
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ">>> DefAccount"

    const-string v3, ">>>>>>>>>>>>> EAS UPDATE BR INTENT START<<<<<<<<<<<<<< "

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use_ssl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trust_all : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "off_peak : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak_starttime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak_endtime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak_days : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roaming_schedule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "period_email : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrival_size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "period_calendar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync_contacts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync_calendar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate_when_silent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_default : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ">>> DefAccount"

    const-string v3, ">>>>>>>>>>>>> EAS UPDATE BR INTENT END<<<<<<<<<<<<<< "

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setSyncLookbackData(I)V

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setCalendarSyncLookbackData(I)V

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setEmailSize(I)V

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setFlagSyncContact(I)V

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setFlagSyncCalendar(I)V

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setVibrate(Z)V

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/email/Account;->setSyncScheduleData(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    const-string v1, "true"

    invoke-virtual {v13, v1}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    :goto_9
    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_5
    :try_start_1
    const-string v5, "+ssl+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    move v1, v2

    move v2, v3

    goto/16 :goto_5

    :cond_6
    const-string v1, "eas+ssl+"

    move-object v2, v1

    goto/16 :goto_7

    :cond_7
    const-string v1, "eas"

    move-object v2, v1

    goto/16 :goto_7

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_8

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_9

    :cond_9
    move-object v9, v4

    move-object v10, v5

    goto/16 :goto_6

    :cond_a
    move v1, v2

    move v2, v3

    goto/16 :goto_5

    :cond_b
    move v1, v2

    move-object v9, v4

    move-object v10, v5

    move v2, v3

    goto/16 :goto_6

    :cond_c
    move-object v11, v1

    goto/16 :goto_4

    :cond_d
    move-object v12, v6

    goto/16 :goto_3
.end method

.method private updateOtherAccount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V
    .locals 41

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v25

    new-instance v20, Lcom/android/email/Account;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    const-string v4, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "provider_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v27

    if-eqz v27, :cond_0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    :cond_0
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v31

    const-string v4, "receive_host"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-string v4, "receive_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "receive_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v4, "send_host"

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    const-string v4, "send_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v4, "send_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v4, "send_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v4, "send_auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "sender_name"

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v19

    const-string v5, "notify"

    and-int/lit8 v19, v19, 0x1

    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_19

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string v5, "vibrate"

    and-int/lit8 v19, v19, 0x2

    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_1a

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    const-string v5, "vibrate_when_silent"

    and-int/lit8 v19, v19, 0x40

    const/16 v4, 0x40

    move/from16 v0, v19

    if-ne v0, v4, :cond_1b

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    const-string v4, "is_default"

    move-object/from16 v0, v25

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const-string v4, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v4, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const-string v38, ""

    const-string v16, ""

    if-eqz p4, :cond_3

    const-string v4, "@"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    const-string v4, ""

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v39, v38

    :cond_2
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    const-string v4, ""

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :cond_3
    if-eqz v16, :cond_4

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_4
    if-eqz v26, :cond_5

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider_id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_6

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v28, :cond_7

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v30, :cond_8

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recv_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v32, :cond_9

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v34, :cond_a

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_from : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v35, :cond_b

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v33, :cond_c

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_auth : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v36, :cond_d

    const-string v4, ">>> DefAccount"

    const-string v5, "sender_name : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz v37, :cond_e

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate_when_silent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v28, :cond_13

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    if-eqz p4, :cond_f

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    :cond_f
    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    :goto_3
    const/4 v4, -0x1

    if-ne v6, v4, :cond_11

    const-string v4, "pop3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_10

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_1d

    :cond_10
    const/16 v6, 0x3e3

    :cond_11
    :goto_4
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_12
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    :cond_13
    if-eqz v32, :cond_18

    const-string v4, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendAddr(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityAuth(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    if-eqz v34, :cond_14

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    :cond_14
    if-eqz v35, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    :goto_5
    const/4 v4, -0x1

    if-ne v11, v4, :cond_16

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    :cond_15
    const/16 v11, 0x1d1

    :cond_16
    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setSendPort(I)V

    :cond_17
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    if-eqz v4, :cond_23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v5

    int-to-long v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    if-eqz v32, :cond_18

    const-string v4, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :try_start_1
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    :goto_8
    return-void

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_1c
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    goto/16 :goto_3

    :cond_1d
    const/16 v6, 0x6e

    goto/16 :goto_4

    :cond_1e
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1f

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_20

    :cond_1f
    const/16 v6, 0x3e1

    :goto_9
    goto/16 :goto_4

    :cond_20
    const/16 v6, 0x8f

    goto :goto_9

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8

    :cond_21
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    goto/16 :goto_5

    :cond_22
    const/16 v11, 0x24b

    goto/16 :goto_6

    :cond_23
    const-string v3, "smtp"

    goto/16 :goto_7

    :catch_1
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8
.end method


# virtual methods
.method public GetAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string v3, "[.]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v3, v1, v4

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-char v3, v1, v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v1, v4

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public GetSecurityTypeNum(Ljava/lang/String;)I
    .locals 1

    const-string v0, "ssl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "ssl+trustallcerts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "tls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "tls+trustallcerts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetSecurityTypeString(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, "ssl"

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-string v0, "ssl+trustallcerts"

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const-string v0, "tls"

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const-string v0, "tls+trustallcerts"

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public createEasAcount(Landroid/content/Intent;)V
    .locals 45

    const/16 v22, 0x0

    const/16 v31, 0x0

    const/4 v8, 0x0

    const-string v3, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v3, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v3, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v3, "domain"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v3, "server_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string v3, "use_ssl"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    const-string v3, "trust_all"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    const-string v3, "peak"

    const/4 v4, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v3, "off_peak"

    const/4 v4, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v3, "peak_starttime"

    const/16 v4, 0x1e0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const-string v3, "peak_endtime"

    const/16 v4, 0x3fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const-string v3, "peak_days"

    const/16 v4, 0x3e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const-string v3, "roaming_schedule"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    const-string v3, "period_email"

    const/4 v4, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v3, "retrival_size"

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    const-string v3, "period_calendar"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "notify"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    const-string v3, "sync_contacts"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    const-string v3, "sync_calendar"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    const-string v3, "vibrate"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    const-string v3, "vibrate_when_silent"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    const-string v3, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v3, "is_default"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const-string v3, "certificate_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    const-string v3, "certificate_password"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, ">>> DefAccount"

    const-string v4, ">>>>>>>>>>>>> EAS CREATE BR INTENT START<<<<<<<<<<<<<< "

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "domain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use_ssl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trust_all : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "off_peak : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak_starttime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak_endtime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak_days : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "roaming_schedule : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "period_email : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrival_size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "period_calendar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync_contacts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync_calendar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vibrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vibrate_when_silent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_default : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_5

    const-string v3, ">>> DefAccount"

    const-string v4, "certificate_data : not null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v3, ">>> DefAccount"

    const-string v4, ">>>>>>>>>>>>> EAS CREATE BR INTENT END<<<<<<<<<<<<<< "

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v13, v15}, Lcom/android/email/service/DefaultAccountService;->installCertificate(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-nez v22, :cond_1

    new-instance v22, Lcom/android/email/Account;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    :cond_1
    const-string v3, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v15, :cond_4

    const-string v3, "@"

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    if-nez v32, :cond_2

    if-eqz v31, :cond_2

    move-object/from16 v32, v31

    :cond_2
    if-eqz v10, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v40

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v38

    if-ne v0, v3, :cond_6

    :try_start_0
    const-string v30, "eas+ssl+trustallcerts"

    :goto_1
    const/16 v41, 0x0

    if-eqz v42, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    :goto_2
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncLookbackData(I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setCalendarSyncLookbackData(I)V

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmailSize(I)V

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setFlagSyncContact(I)V

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setFlagSyncCalendar(I)V

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setAddSignature(Z)V

    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncScheduleData(Ljava/lang/String;)V

    const-string v3, "false"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    :goto_3
    return-void

    :cond_5
    const-string v3, ">>> DefAccount"

    const-string v4, "certificate_data : null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v30, "eas+ssl+"

    goto/16 :goto_1

    :cond_7
    const-string v30, "eas"

    goto/16 :goto_1

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v41

    goto/16 :goto_2

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-eqz p1, :cond_0

    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/email/service/DefaultAccountService;->onGetDefaultAccount()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set_oma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->onSetDefaultAccount_oma(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->onSetDefaultAccount(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p0}, Lcom/android/email/service/DefaultAccountService;->updateAccount(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method
