.class Lcom/android/email/activity/MailboxList$11;
.super Landroid/os/Handler;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v2, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v7}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    invoke-static {v8, v2}, Lcom/android/email/activity/MailboxList;->access$2702(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadMailboxesTask;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2700(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    goto :goto_1

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/email/activity/MailboxList;->access$2000(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/email/activity/MailboxList$MailboxListItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->setDisplayName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v2

    add-int/lit8 v19, v2, 0x1

    move/from16 v14, v19

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    if-lt v3, v2, :cond_3

    move/from16 v19, v14

    :cond_2
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v14

    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    const/16 v18, -0x1

    const/16 v16, -0x1

    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/email/activity/MailboxList$MailboxListItem;

    if-nez v22, :cond_5

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v22, :cond_c

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getParentServerId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    const/16 v2, 0xc

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxType()I

    move-result v3

    if-ne v2, v3, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    move/from16 v18, v14

    :cond_7
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_8
    move v15, v14

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v15, v2, :cond_9

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getLevel()I

    move-result v2

    if-lt v3, v2, :cond_b

    :cond_9
    move/from16 v16, v14

    :cond_a
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_c
    if-eqz v22, :cond_a

    invoke-virtual {v13}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move/from16 v16, v14

    goto :goto_7

    :cond_d
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/email/activity/MailboxList;->access$2000(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v14, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v4}, Lcom/android/email/activity/MailboxList;->access$2800(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2, v14}, Lcom/android/email/activity/MailboxList;->access$202(Lcom/android/email/activity/MailboxList;I)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->getServerId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$1400(Lcom/android/email/activity/MailboxList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxList$MailboxListItem;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v7, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$200(Lcom/android/email/activity/MailboxList;)I

    move-result v12

    invoke-direct/range {v7 .. v12}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;JLjava/lang/String;I)V

    invoke-static {v2, v7}, Lcom/android/email/activity/MailboxList;->access$2702(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadMailboxesTask;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2700(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$1802(Lcom/android/email/activity/MailboxList;Z)Z

    goto :goto_9

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const v3, 0x7f0804fe

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    new-instance v3, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v5}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v7

    invoke-direct {v3, v4, v7, v8}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$2602(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$LoadAllMailboxes;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2600(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$LoadAllMailboxes;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxList$LoadAllMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v17, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v3}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;-><init>(Lcom/android/email/activity/MailboxList;J)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxList$LoadRootMailboxes;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v2, v2, Lcom/android/email/activity/MailboxList;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2af8

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxList;->access$602(Lcom/android/email/activity/MailboxList;Z)Z

    const-string v2, "k1001.kim"

    const-string v3, "isCreateFolder = false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2300(Lcom/android/email/activity/MailboxList;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxList$11;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v2}, Lcom/android/email/activity/MailboxList;->access$2200(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_2
        0xbb8 -> :sswitch_1
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1770 -> :sswitch_5
        0x1b58 -> :sswitch_6
        0x2af8 -> :sswitch_7
        0x32c8 -> :sswitch_8
    .end sparse-switch
.end method
