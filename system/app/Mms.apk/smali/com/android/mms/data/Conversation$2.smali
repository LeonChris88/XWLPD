.class Lcom/android/mms/data/Conversation$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAsRead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Conversation;

.field final synthetic val$threadUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    iput-object p2, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v8, 0x0

    const-string v0, "Mms/Conversation"

    const-string v1, "markAsRead() thread"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$500(Lcom/android/mms/data/Conversation;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$400(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$600(Lcom/android/mms/data/Conversation;)V

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "(read=0)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-lez v0, :cond_4

    const/4 v7, 0x1

    :goto_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v7, :cond_2

    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update read for thread uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v0, 0x3e8

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "Mms/Conversation"

    const-string v1, "update read DB : sleep"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/Conversation$2;->val$threadUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/Conversation;->access$700()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "(read=0)"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/Conversation$2;->this$0:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->access$800(Lcom/android/mms/data/Conversation;Z)V

    :cond_3
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v0, "Mms/Conversation"

    const-string v1, "markAsRead() thread"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move v7, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
