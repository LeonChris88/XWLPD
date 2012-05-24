.class Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    const-string v3, "gsm.sim.unknownready"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "networkName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "GSM"

    const-string v3, "[Voicemail] Voicemail number can not be set because there is no matched networkName!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Voicemail] Voicemail number can not be set what matched with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$200(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)V

    goto :goto_0
.end method
