.class Lcom/android/internal/telephony/DataConnection$DcDefaultState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x40005

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public exit()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState: shouldn\'t happen but ignore msg.what=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x11002

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x11002

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/DataConnection;->access$000(Lcom/android/internal/telephony/DataConnection;)I

    move-result v5

    const-string v6, "hi"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;IIILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/util/IState;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x41001

    if-eqz v16, :cond_2

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41003

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/DataConnection;->cid:I

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41005

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v12, Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v12, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41007

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v12}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/net/ProxyProperties;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v14}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41009

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/telephony/DataCallState;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v1, v13}, Lcom/android/internal/telephony/DataConnection;->access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x4100d

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v15}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    new-instance v11, Landroid/net/LinkCapabilities;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v11, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x4100b

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v11}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x4100f

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/DataConnection;->access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41011

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41013

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/ApnContext;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41015

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41017

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$600(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iput-object v10, v1, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x41019

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x4101b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v2, "DcDefaultState: msg.what=EVENT_CONNECT, fail not expected"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-static {v1, v9, v2}, Lcom/android/internal/telephony/DataConnection;->access$700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState deferring msg.what=EVENT_DISCONNECT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DataConnection;->access$800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DcDefaultState: msg.what=EVENT_RIL_CONNECTED mRilVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v3, v3, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v2, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x40000 -> :sswitch_11
        0x40004 -> :sswitch_12
        0x40005 -> :sswitch_13
        0x41000 -> :sswitch_3
        0x41002 -> :sswitch_4
        0x41004 -> :sswitch_5
        0x41006 -> :sswitch_6
        0x41008 -> :sswitch_7
        0x4100a -> :sswitch_9
        0x4100c -> :sswitch_8
        0x4100e -> :sswitch_a
        0x41010 -> :sswitch_b
        0x41012 -> :sswitch_c
        0x41014 -> :sswitch_d
        0x41016 -> :sswitch_e
        0x41018 -> :sswitch_f
        0x4101a -> :sswitch_10
    .end sparse-switch
.end method
