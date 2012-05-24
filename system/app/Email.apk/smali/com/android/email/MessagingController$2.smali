.class Lcom/android/email/MessagingController$2;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->createFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountKey:J

.field final synthetic val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$mailboxName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$2;->val$accountKey:J

    iput-object p4, p0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p5, p0, Lcom/android/email/MessagingController$2;->val$mailboxName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 48

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/MessagingController$2;->val$accountKey:J

    const/16 v19, 0x0

    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v17

    :cond_0
    :goto_0
    if-eqz v19, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->val$mailboxName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    const/16 v24, 0x0

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v36

    const/16 v39, 0x0

    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    const/16 v45, 0x0

    if-nez v36, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v17, "/"

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController$2;->val$mailboxName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual/range {v36 .. v36}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    :try_start_2
    sget-object v2, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual/range {v41 .. v41}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v39

    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v0, v39

    array-length v14, v0

    :goto_3
    move/from16 v0, v20

    if-ge v0, v14, :cond_7

    aget-object v2, v39, v20

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    const-string v10, "accountKey=?"

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v22, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v18

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_8
    :try_start_5
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v30, Ljava/util/HashSet;

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v30 .. v30}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    :pswitch_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v28

    iget v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v3, v4, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    invoke-static {v2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v2, v0, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v2

    if-eqz v24, :cond_9

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    :try_start_6
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v37 .. v37}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_b
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    new-instance v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v38

    move-object/from16 v0, v40

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    const-wide/16 v7, -0x1

    iput-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-static {v2, v0}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    invoke-virtual/range {v38 .. v38}, Lcom/android/emailcommon/mail/Folder;->getDelimiter()I

    move-result v2

    iput v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    const/4 v2, 0x0

    iput-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    const/16 v2, 0x19

    iput v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-virtual/range {v38 .. v38}, Lcom/android/emailcommon/mail/Folder;->getSelect()Z

    move-result v2

    iput-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagNoSelect:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    const/16 v20, 0x0

    :goto_7
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_12

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v44, v0

    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v43

    iget v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDelimiter:I

    if-eqz v2, :cond_11

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    new-instance v42, Ljava/lang/StringBuffer;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v32

    array-length v2, v0

    const/4 v5, 0x1

    if-le v2, v5, :cond_11

    const-wide/16 v33, -0x1

    move-object/from16 v0, v32

    array-length v2, v0

    add-int/lit8 v14, v2, -0x1

    const/16 v23, 0x0

    :goto_8
    move/from16 v0, v23

    if-ge v0, v14, :cond_e

    aget-object v2, v32, v23

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v23

    if-ge v0, v2, :cond_d

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/email/MessagingController$LocalMailboxInfo;

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide/from16 v33, v0

    :cond_10
    move-wide/from16 v0, v33

    iput-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    :cond_11
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    const-string v2, "flagVisible"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "parentKey"

    iget-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_12
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    :cond_13
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashSet;->clear()V

    const/16 v26, 0x0

    const/4 v2, 0x1

    if-ne v15, v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_9
    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V

    goto :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController$2;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v2

    const/4 v5, 0x1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x6a

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

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
