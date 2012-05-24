.class Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxesLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
    }
.end annotation


# instance fields
.field private final mMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JI)V
    .locals 7

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-static {p4}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getSelection(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, p2, p3}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getSelectionArg(IJ)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mMode:I

    return-void
.end method

.method private getRealName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v1, p1

    if-nez p1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    :cond_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private static getSelection(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "accountKey=? AND type<64 AND flagVisible=1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "type<64 AND flagVisible=1 AND type NOT IN (3,4,5,8)"

    goto :goto_0
.end method

.method private static getSelectionArg(IJ)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method private declared-synchronized makeNewCursor(Landroid/database/Cursor;)V
    .locals 29

    monitor-enter p0

    :try_start_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;-><init>(Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;)V

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    const/16 v24, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-char v0, v4

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v23, :cond_1

    :cond_0
    const-string v24, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    :cond_1
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->getRealName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    :goto_1
    const/16 v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    const/16 v24, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    const/16 v24, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    const/16 v24, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    const/16 v24, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    const/16 v24, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    const/16 v24, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    const/16 v24, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_2
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v24

    monitor-exit p0

    throw v24

    :cond_3
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v24, 0x0

    move/from16 v0, v24

    iput v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v9, v24, -0x1

    :goto_4
    if-ltz v9, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    const/4 v14, 0x0

    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v24, v0

    iget-wide v0, v15, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-nez v24, :cond_6

    iget v0, v15, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    add-int/lit8 v24, v14, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_8

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    const/16 v24, 0x1f4

    move/from16 v0, v16

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    const-string v24, "MailboxesAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "remainder size : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mailboxList size : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "MailboxesAdapter"

    const-string v25, "100th loop count. we\'ll stop this loop forcefully"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v18, Landroid/database/MatrixCursor;

    sget-object v24, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    if-eqz v24, :cond_b

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    :goto_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    invoke-virtual/range {v18 .. v18}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v22

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-object v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v9, v0, :cond_c

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v25, v0

    add-int/lit8 v24, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v27, v0

    cmp-long v24, v25, v27

    if-nez v24, :cond_c

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_9
    new-instance v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;-><init>(Lcom/android/email/activity/MailboxesAdapter$1;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_d

    const/16 v24, 0x1

    :goto_a
    move/from16 v0, v24

    iput-boolean v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    new-instance v7, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;-><init>(Lcom/android/email/activity/MailboxesAdapter$1;)V

    iget-boolean v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v7, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v24

    iget-wide v0, v3, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_b
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$102(Ljava/util/HashMap;)Ljava/util/HashMap;

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$202(Ljava/util/HashMap;)Ljava/util/HashMap;

    goto/16 :goto_7

    :cond_c
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_9

    :cond_d
    const/16 v24, 0x0

    goto :goto_a

    :cond_e
    const-wide/16 v11, -0x1

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    if-nez v24, :cond_10

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$402(Ljava/util/HashMap;)Ljava/util/HashMap;

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$502(Ljava/util/HashMap;)Ljava/util/HashMap;

    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    const/16 v17, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    const/16 v19, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/email/activity/MailboxesAdapter;->access$602(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_10
    :try_start_2
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    :cond_12
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->hasChild:Z

    move/from16 v24, v0

    if-nez v24, :cond_13

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    goto/16 :goto_b

    :cond_13
    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$100()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v25

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$500()Ljava/util/HashMap;

    move-result-object v25

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/email/activity/MailboxesAdapter$MailboxExtraData;->isExpanded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_b
.end method

.method private declared-synchronized makeNewCursorForAllAccount(Landroid/database/Cursor;)V
    .locals 19

    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-ge v4, v14, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;-><init>(Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;)V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    iput v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_1
    const/4 v7, 0x0

    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    :goto_3
    if-ltz v4, :cond_4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v5, v14, :cond_2

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    iget-wide v14, v11, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    iget-wide v0, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    iget v14, v6, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v11, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v8, v14, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_5

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/16 v14, 0x1f4

    if-le v7, v14, :cond_7

    const-string v14, "MailboxesAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remainder size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mailboxList size : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "MailboxesAdapter"

    const-string v15, "100th loop count. we\'ll stop this loop forcefully"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v14, Lcom/android/email/activity/MailboxesAdapter;->HIERARCHY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v9, v14, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_9

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v13

    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-object v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->displayName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->unreadCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->messageCount:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->rowType:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->accountKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->flagNoSelected:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-wide v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v14, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->hierarchyLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v4, v14, :cond_8

    iget-wide v15, v2, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->mailboxId:J

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;

    iget-wide v0, v14, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->parentKey:J

    move-wide/from16 v17, v0

    cmp-long v14, v15, v17

    if-nez v14, :cond_8

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_7

    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    invoke-static {v9}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v14

    invoke-static {v14}, Lcom/android/email/activity/MailboxesAdapter;->access$702(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 3

    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->mMode:I

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->makeNewCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->makeNewCursorForAllAccount(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/MailboxesAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->onContentChanged()V

    :cond_0
    return-void
.end method
