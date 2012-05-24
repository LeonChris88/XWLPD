.class public Lcom/android/email/activity/MessageOrderManager;
.super Ljava/lang/Object;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;,
        Lcom/android/email/activity/MessageOrderManager$Callback;,
        Lcom/android/email/activity/MessageOrderManager$MessageData;
    }
.end annotation


# static fields
.field static final ORDER_MANAGER_CURSOR_PROJECTION:[Ljava/lang/String;

.field static final ORDER_MANAGER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

.field private mClosed:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMessageId:J

.field private mCurrentPosition:I

.field private mCursor:Landroid/database/Cursor;

.field private mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

.field private final mMailboxId:J

.field private final mObserver:Landroid/database/ContentObserver;

.field private mTotalMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "threadId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/MessageOrderManager;->ORDER_MANAGER_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "threadId"

    aput-object v1, v0, v3

    const-string v1, "firstItem"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/MessageOrderManager;->ORDER_MANAGER_CURSOR_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-wide p2, p0, Lcom/android/email/activity/MessageOrderManager;->mMailboxId:J

    iput-object p4, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    new-instance v0, Lcom/android/email/activity/MessageOrderManager$1;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->getHandlerForContentObserver()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageOrderManager$1;-><init>(Lcom/android/email/activity/MessageOrderManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageOrderManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageOrderManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->onContentChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageOrderManager;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->openNewCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private adjustCursorPosition()V
    .locals 5

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessageNotFound()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    goto :goto_0
.end method

.method private cancelTask()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    return-void
.end method

.method private closeCursor()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method private isTaskRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContentChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    :cond_0
    return-void
.end method

.method private openNewCursor()Landroid/database/Cursor;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/MessageOrderManager;->ORDER_MANAGER_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->getQuerySelection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/email/activity/MessagesAdapter;->SORT_QUERY:[Ljava/lang/String;

    sget v8, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    aget-object v5, v5, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageOrderManager;->remakeCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v6, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method private remakeCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 16

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v13, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_0
    new-instance v6, Lcom/android/email/activity/MessageOrderManager$MessageData;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/email/activity/MessageOrderManager$MessageData;-><init>(Lcom/android/email/activity/MessageOrderManager;)V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v6, Lcom/android/email/activity/MessageOrderManager$MessageData;->recordID:Ljava/lang/Long;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v6, Lcom/android/email/activity/MessageOrderManager$MessageData;->threadId:Ljava/lang/Long;

    const/4 v14, 0x0

    iput v14, v6, Lcom/android/email/activity/MessageOrderManager$MessageData;->isFirstItemInConv:I

    add-int/lit8 v13, v13, 0x1

    iget-object v14, v6, Lcom/android/email/activity/MessageOrderManager$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x1

    iput v14, v6, Lcom/android/email/activity/MessageOrderManager$MessageData;->isFirstItemInConv:I

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v6, Lcom/android/email/activity/MessageOrderManager$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v12, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v6, Lcom/android/email/activity/MessageOrderManager$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v14, Lcom/android/email/activity/MessageOrderManager;->ORDER_MANAGER_CURSOR_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v14, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v14, v15}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageOrderManager$MessageData;

    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    iget-object v14, v2, Lcom/android/email/activity/MessageOrderManager$MessageData;->recordID:Ljava/lang/Long;

    invoke-virtual {v8, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-object v14, v2, Lcom/android/email/activity/MessageOrderManager$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v14, v2, Lcom/android/email/activity/MessageOrderManager$MessageData;->isFirstItemInConv:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    :cond_4
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    const/4 v12, 0x0

    return-object v1
.end method

.method private setCurrentMessageIdFromCursor()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    :cond_0
    return-void
.end method


# virtual methods
.method public canMoveToNewer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canMoveToOlder()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    return-void
.end method

.method public getCurrentMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    return-wide v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    return v0
.end method

.method getHandlerForContentObserver()Landroid/os/Handler;
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mMailboxId:J

    return-wide v0
.end method

.method getQuerySelection()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageOrderManager;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/MessageOrderManager;->mMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchSelectionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotalMessageCount()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    return v0
.end method

.method public moveTo(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V

    :cond_0
    return-void
.end method

.method public moveToNewer()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->getHideViewPosition()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    iget v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public moveToOlder()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->getHideViewPosition()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    iget v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-ne v2, v1, :cond_0

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    iget-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v2}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method onCursorOpenDone(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    throw v0
.end method

.method startQuery()V
    .locals 2

    new-instance v0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;-><init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startTask()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->startQuery()V

    return-void
.end method
