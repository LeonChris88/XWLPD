.class Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;
.super Ljava/lang/Object;
.source "RejectCallWithMsgLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMsgRunnable"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method public constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgLayout;->access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.Send.SMS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "cdnip_supplementary_service"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->access$400(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "RejectCallWithMsgLayout"

    const-string v3, "change sender number to cdnip number"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "sms_voip_sender"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-static {v3}, Lcom/android/phone/RejectCallWithMsgLayout;->access$400(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "recipient"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text"

    iget-object v3, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-static {v2}, Lcom/android/phone/RejectCallWithMsgLayout;->access$500(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/phone/RejectCallWithMsgLayout;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "RejectCallWithMsgLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recipient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;->mMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "RejectCallWithMsgLayout"

    const-string v3, "SendMsgRunnable is Run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
