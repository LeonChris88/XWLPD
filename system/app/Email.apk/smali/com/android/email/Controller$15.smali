.class Lcom/android/email/Controller$15;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageInt([JLjava/lang/String;IJ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$columnValue:I

.field final synthetic val$currentAccountId:J

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Ljava/lang/String;I[JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$15;->val$columnName:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/Controller$15;->val$columnValue:I

    iput-object p4, p0, Lcom/android/email/Controller$15;->val$messageIds:[J

    iput-wide p5, p0, Lcom/android/email/Controller$15;->val$currentAccountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    :try_start_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v10, -0x1

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$15;->val$columnName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/Controller$15;->val$columnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/Controller$15;->val$messageIds:[J

    array-length v0, v13

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-wide v20, v13, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->restoreFollowupFlagWithEmailId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v16, :cond_0

    new-instance v16, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgId:J

    const/16 v2, 0x9

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/email/Controller$15;->val$columnValue:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v10

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_4

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->CLEAR:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_2

    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->MARK_COMPLETE:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->NEXT_WEEK:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;->setDefaults(Lcom/android/emailcommon/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;Landroid/content/Context;)Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/Controller$15;->val$currentAccountId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    invoke-virtual {v2, v8, v9}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v8, v9}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/Controller$15;->val$currentAccountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/Controller$15;->val$currentAccountId:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/Controller$15;->val$currentAccountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->processPendingActions(J)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
