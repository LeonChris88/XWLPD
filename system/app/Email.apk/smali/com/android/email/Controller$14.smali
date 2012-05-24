.class Lcom/android/email/Controller$14;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageBoolean([JLjava/lang/String;ZJ)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$columnValue:Z

.field final synthetic val$currentAccountId:J

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;[JLjava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$14;->val$messageIds:[J

    iput-object p3, p0, Lcom/android/email/Controller$14;->val$columnName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/email/Controller$14;->val$columnValue:Z

    iput-wide p5, p0, Lcom/android/email/Controller$14;->val$currentAccountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$14;->val$messageIds:[J

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    if-nez v16, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_2
    const-wide/16 v9, -0x1

    :try_start_0
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->val$columnName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/Controller$14;->val$columnValue:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/Controller$14;->val$messageIds:[J

    array-length v15, v11

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_3

    aget-wide v17, v11, v14

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/Controller$14;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    const-wide/16 v2, -0x1

    cmp-long v2, v9, v2

    if-eqz v2, :cond_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :cond_3
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(J)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/Controller$14;->val$messageIds:[J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/Controller$14;->val$columnName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/email/Controller$14;->val$columnValue:Z

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/Controller$14;->val$currentAccountId:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/adapter/ProtocolAdapter;->setMessageBoolean([JLjava/lang/String;ZJ)V

    goto/16 :goto_0
.end method
