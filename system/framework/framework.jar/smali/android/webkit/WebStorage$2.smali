.class Landroid/webkit/WebStorage$2;
.super Landroid/os/Handler;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebStorage;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebStorage;


# direct methods
.method constructor <init>(Landroid/webkit/WebStorage;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x0

    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/webkit/WebStorage;->access$000(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getOrigin()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/webkit/WebStorage;->access$200()V

    goto :goto_0

    :pswitch_3
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/ValueCallback;

    new-instance v2, Ljava/util/HashMap;

    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v10, "callback"

    invoke-interface {v8, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "origins"

    invoke-interface {v8, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    const/4 v11, 0x0

    invoke-static {v12, v11, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/webkit/WebStorage;->access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_4
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    const-string/jumbo v10, "origin"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v10, "callback"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v10, "callback"

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getUsage()J

    move-result-wide v6

    const-string/jumbo v10, "usage"

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    const/4 v11, 0x1

    invoke-static {v12, v11, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/webkit/WebStorage;->access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    const-string/jumbo v10, "origin"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v10, "callback"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$400(Landroid/webkit/WebStorage;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/webkit/WebStorage$Origin;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v10, "callback"

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v3

    const-string/jumbo v10, "quota"

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    const/4 v11, 0x2

    invoke-static {v12, v11, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/webkit/WebStorage;->access$500(Landroid/webkit/WebStorage;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v10, p0, Landroid/webkit/WebStorage$2;->this$0:Landroid/webkit/WebStorage;

    invoke-static {v10}, Landroid/webkit/WebStorage;->access$300(Landroid/webkit/WebStorage;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
