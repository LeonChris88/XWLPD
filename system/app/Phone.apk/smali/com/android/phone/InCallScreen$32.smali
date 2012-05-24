.class Lcom/android/phone/InCallScreen$32;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$bgCall:Lcom/android/internal/telephony/Call;

.field final synthetic val$fgCall:Lcom/android/internal/telephony/Call;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3602(Lcom/android/phone/InCallScreen;I)I

    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3502(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3602(Lcom/android/phone/InCallScreen;I)I

    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3502(Lcom/android/phone/InCallScreen;I)I

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3602(Lcom/android/phone/InCallScreen;I)I

    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3502(Lcom/android/phone/InCallScreen;I)I
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
