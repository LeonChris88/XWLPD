.class public Lcom/android/calendar/AgendaDeleteActivity;
.super Landroid/app/Activity;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final HEADER_POS:I

.field private final HEADER_POS_ALL_BEFORE_TODAY:I

.field private eventTitle:I

.field private mAgendaListView:Lcom/android/calendar/AgendaListView;

.field private mAllBeforeCheckBox:Landroid/widget/CheckBox;

.field private mAllCheckBox:Landroid/widget/CheckBox;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteConfirm:Landroid/app/AlertDialog;

.field private mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

.field private mDeleteStart:Z

.field private mDeleteType:I

.field public mEndDay:I

.field public mEndMillis:J

.field private mEventIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsBeforeToday:Z

.field private mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

.field private mProgressCount:I

.field public mStartDay:I

.field public mStartMillis:J

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaDeleteActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;-><init>(Lcom/android/calendar/AgendaDeleteActivity;Lcom/android/calendar/AgendaDeleteActivity$1;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    iput-boolean v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    iput-boolean v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    iput v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->HEADER_POS:I

    iput v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->HEADER_POS_ALL_BEFORE_TODAY:I

    new-instance v0, Lcom/android/calendar/AgendaDeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaDeleteActivity$1;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-void
.end method

.method private CountOfBeforeToday()I
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "preferences_hide_declined"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "deleted=0 AND (eventStatus!=2 OR eventStatus is null)"

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v2, " AND visible=1 AND selfAttendeeStatus!=2"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v2, " AND calendar_access_level>=500"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND dtstart<="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return v0

    :cond_0
    const-string v2, " AND visible=1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/AgendaDeleteActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/AgendaDeleteActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/calendar/AgendaDeleteActivity;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AgendaDeleteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/AgendaDeleteActivity;Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/AgendaDeleteActivity;->queryEvent(Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-object v0
.end method

.method private queryEvent(Lcom/android/calendar/AgendaWindowAdapter;Ljava/util/HashMap;JJ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/AgendaWindowAdapter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;JJ)V"
        }
    .end annotation

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/calendar/AgendaWindowAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/calendar/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    const-wide/16 v9, -0x1

    const-wide/16 v19, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "startDay ASC, begin ASC, title ASC"

    move-object/from16 v5, v18

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v15, v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/calendar/AgendaDeleteActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "dtstart ASC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    const-string v5, "hi"

    const-string v6, "Exception Caught"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private updateAllCheckState(ZI)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v14}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    check-cast v14, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v14}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v14}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v14}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v10

    const/4 v9, 0x1

    const/4 v2, 0x1

    const/4 v11, 0x0

    :goto_0
    sub-int v14, v5, v10

    if-ge v11, v14, :cond_1

    invoke-virtual {v1, v11}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v6

    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v1, v11}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v12

    if-eqz v8, :cond_1

    iget-wide v14, v8, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v14, v14, v12

    if-gez v14, :cond_1

    const/4 v2, 0x0

    :cond_1
    const/4 v14, 0x2

    if-ne v10, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    iput-boolean v14, v1, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    return-void

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v12

    iget-wide v14, v8, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v14, v14, v12

    if-gez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateDeleteButtonStatus()V
    .locals 11

    iget-object v7, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v7}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v7}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private updateDeleteDailogStatus()V
    .locals 8

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v6}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v6}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method


# virtual methods
.method public getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter;

    return-object v1
.end method

