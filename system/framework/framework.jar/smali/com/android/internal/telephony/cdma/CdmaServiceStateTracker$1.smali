.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$002(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$102(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$202(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.status.sid_changed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x27

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
