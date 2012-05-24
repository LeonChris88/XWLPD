.class Lcom/android/email/MessagingController$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v33

    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    move-object/from16 v0, v33

    array-length v9, v0

    :goto_0
    if-ge v14, v9, :cond_0

    aget-object v2, v33, v14

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

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

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v16, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/email/GroupMessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v24, Ljava/util/HashSet;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    :pswitch_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    move-object/from16 v0, v22

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    iget-wide v3, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v2

    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    :try_start_3
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v31 .. v31}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v32

    move-object/from16 v0, v34

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual/range {v32 .. v32}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v2

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    const/16 v2, 0x19

    iput v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-virtual/range {v32 .. v32}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v2

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_d

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    iget v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v2, :cond_a

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    new-instance v36, Ljava/lang/StringBuffer;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_a

    const-wide/16 v27, -0x1

    move-object/from16 v0, v26

    array-length v2, v0

    add-int/lit8 v9, v2, -0x1

    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v0, v9, :cond_7

    aget-object v2, v26, v17

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v9, -0x1

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v27, v0

    :cond_9
    :goto_7
    move-wide/from16 v0, v27

    iput-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    :cond_a
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    const-string v2, "flagVisible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "parentKey"

    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v8, v2, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_b
    const/16 v17, 0x0

    :goto_8
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_9

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v27, v0

    goto :goto_7

    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    :cond_e
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->clear()V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->listFoldersFinished(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    nop

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
