.class Lcom/android/email/MessagingController$3;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->renameFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$newMailboxName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p3, p0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 47

    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v29, 0x0

    const-string v15, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v15

    :goto_0
    if-eqz v33, :cond_3

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v35

    const/16 v38, 0x0

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    const/16 v44, 0x0

    if-nez v35, :cond_4

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MsgControl >>>"

    const-string v5, "renameFolder : remoteFolder is NULL"

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x68

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v15, "/"

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    move-object/from16 v29, v0

    goto :goto_1

    :cond_4
    invoke-virtual/range {v35 .. v35}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->rename(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/Store;->renameFolder(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rename Folder - mailboxId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mMailboxKey:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {v40 .. v40}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v38

    new-instance v36, Ljava/util/HashSet;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashSet;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, v38

    array-length v13, v0

    :goto_3
    move/from16 v0, v17

    if-ge v0, v13, :cond_6

    aget-object v4, v38, v17

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    :goto_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v3, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    iget-object v4, v3, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v16

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v45, 0x68

    move/from16 v0, v45

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_7
    :try_start_3
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    new-instance v26, Ljava/util/HashSet;

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    :pswitch_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v4, v10, v11, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v4

    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    :cond_9
    :try_start_4
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v36 .. v36}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    new-instance v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v37

    move-object/from16 v0, v39

    iput-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iput-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual/range {v37 .. v37}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v4

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    const/16 v4, 0x19

    iput v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-virtual/range {v37 .. v37}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v4

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/email/MessagingController$LocalMailboxInfo;

    iget-wide v4, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v6, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    iget-wide v7, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget v9, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-direct/range {v3 .. v9}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(JLjava/lang/String;JI)V

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    const/16 v17, 0x0

    :goto_7
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_10

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v43, v0

    iget v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v42

    iget v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v4, :cond_f

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    new-instance v41, Ljava/lang/StringBuffer;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v28

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    const-wide/16 v31, -0x1

    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v13, v4, -0x1

    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    if-ge v0, v13, :cond_c

    aget-object v4, v28, v19

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v13, -0x1

    move/from16 v0, v19

    if-ge v0, v4, :cond_b

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v31, v0

    :cond_e
    move-wide/from16 v0, v31

    iput-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    :cond_f
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    const-string v4, "flagVisible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "parentKey"

    iget-wide v5, v12, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v12, v4, v14}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7

    :cond_10
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    :cond_11
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->clear()V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v45, 0x68

    move/from16 v0, v45

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$3;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController$3;->val$newMailboxName:Ljava/lang/String;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v45, 0x68

    move/from16 v0, v45

    invoke-direct {v9, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v4 .. v9}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

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
