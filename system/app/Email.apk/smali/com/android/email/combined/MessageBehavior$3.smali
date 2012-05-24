.class Lcom/android/email/combined/MessageBehavior$3;
.super Ljava/lang/Object;
.source "MessageBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/combined/MessageBehavior;->removeFolder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/combined/MessageBehavior;

.field final synthetic val$remoteAccountId:I

.field final synthetic val$remoteFolderId:I


# direct methods
.method constructor <init>(Lcom/android/email/combined/MessageBehavior;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/combined/MessageBehavior$3;->this$0:Lcom/android/email/combined/MessageBehavior;

    iput p2, p0, Lcom/android/email/combined/MessageBehavior$3;->val$remoteAccountId:I

    iput p3, p0, Lcom/android/email/combined/MessageBehavior$3;->val$remoteFolderId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$3;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-virtual {v0}, Lcom/android/email/combined/MessageBehavior;->notifyFolderStarted()V

    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$3;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/email/combined/MessageBehavior$3;->val$remoteAccountId:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithSevenAccountId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/email/combined/MessageBehavior$3;->val$remoteFolderId:I

    if-ge v0, v2, :cond_2

    :cond_0
    const-string v0, "MessageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFolder >> remoteFolderId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/combined/MessageBehavior$3;->val$remoteFolderId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$3;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->access$100()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "accountKey=? AND sevenMailboxKey=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v12, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget v12, p0, Lcom/android/email/combined/MessageBehavior$3;->val$remoteFolderId:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v9, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;

    invoke-direct {v9, v10}, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    :cond_3
    if-nez v8, :cond_4

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v8, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$3;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "MessageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFolder >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$3;->this$0:Lcom/android/email/combined/MessageBehavior;

    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/combined/MessageBehavior;->notifyFolderFinished(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "MessageBehavior"

    const-string v1, "removeFolder: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$3;->this$0:Lcom/android/email/combined/MessageBehavior;

    new-instance v1, Lcom/android/email/combined/EmailException;

    invoke-direct {v1, v7}, Lcom/android/email/combined/EmailException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/android/email/combined/MessageBehavior;->notifyFolderFailed(Lcom/android/email/combined/EmailException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
