.class Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessagesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessagesCursorLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;
    }
.end annotation


# instance fields
.field private final ONEDAY_TIMESTAMP:J

.field private final ONEMONTHS_TIMESTAMP:J

.field private final ONEWEEK_TIMESTAMP:J

.field private final THREEWEEKS_TIMESTAMP:J

.field private final TWOWEEKS_TIMESTAMP:J

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mListForSubTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$SubTitle;",
            ">;"
        }
    .end annotation
.end field

.field private mListPositionForAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessagesAdapter$Position;",
            ">;"
        }
    .end annotation
.end field

.field private final mMailboxId:J

.field private mSubtitleCount:I

.field private mUnreadCount:I

.field private versionDouble:D


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;I)V
    .locals 12

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MessagesAdapter;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEDAY_TIMESTAMP:J

    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEWEEK_TIMESTAMP:J

    const-wide/32 v0, 0x48190800

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->TWOWEEKS_TIMESTAMP:J

    const-wide/32 v0, 0x6c258c00

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->THREEWEEKS_TIMESTAMP:J

    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->ONEMONTHS_TIMESTAMP:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    iput-object p1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    sput p5, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-wide v7, v11, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-object v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    :goto_0
    return-void

    :cond_0
    iget-object v0, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkTimeStamp(JJ)I
    .locals 2

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const-wide/32 v0, 0x5265c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x5265c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const-wide/32 v0, 0xa4cb800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0xa4cb800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const-wide/32 v0, 0xf731400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-wide/32 v0, 0xf731400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const-wide/32 v0, 0x14997000

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-wide/32 v0, 0x14997000

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0x19bfcc00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-wide/32 v0, 0x19bfcc00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    const-wide/32 v0, 0x1ee62800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_6

    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    const-wide/32 v0, 0x1ee62800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    const-wide/32 v0, 0x240c8400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_7
    const-wide/32 v0, 0x240c8400

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x48190800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_8
    const-wide/32 v0, 0x48190800

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0x6c258c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_9
    const-wide/32 v0, 0x6c258c00

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    const-wide v0, 0x9a7ec800L

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_a

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_a
    const-wide v0, 0x9a7ec800L

    sub-long v0, p3, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_b
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private getSeparateStr2(JJ)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v3, 0x1ee62800

    sub-long v3, p3, v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private initListVariable()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    iput v0, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$102(I)I

    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$202(I)I

    invoke-static {v0}, Lcom/android/email/activity/MessagesAdapter;->access$302(I)I

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$500()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$500()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private isInt(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeSubTitleList(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 74

    const/16 v60, 0x0

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move-object/from16 v52, p1

    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    if-eqz v6, :cond_0

    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long v71, v6, v8

    const/16 v17, -0x1

    const/16 v33, -0x1

    const/16 v44, -0x1

    const-wide/16 v69, 0x0

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_1
    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v69

    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->checkTimeStamp(JJ)I

    move-result v17

    add-int/lit8 v60, v60, 0x1

    const/4 v6, -0x1

    move/from16 v0, v44

    if-eq v0, v6, :cond_2

    move/from16 v0, v44

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    :cond_2
    move/from16 v44, v17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr2(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v58

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v60, 0x0

    :cond_4
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    move-object/from16 v0, p0

    move-wide/from16 v1, v37

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->checkTimeStamp(JJ)I

    move-result v33

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move/from16 v0, v17

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    move-object/from16 v0, p0

    move-wide/from16 v1, v69

    move-wide/from16 v3, v71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->getSeparateStr2(JJ)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListDate:Ljava/lang/String;

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v58

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto/16 :goto_1

    :cond_6
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_f

    :cond_7
    const/16 v54, 0x0

    const/16 v36, 0x0

    const/16 v47, 0x0

    const/16 v21, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_8
    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    if-nez v54, :cond_9

    const-string v54, ""

    :cond_9
    add-int/lit8 v60, v60, 0x1

    if-eqz v47, :cond_a

    move-object/from16 v0, v47

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    move-object/from16 v47, v54

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v60, 0x0

    :cond_c
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_e

    const-string v6, "\u0002"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-object/from16 v0, v54

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    move-object/from16 v0, v54

    move-object/from16 v1, v61

    iput-object v0, v1, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto :goto_3

    :cond_e
    const-string v36, ""

    goto :goto_4

    :cond_f
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_17

    const/16 v51, -0x1

    const/16 v35, -0x1

    const/16 v46, -0x1

    const/16 v21, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_10
    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    add-int/lit8 v60, v60, 0x1

    const/4 v6, -0x1

    move/from16 v0, v46

    if-eq v0, v6, :cond_11

    move/from16 v0, v46

    move/from16 v1, v51

    if-eq v0, v1, :cond_12

    :cond_11
    move/from16 v46, v51

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_15

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x1

    move/from16 v0, v51

    if-eq v0, v6, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b3

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_6
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v60, 0x0

    :cond_13
    :goto_7
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b4

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_6

    :cond_15
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    move/from16 v0, v51

    move/from16 v1, v35

    if-eq v0, v1, :cond_13

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x1

    move/from16 v0, v51

    if-eq v0, v6, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b3

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_8
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b4

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_8

    :cond_17
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1f

    const/16 v19, -0x1

    const/16 v39, -0x1

    const/16 v48, -0x1

    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_18
    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    add-int/lit8 v60, v60, 0x1

    const/4 v6, -0x1

    move/from16 v0, v48

    if-eq v0, v6, :cond_19

    move/from16 v0, v48

    move/from16 v1, v19

    if-eq v0, v1, :cond_1a

    :cond_19
    move/from16 v48, v19

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_1d

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b6

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_a
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v60, 0x0

    :cond_1b
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_a

    :cond_1d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    move/from16 v0, v19

    move/from16 v1, v39

    if-eq v0, v1, :cond_1b

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b6

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_c
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_c

    :cond_1f
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_27

    const/4 v12, -0x1

    const/16 v32, -0x1

    const/16 v43, -0x1

    const/16 v21, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_20

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_20
    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v60, v60, 0x1

    const/4 v6, -0x1

    move/from16 v0, v43

    if-eq v0, v6, :cond_21

    move/from16 v0, v43

    if-eq v0, v12, :cond_22

    :cond_21
    move/from16 v43, v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_25

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x1

    if-ne v12, v6, :cond_24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b7

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_e
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v60, 0x0

    :cond_23
    :goto_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_d

    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_e

    :cond_25
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    move/from16 v0, v32

    if-eq v12, v0, :cond_23

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x1

    if-ne v12, v6, :cond_26

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b7

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_10
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto/16 :goto_f

    :cond_26
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f0801b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f0801b5

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_10

    :cond_27
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_31

    const/16 v24, -0x1

    const/16 v34, -0x1

    const/16 v45, -0x1

    const/16 v21, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_28

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_28
    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    add-int/lit8 v60, v60, 0x1

    const/4 v6, -0x1

    move/from16 v0, v45

    if-eq v0, v6, :cond_29

    move/from16 v0, v45

    move/from16 v1, v24

    if-eq v0, v1, :cond_2a

    :cond_29
    move/from16 v45, v24

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_2e

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_2c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031d

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_12
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    :cond_2b
    :goto_13
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_11

    :cond_2c
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_2d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031e

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_12

    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031c

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_12

    :cond_2e
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    move/from16 v0, v24

    move/from16 v1, v34

    if-eq v0, v1, :cond_2b

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_2f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031d

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_14
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto/16 :goto_13

    :cond_2f
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_30

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031e

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_14

    :cond_30
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031c

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_14

    :cond_31
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_3b

    const/16 v20, -0x1

    const/16 v40, -0x1

    const/16 v49, -0x1

    const/16 v21, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_32

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_32
    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v60, v60, 0x1

    const/4 v6, -0x1

    move/from16 v0, v49

    if-eq v0, v6, :cond_33

    move/from16 v0, v49

    move/from16 v1, v20

    if-eq v0, v1, :cond_34

    :cond_33
    move/from16 v49, v20

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_38

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_36

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080316

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080316

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_16
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v60, 0x0

    :cond_35
    :goto_17
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_15

    :cond_36
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_37

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080317

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080317

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_16

    :cond_37
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080318

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080318

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_16

    :cond_38
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v20

    move/from16 v1, v40

    if-eq v0, v1, :cond_35

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_39

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080316

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080316

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_18
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto/16 :goto_17

    :cond_39
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080317

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080317

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_18

    :cond_3a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080318

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080318

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_18

    :cond_3b
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_43

    const/16 v26, -0x1

    const/16 v41, -0x1

    const/16 v50, -0x1

    const/16 v21, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_52

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-object/from16 v0, v61

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3c

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_3c
    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    add-int/lit8 v60, v60, 0x1

    const/4 v6, -0x1

    move/from16 v0, v50

    if-eq v0, v6, :cond_3d

    move/from16 v0, v50

    move/from16 v1, v26

    if-eq v0, v1, :cond_3e

    :cond_3d
    move/from16 v50, v26

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isLast()Z

    move-result v6

    if-eqz v6, :cond_41

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v6, v26, 0x4

    if-eqz v6, :cond_40

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031f

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_1a
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v60, 0x0

    :cond_3f
    :goto_1b
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_19

    :cond_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080320

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080320

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_1a

    :cond_41
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    move/from16 v0, v26

    move/from16 v1, v41

    if-eq v0, v1, :cond_3f

    new-instance v58, Ljava/lang/StringBuffer;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v6, v26, 0x4

    if-eqz v6, :cond_42

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f08031f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f08031f

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    :goto_1c
    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move/from16 v0, v60

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    const/16 v60, 0x0

    goto/16 :goto_1b

    :cond_42
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v7, 0x7f080320

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const v6, 0x7f080320

    move-object/from16 v0, v58

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    goto :goto_1c

    :cond_43
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_53

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    const-wide/high16 v8, 0x402c

    cmpg-double v6, v6, v8

    if-gez v6, :cond_53

    new-instance v67, Ljava/util/HashMap;

    invoke-direct/range {v67 .. v67}, Ljava/util/HashMap;-><init>()V

    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    const/16 v29, 0x0

    const/16 v73, 0x0

    const/16 v64, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_47

    :cond_44
    new-instance v30, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;-><init>(Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;)V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v30

    iput-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    const/16 v6, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    const/16 v6, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    const/16 v6, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    const/16 v6, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    const/16 v6, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    const/16 v6, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    const/16 v6, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    const/16 v6, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    const/16 v6, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    const/16 v6, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    const/16 v6, 0x1b

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    const/16 v6, 0x1c

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    add-int/lit8 v73, v73, 0x1

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_45

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_45
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v67

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    if-nez v29, :cond_4a

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v67

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    move-object/from16 v0, v66

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_1d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_44

    :cond_47
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    move/from16 v0, v73

    invoke-direct {v13, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/16 v28, 0x0

    new-instance v55, Ljava/util/HashSet;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_48
    :goto_1e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/Long;

    move-object/from16 v0, v67

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    if-eqz v29, :cond_48

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashSet;->clear()V

    const/4 v6, 0x1

    move/from16 v0, v28

    if-le v0, v6, :cond_4f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$800()Z

    move-result v6

    if-eqz v6, :cond_4b

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    :goto_1f
    :try_start_0
    new-instance v57, Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    :goto_20
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_4c

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, ", "

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_49
    move-object/from16 v0, v61

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    move-object/from16 v0, v59

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    and-int/2addr v6, v7

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v21, v21, 0x1

    goto :goto_20

    :cond_4a
    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_46

    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_1d

    :cond_4b
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    goto :goto_1f

    :cond_4c
    :try_start_2
    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v56, v57

    :goto_21
    const/16 v21, 0x0

    :goto_22
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_4d

    move-object/from16 v0, v61

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v64, v64, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_22

    :catch_0
    move-exception v18

    :goto_23
    const-string v6, "MessagesAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : makeSubTitleList\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v61

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsRead:I

    goto :goto_21

    :cond_4d
    const/4 v6, 0x0

    move-object/from16 v0, v61

    iput-boolean v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    :cond_4e
    :goto_24
    const/16 v25, 0x0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_25
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    invoke-virtual {v13}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v53

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_25

    :cond_4f
    const/4 v6, 0x1

    move/from16 v0, v28

    if-ne v0, v6, :cond_4e

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    const/4 v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v64, v64, 0x1

    goto/16 :goto_24

    :cond_50
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    const/16 v29, 0x0

    goto/16 :goto_1e

    :cond_51
    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->clear()V

    const/16 v66, 0x0

    invoke-virtual/range {v67 .. v67}, Ljava/util/HashMap;->clear()V

    const/16 v67, 0x0

    move-object/from16 v52, v13

    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    :cond_52
    :goto_26
    return-object v52

    :cond_53
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_63

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->versionDouble:D

    const-wide/high16 v8, 0x402c

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_63

    new-instance v68, Ljava/util/HashMap;

    invoke-direct/range {v68 .. v68}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v29, 0x0

    const/16 v73, 0x0

    const/16 v64, 0x0

    const/16 v63, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_54
    new-instance v30, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;-><init>(Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;)V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    const/4 v6, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v30

    iput-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    const/4 v6, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    const/16 v6, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    const/16 v6, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    const/16 v6, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    const/16 v6, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    const/16 v6, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    const/16 v6, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    const/16 v6, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    const/16 v6, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    const/16 v6, 0x13

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    const/16 v6, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    const/16 v6, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    const/16 v6, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    const/16 v6, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    const/16 v6, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    const/16 v6, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    const/16 v6, 0x1a

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    const/16 v6, 0x1b

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    const/16 v6, 0x1c

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    const/16 v6, 0x1d

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, v30

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    add-int/lit8 v73, v73, 0x1

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_55

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_55
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    if-eqz v6, :cond_59

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    if-nez v29, :cond_58

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v68

    move-object/from16 v1, v31

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v73, v73, 0x1

    :goto_27
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_54

    const/16 v28, 0x0

    new-instance v55, Ljava/util/HashSet;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_56
    :goto_28
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/String;

    move-object/from16 v0, v68

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    if-eqz v29, :cond_56

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashSet;->clear()V

    const/4 v6, 0x1

    move/from16 v0, v28

    if-le v0, v6, :cond_56

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    :try_start_3
    new-instance v56, Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v21, 0x1

    :goto_29
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_5a

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v59

    iget-object v0, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    move-object/from16 v0, v55

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v6, ", "

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_57
    add-int/lit8 v21, v21, 0x1

    goto :goto_29

    :cond_58
    invoke-interface/range {v29 .. v30}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_27

    :cond_59
    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v68

    move-object/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v63, v63, 0x1

    add-int/lit8 v73, v73, 0x1

    goto/16 :goto_27

    :cond_5a
    :try_start_4
    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_28

    :catch_1
    move-exception v18

    const-string v6, "MessagesAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : makeSubTitleList\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemListSub:Ljava/lang/String;

    goto/16 :goto_28

    :cond_5b
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/email/activity/MessagesAdapter;->THREAD_PROJECTION:[Ljava/lang/String;

    move/from16 v0, v73

    invoke-direct {v13, v6, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/16 v28, 0x0

    new-instance v55, Ljava/util/HashSet;

    invoke-direct/range {v55 .. v55}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5c
    :goto_2a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    if-eqz v29, :cond_5c

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v55 .. v55}, Ljava/util/HashSet;->clear()V

    const/4 v6, 0x1

    move/from16 v0, v28

    if-le v0, v6, :cond_60

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    neg-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v6, v7}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->getThreadNameFromSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$800()Z

    move-result v6

    if-eqz v6, :cond_5d

    const-string v6, "("

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    :goto_2b
    const/16 v21, 0x0

    :goto_2c
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v21

    if-ge v0, v6, :cond_5e

    move-object/from16 v0, v61

    iget-object v7, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    iget-object v6, v6, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v64, v64, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_2c

    :cond_5d
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v61

    iput-object v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemCount:Ljava/lang/String;

    goto :goto_2b

    :cond_5e
    move-object/from16 v0, v61

    iput-object v14, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleId:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    iput-boolean v6, v0, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    move-object/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v61, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-direct {v0, v6}, Lcom/android/email/activity/MessagesAdapter$SubTitle;-><init>(Lcom/android/email/activity/MessagesAdapter$1;)V

    :cond_5f
    :goto_2d
    const/16 v25, 0x0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;

    invoke-virtual {v13}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v53

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->recordID:Ljava/lang/Long;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailBoxKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->displayName:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->subject:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->timeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagFavorite:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagAttachment:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->threadId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->typeMsg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->importance:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->smime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->messageType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->sFlag:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->lastVerb:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->convThreadId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReadConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagSetConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->followflagComConv:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->accountSchema:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->mailboxType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->snippet:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->flagReply:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->templateId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->serverId:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader$MessageData;->localRead:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2e

    :cond_60
    const/4 v6, 0x1

    move/from16 v0, v28

    if-ne v0, v6, :cond_5f

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    const/4 v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v64, v64, 0x1

    goto/16 :goto_2d

    :cond_61
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    const/16 v29, 0x0

    goto/16 :goto_2a

    :cond_62
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v15, 0x0

    invoke-virtual/range {v68 .. v68}, Ljava/util/HashMap;->clear()V

    const/16 v68, 0x0

    move-object/from16 v52, v13

    invoke-interface/range {v52 .. v52}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    goto/16 :goto_26

    :cond_63
    sget v6, Lcom/android/email/activity/MessagesAdapter;->sSortType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_52

    const-string v6, "Email"

    const-string v7, "SORT_BY_SEARCH "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    :goto_2f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    move/from16 v0, v21

    if-ge v0, v6, :cond_65

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v42, Lcom/android/email/activity/MessagesAdapter$Position;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessagesAdapter$Position;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_64

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    :cond_64
    add-int/lit8 v21, v21, 0x1

    goto :goto_2f

    :cond_65
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    goto/16 :goto_26

    :catch_2
    move-exception v18

    move-object/from16 v56, v57

    goto/16 :goto_23
.end method

.method private restoreSubTitleState()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v4, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v3, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleItemList:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iput-boolean v6, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v6, v6, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    iput-boolean v6, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsChecked:Z

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$900()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-boolean v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->subtitleListIsExpand:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;

    iget-object v5, v5, Lcom/android/email/activity/MessagesAdapter$SubTitle;->childItemIDList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mSubtitleCount:I

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$302(I)I

    iget v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mCount:I

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$102(I)I

    iget v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mUnreadCount:I

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$202(I)I

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListForSubTitle:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$502(Ljava/util/HashSet;)Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/email/activity/MessagesAdapter;->access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mListPositionForAdapter:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public getSeparateStr(JJ)Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEE"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MEA_JP"

    invoke-static {v4}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->isInt(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080441

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    cmp-long v4, p1, p3

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const/4 v4, 0x2

    if-ne v4, v0, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080442

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v4, v0, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080443

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    if-ne v4, v0, :cond_5

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080444

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    if-ne v4, v0, :cond_6

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080445

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const/4 v4, 0x6

    if-ne v4, v0, :cond_7

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080446

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_7
    const/4 v4, 0x7

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f080447

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_8
    cmp-long v4, p1, p3

    if-gez v4, :cond_9

    const-wide/32 v4, 0x5265c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_9

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801ad

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_9
    const-wide/32 v4, 0x5265c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_a

    const-wide/32 v4, 0xa4cb800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    :cond_a
    const-wide/32 v4, 0xa4cb800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_b

    const-wide/32 v4, 0xf731400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    :cond_b
    const-wide/32 v4, 0xf731400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_c

    const-wide/32 v4, 0x14997000

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    :cond_c
    const-wide/32 v4, 0x14997000

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_d

    const-wide/32 v4, 0x19bfcc00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    :cond_d
    const-wide/32 v4, 0x19bfcc00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_e

    const-wide/32 v4, 0x1ee62800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    :cond_e
    const-wide/32 v4, 0x1ee62800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_f

    const-wide/32 v4, 0x240c8400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_f

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_f
    const-wide/32 v4, 0x240c8400

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_10

    const-wide/32 v4, 0x48190800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_10

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_10
    const-wide/32 v4, 0x48190800

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_11

    const-wide/32 v4, 0x6c258c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_11

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_11
    const-wide/32 v4, 0x6c258c00

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_12

    const-wide v4, 0x9a7ec800L

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_12

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_12
    const-wide v4, 0x9a7ec800L

    sub-long v4, p3, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_13

    iget-object v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    const v5, 0x7f0801ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 6

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSortType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;->get(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/MessagesAdapter;->access$002(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->initListVariable()V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->makeSubTitleList(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->restoreSubTitleState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->mMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchSelectionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/android/email/activity/MessagesAdapter;->access$000()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessagesAdapter$MessagesCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
