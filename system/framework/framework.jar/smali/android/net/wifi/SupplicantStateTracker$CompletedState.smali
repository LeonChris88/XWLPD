.class Landroid/net/wifi/SupplicantStateTracker$CompletedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$002(Landroid/net/wifi/SupplicantStateTracker;I)I

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0}, Landroid/net/wifi/SupplicantStateTracker;->access$600(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v0, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$602(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :goto_0
    return v2

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v3

    invoke-static {v2, v0, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v2, v1}, Landroid/net/wifi/SupplicantStateTracker;->access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    sget-object v4, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-static {v3, v4, v2}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$CompletedState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$400(Landroid/net/wifi/SupplicantStateTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$900(Landroid/net/wifi/SupplicantStateTracker;Lcom/android/internal/util/IState;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2006f -> :sswitch_1
        0x24006 -> :sswitch_0
    .end sparse-switch
.end method
