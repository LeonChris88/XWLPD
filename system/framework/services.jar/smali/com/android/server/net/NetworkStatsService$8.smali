.class Lcom/android/server/net/NetworkStatsService$8;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$8;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$000(Lcom/android/server/net/NetworkStatsService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
