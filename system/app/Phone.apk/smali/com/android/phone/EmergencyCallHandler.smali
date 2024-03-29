.class public Lcom/android/phone/EmergencyCallHandler;
.super Landroid/app/Activity;
.source "EmergencyCallHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallHandler$1;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;,
        Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    }
.end annotation


# static fields
.field private static sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;
    .locals 1

    sget-object v0, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    return-object v0
.end method

.method private constructDialog(I)Landroid/app/ProgressDialog;
    .locals 4

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const v0, 0x7f0e01bc

    :goto_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e01bb

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-object v1

    :cond_0
    const v0, 0x7f0e01bd

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v5, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected intent action!  Should be ACTION_CALL_EMERGENCY, but instead got: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "emergency_call_retry_count"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    invoke-direct {v0, v9}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    iput-object v3, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    const-string v5, "EmergencyCallHandler"

    const-string v6, "onCreate()...  create dialog "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/EmergencyCallHandler;->constructDialog(I)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Landroid/app/ProgressDialog;

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- initial eci.intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    if-nez v5, :cond_2

    new-instance v5, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    invoke-direct {v5, v9}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;-><init>(Lcom/android/phone/EmergencyCallHandler$1;)V

    sput-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    :cond_2
    if-ne v4, v10, :cond_4

    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0x64

    invoke-interface {v3, v5, v6, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "EmergencyCallHandler"

    const-string v6, "Turning off airplane mode..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "state"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallHandler;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallHandler;->finish()V

    return-void

    :cond_3
    const-string v5, "EmergencyCallHandler"

    const-string v6, "Manually powering radio on..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    :cond_4
    const-string v5, "EmergencyCallHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry attempt...  retryCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v6, "emergency_call_retry_count"

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v5, Lcom/android/phone/EmergencyCallHandler;->sHandler:Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "EmergencyCallHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected call to onNewIntent(): intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
