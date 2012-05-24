.class Lcom/android/email/MessagingController$4;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->deleteFolder(JLjava/util/ArrayList;Lcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountKey:J

.field final synthetic val$mailboxIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JLjava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$4;->val$accountKey:J

    iput-object p4, p0, Lcom/android/email/MessagingController$4;->val$mailboxIds:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    const/16 v17, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/MessagingController$4;->val$accountKey:J

    const/16 v28, 0x0

    const/16 v27, 0x0

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    const/16 v29, 0x0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->val$mailboxIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v25

    if-eqz v25, :cond_0

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->delete(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/email/mail/Store;->removeFolder(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    invoke-virtual/range {v28 .. v28}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v27

    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, v27

    array-length v11, v0

    :goto_2
    if-ge v14, v11, :cond_3

    aget-object v2, v27, v14

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$4;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v16, Lcom/android/email/MessagingController$LocalMailboxInfo;

    invoke-direct/range {v16 .. v17}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :cond_5
    :try_start_2
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v22, Ljava/util/HashSet;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    :pswitch_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v8, v9, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    const/16 v18, 0x0

    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$4;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