.method public getDeleteType()I
    .locals 1

    iget v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    const-wide/32 v10, 0x400000

    invoke-virtual {v9, v10, v11}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    const v9, 0x7f030002

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    const-wide/16 v6, 0x0

    new-instance v9, Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/AgendaDeleteActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v10}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    if-eqz p1, :cond_0

    const-string v9, "key_restore_time"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-boolean v9, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v9, :cond_0

    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "beginTime"

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    sget-boolean v9, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v9, :cond_1

    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v9, :cond_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :cond_3
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v9, v6, v7}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v9, "beginTime"

    const-wide/16 v10, -0x1

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    const-string v9, "endTime"

    const-wide/16 v10, -0x1

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    const-string v9, "event_start_day"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    const-string v9, "event_end_day"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    const-string v9, "delete_type"

    const/4 v10, 0x5

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const v9, 0x7f0f0009

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AgendaListView;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setItemsCanFocus(Z)V

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setChoiceMode(I)V

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9, p0}, Lcom/android/calendar/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v9, 0x7f030003

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v9, 0x7f0f000c

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    const v9, 0x7f0f000d

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030003

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v9, 0x7f0f000c

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v9, 0x7f0a009d

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    const v9, 0x7f0f000d

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    new-instance v9, Lcom/android/calendar/AgendaDeleteActivity$2;

    invoke-direct {v9, p0}, Lcom/android/calendar/AgendaDeleteActivity$2;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9, v3}, Lcom/android/calendar/AgendaListView;->addHeaderView(Landroid/view/View;)V

    iget v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteType:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->CountOfBeforeToday()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9, v2}, Lcom/android/calendar/AgendaListView;->addHeaderView(Landroid/view/View;)V

    :goto_1
    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v10, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v10, v10, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    new-instance v10, Lcom/android/calendar/AgendaDeleteActivity$3;

    invoke-direct {v10, p0}, Lcom/android/calendar/AgendaDeleteActivity$3;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    new-instance v10, Lcom/android/calendar/AgendaDeleteActivity$4;

    invoke-direct {v10, p0}, Lcom/android/calendar/AgendaDeleteActivity$4;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v9, v10}, Lcom/android/calendar/AgendaListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v9, 0x7f0f0077

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a008d

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    const v9, 0x7f0f00c9

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    const v10, 0x7f0a0085

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    new-instance v10, Lcom/android/calendar/AgendaDeleteActivity$5;

    invoke-direct {v10, p0}, Lcom/android/calendar/AgendaDeleteActivity$5;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteButton:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    const v9, 0x7f0f00ca

    invoke-virtual {p0, v9}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v9, 0x7f0a0086

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(I)V

    new-instance v9, Lcom/android/calendar/AgendaDeleteActivity$6;

    invoke-direct {v9, p0}, Lcom/android/calendar/AgendaDeleteActivity$6;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    const v9, 0x7f0a009b

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_1
    const v9, 0x7f0a00bc

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_2
    const v9, 0x7f0a00bd

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_3
    const v9, 0x7f0a00be

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_4
    const v9, 0x7f0a009c

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    const-wide/16 v9, -0x1

    iput-wide v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v1, 0x0

    const v8, 0x7f0a0086

    const v5, 0x7f0a0075

    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :sswitch_0
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v7, :cond_2

    const v3, 0x7f0a0069

    iput v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a006b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$9;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$9;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$8;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$8;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const v3, 0x7f0a006a

    iput v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v3, v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressStyle(I)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setIcon(I)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberVisibility(I)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressPercentVisibility(I)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {p0, v8}, Lcom/android/calendar/AgendaDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/calendar/AgendaDeleteActivity$10;

    invoke-direct {v5, p0}, Lcom/android/calendar/AgendaDeleteActivity$10;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$11;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$11;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iput-boolean v7, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    iput v6, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    goto/16 :goto_0

    :sswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a008d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00b5

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/calendar/AgendaDeleteActivity$12;

    invoke-direct {v4, p0}, Lcom/android/calendar/AgendaDeleteActivity$12;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_3
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x3f2 -> :sswitch_2
        0x3f7 -> :sswitch_3
        0x3fc -> :sswitch_0
    .end sparse-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v8, 0x7f0f001b

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-nez p3, :cond_0

    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v4, 0x1

    :goto_0
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/AgendaDeleteActivity;->setAllItemChecked(Z)V

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    :cond_0
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    if-ne p3, v8, :cond_1

    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v4, 0x1

    :goto_1
    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0, v4}, Lcom/android/calendar/AgendaDeleteActivity;->setAllBeforeItemChecked(Z)V

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v7

    iget-object v8, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v8}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    sub-int v8, p3, v7

    invoke-virtual {v0, v8}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v2, 0x1

    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    sub-int v9, p3, v7

    invoke-direct {p0, v8, v9}, Lcom/android/calendar/AgendaDeleteActivity;->updateAllCheckState(ZI)V

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onLoadCompleted()V
    .locals 11

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v9}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v1

    iget-object v9, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v8, v9, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v8, v3}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v2}, Lcom/android/calendar/AgendaWindowAdapter;->setCheckIds(Ljava/util/HashMap;)V

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-direct {p0, v9, v10}, Lcom/android/calendar/AgendaDeleteActivity;->updateAllCheckState(ZI)V

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteButtonStatus()V

    invoke-direct {p0}, Lcom/android/calendar/AgendaDeleteActivity;->updateDeleteDailogStatus()V

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0069

    iput v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    :goto_1
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteConfirm:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a006a

    iput v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->eventTitle:I

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    iget v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteRunnable:Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x3fc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    const-string v3, "all_check"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    const-string v3, "before_today_check"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v2, "progress"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgressCount:I

    const-string v2, "delete_start"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    const-string v2, "event_ids_to_delete"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    aget-wide v3, v1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/AgendaDeleteActivity$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaDeleteActivity$7;-><init>(Lcom/android/calendar/AgendaDeleteActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v4, Lcom/android/calendar/AgendaDeleteActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    :cond_0
    const-string v4, "all_check"

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "before_today_check"

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "delete_running"

    iget-boolean v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mDeleteStart:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v4, :cond_1

    const-string v4, "progress"

    iget-object v5, p0, Lcom/android/calendar/AgendaDeleteActivity;->mProgress:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->getProgress()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [J

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity;->mEventIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "event_ids_to_delete"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_3
    return-void
.end method

.method public setAllBeforeItemChecked(Z)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTodayMillis(Landroid/content/Context;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v15}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v15

    check-cast v15, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v15}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/calendar/AgendaWindowAdapter;->setBeforeTodayChecked(Z)V

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    const/4 v9, 0x0

    :goto_0
    sub-int v15, v5, v8

    if-ge v9, v15, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v2, v9}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v10

    const-wide/16 v15, -0x1

    cmp-long v15, v10, v15

    if-eqz v15, :cond_1

    invoke-virtual {v2, v9}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_3

    iget-wide v15, v6, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v15, v15, v12

    if-gez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    add-int v16, v9, v8

    sub-int v16, v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/android/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_2

    const v15, 0x7f0f001b

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    if-eqz p1, :cond_4

    iget-wide v15, v6, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    iget-wide v15, v6, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/calendar/AgendaDeleteActivity;->updateAllCheckState(ZI)V

    :cond_6
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 13

    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getCount()I

    move-result v3

    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getHeaderViewsCount()I

    move-result v6

    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v11}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    check-cast v11, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v11}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->setAllChecked(Z)V

    invoke-virtual {v0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->setBeforeTodayChecked(Z)V

    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllBeforeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v11, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v7, 0x0

    :goto_0
    sub-int v11, v3, v6

    if-ge v7, v11, :cond_3

    invoke-virtual {v0, v7}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v8

    const/4 v4, 0x0

    const-wide/16 v11, -0x1

    cmp-long v11, v8, v11

    if-eqz v11, :cond_0

    invoke-virtual {v0, v7}, Lcom/android/calendar/AgendaWindowAdapter;->getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_2

    iget-object v11, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    add-int v12, v7, v6

    sub-int/2addr v12, v5

    invoke-virtual {v11, v12}, Lcom/android/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_1

    const v11, 0x7f0f001b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-wide v11, v4, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public updateEmtpy(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0f000b

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity;->mAllCheckBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
