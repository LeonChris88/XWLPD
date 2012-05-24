.class public Lcom/android/calendar/ParticipantScheduleActivity;
.super Landroid/app/Activity;
.source "ParticipantScheduleActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private final TAG:Ljava/lang/String;

.field doAnimate:Ljava/lang/Boolean;

.field private isClick:Z

.field private mAccountId:J

.field private mArrowLeft:Landroid/widget/Button;

.field private mArrowRight:Landroid/widget/Button;

.field private mEndJulianDay:I

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIsSwitching:Z

.field mNameStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field private mOwnerAccount:Ljava/lang/String;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mScheduleEmails:[Ljava/lang/String;

.field mScheduleStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScheduleTime:Landroid/text/format/Time;

.field private mStartJulianDay:I

.field private mTime:Landroid/text/format/Time;

.field private mTimezone:Ljava/lang/String;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;

.field mergedFreeBusy:[Ljava/lang/String;

.field newNames:[Ljava/lang/String;

.field private noData:Ljava/lang/String;

.field private psStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.exchange.directory.provider/resolverecipients/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/ParticipantScheduleActivity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "ParticipantsScheduleActivity"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->TAG:Ljava/lang/String;

    const-string v0, "444444444444444444444444444444444444444444444444"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->noData:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->isClick:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mAccountId:J

    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mIsSwitching:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleEmails:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->doAnimate:Ljava/lang/Boolean;

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/ParticipantScheduleActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->isClick:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/calendar/ParticipantScheduleActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/ParticipantScheduleActivity;->isClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->noData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ParticipantScheduleActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOwnerAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/ParticipantScheduleActivity;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method private getSchedule(Landroid/text/format/Time;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 34

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v24, v0

    :cond_0
    add-int/lit8 v2, v24, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mOwnerAccount:Ljava/lang/String;

    aput-object v5, v2, v4

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->newNames:[Ljava/lang/String;

    add-int/lit8 v4, v19, 0x1

    aget-object v5, p2, v19

    aput-object v5, v2, v4

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    array-length v15, v0

    :cond_2
    add-int/lit8 v2, v15, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    const/16 v19, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mergedFreeBusy:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/ParticipantScheduleActivity;->noData:Ljava/lang/String;

    aput-object v4, v2, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    const-string v2, "content://com.android.email.provider/account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ParticipantScheduleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "emailAddress = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mOwnerAccount:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_4

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mAccountId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    const/4 v2, 0x5

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v8, v2

    const/4 v2, 0x1

    const-string v4, "to"

    aput-object v4, v8, v2

    const/4 v2, 0x2

    const-string v4, "displayName"

    aput-object v4, v8, v2

    const/4 v2, 0x3

    const-string v4, "email"

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "mergedFreeBusy"

    aput-object v4, v8, v2

    new-instance v28, Ljava/lang/StringBuffer;

    const-string v2, "accountId=? AND startTime=\'?\' AND endTime=\'?\' AND "

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p3, :cond_d

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    aget-object v33, p3, v19

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    const/16 v23, 0x0

    const-string v2, "<"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, ">"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "<"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, ">"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    :cond_6
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v14, 0x0

    if-eqz v23, :cond_c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_7

    aget-char v13, v22, v20

    invoke-static {v13}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v14, 0x1

    :cond_7
    if-eqz v14, :cond_b

    const-string v2, ">"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    :goto_4
    aput-object v33, p3, v19

    const-string v2, " OR to=\'"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v4, p3, v19

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_b
    const-string v2, "<"

    const-string v4, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ">"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    goto :goto_4

    :cond_c
    const-string v2, "<"

    const-string v4, ""

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ">"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    goto :goto_4

    :cond_d
    if-eqz v29, :cond_e

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_e

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(to=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mTimezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v32

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    sub-int/2addr v2, v4

    int-to-long v0, v2

    move-wide/from16 v25, v0

    new-instance v30, Landroid/text/format/Time;

    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput v2, v0, Landroid/text/format/Time;->hour:I

    const/4 v2, 0x0

    move-object/from16 v0, v30

    iput v2, v0, Landroid/text/format/Time;->minute:I

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sub-long v4, v4, v25

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    const-string v2, "%Y-%m-%dT%H:%M:%S.000Z"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    const/16 v2, 0x17

    move-object/from16 v0, v16

    iput v2, v0, Landroid/text/format/Time;->hour:I

    const/16 v2, 0x3b

    move-object/from16 v0, v16

    iput v2, v0, Landroid/text/format/Time;->minute:I

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    sub-long v4, v4, v25

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    const-string v2, "%Y-%m-%dT%H:%M:%S.000Z"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mAccountId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v2

    const/4 v2, 0x1

    aput-object v31, v10, v2

    const/4 v2, 0x2

    aput-object v17, v10, v2

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleEmails:[Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/ParticipantScheduleActivity;->doAnimate:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleTime:Landroid/text/format/Time;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    new-instance v2, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ParticipantScheduleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/android/calendar/ParticipantScheduleActivity$QueryHandler;-><init>(Lcom/android/calendar/ParticipantScheduleActivity;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/calendar/ParticipantScheduleActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v2, "to=\'"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mOwnerAccount:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5
.end method


# virtual methods
.method public goTo(Landroid/text/format/Time;Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mIsSwitching:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->psStr:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->psStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->psStr:Ljava/lang/String;

    const-string v3, "/~/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "/,/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->psStr:Ljava/lang/String;

    const-string v3, "/~/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, "/,/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/calendar/ParticipantScheduleActivity;->getSchedule(Landroid/text/format/Time;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleActivity;->showErrorMessage()V

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleActivity;->finish()V

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Lcom/android/calendar/ParticipantScheduleView;

    invoke-direct {v0, p0}, Lcom/android/calendar/ParticipantScheduleView;-><init>(Lcom/android/calendar/ParticipantScheduleActivity;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/ParticipantScheduleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v0}, Lcom/android/calendar/ParticipantScheduleView;->clearScreen()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mIsSwitching:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mIsSwitching:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f030024

    invoke-virtual {p0, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "owner_account"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOwnerAccount:Ljava/lang/String;

    const-string v5, "recipients"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->psStr:Ljava/lang/String;

    const-string v5, "start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v5, "timezone"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTimezone:Ljava/lang/String;

    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTimezone:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v5, v3, v4}, Landroid/text/format/Time;->set(J)V

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mStartJulianDay:I

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mEndJulianDay:I

    const v5, 0x7f040002

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    const v5, 0x7f040003

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v5, 0x7f040004

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    const v5, 0x7f040005

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v5, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v5, 0x7f0f0030

    invoke-virtual {p0, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mArrowLeft:Landroid/widget/Button;

    const v5, 0x7f0f0034

    invoke-virtual {p0, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mArrowRight:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mArrowLeft:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/ParticipantScheduleActivity$1;

    invoke-direct {v6, p0}, Lcom/android/calendar/ParticipantScheduleActivity$1;-><init>(Lcom/android/calendar/ParticipantScheduleActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mArrowRight:Landroid/widget/Button;

    new-instance v6, Lcom/android/calendar/ParticipantScheduleActivity$2;

    invoke-direct {v6, p0}, Lcom/android/calendar/ParticipantScheduleActivity$2;-><init>(Lcom/android/calendar/ParticipantScheduleActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0f0035

    invoke-virtual {p0, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewSwitcher;

    iput-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v2, "beginTime"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/ParticipantScheduleActivity;->goTo(Landroid/text/format/Time;Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "beginTime"

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setArrowButtonVisibility()V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    iget-wide v6, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mArrowLeft:Landroid/widget/Button;

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mStartJulianDay:I

    if-le v0, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mArrowRight:Landroid/widget/Button;

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mEndJulianDay:I

    if-ge v0, v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public showErrorMessage()V
    .locals 2

    const v0, 0x7f0a014c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showNextParticipants(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v0}, Lcom/android/calendar/ParticipantScheduleView;->getFirstNameIndex()I

    move-result v2

    if-ge v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/ParticipantScheduleView;

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mNameStr:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mScheduleStr:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/calendar/ParticipantScheduleView;->setSelectedDay(Landroid/text/format/Time;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleActivity;->setArrowButtonVisibility()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
