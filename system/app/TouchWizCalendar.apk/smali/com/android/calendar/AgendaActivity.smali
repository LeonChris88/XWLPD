.class public Lcom/android/calendar/AgendaActivity;
.super Landroid/app/Activity;
.source "AgendaActivity.java"

# interfaces
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaActivity$DateListener;,
        Lcom/android/calendar/AgendaActivity$DateChangeListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static final EVENT_TEXT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAgendaListView:Lcom/android/calendar/AgendaInterface;

.field private mBodyContainer:Landroid/widget/LinearLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCreateEvent:Landroid/view/View;

.field private mDatePicker:Landroid/app/Dialog;

.field private mDayButton:Landroid/widget/Button;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPick:Z

.field private mListButton:Landroid/widget/Button;

.field private mMonthButton:Landroid/widget/Button;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field private mTabPadding:I

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mWeekButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "dtstart"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contactEventType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaActivity;->EVENT_TEXT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    new-instance v0, Lcom/android/calendar/AgendaActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$1;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/calendar/AgendaActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$2;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/calendar/AgendaActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AgendaActivity$3;-><init>(Lcom/android/calendar/AgendaActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaActivity;)Landroid/text/format/Time;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/AgendaActivity;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->updateAddButtonStatus()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AgendaActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaActivity;->getEventText(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaActivity;->makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getEventText(Landroid/net/Uri;)Ljava/lang/String;
    .locals 19

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/calendar/AgendaActivity;->EVENT_TEXT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v7, 0x1

    :goto_1
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v11, 0x1

    :goto_2
    const v6, 0x18016

    if-eqz v7, :cond_7

    or-int/lit16 v6, v6, 0x2000

    :cond_2
    :goto_3
    const-wide/16 v17, 0x0

    cmp-long v1, v4, v17

    if-nez v1, :cond_3

    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    new-instance v13, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v13}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v13, v9}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    invoke-virtual {v13, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v4

    :cond_3
    :goto_5
    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    or-int/lit16 v6, v6, 0xb01

    if-eqz v11, :cond_2

    or-int/lit16 v6, v6, 0x2000

    goto :goto_3

    :catch_0
    move-exception v10

    :try_start_3
    invoke-virtual {v10}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_8
    move-wide v4, v2

    goto :goto_5
.end method

.method private makeVCalendar(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lcom/android/calendar/vcal/VCalManager;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/calendar/vcal/VCalManager;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/calendar/AgendaActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBodyView()V
    .locals 4

    const v3, 0x7f0f0009

    const v2, 0x7f0f0008

    const/16 v1, 0x8

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaListView;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v1, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaListView;->getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setupPickView()V

    :goto_0
    const v0, 0x7f0f007c

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mCreateEvent:Landroid/view/View;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mCreateEvent:Landroid/view/View;

    new-instance v1, Lcom/android/calendar/AgendaActivity$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$4;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaExpandableListView;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaExpandableListView;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v1, Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaExpandableListView;->getExpandableListAdapter()Lcom/android/calendar/AgendaExpandableListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setupTabView()V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setEmptyListLandscapeLayout()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setEmptyListPortraitLayout()V

    goto :goto_0
.end method

.method private setEmptyListLandscapeLayout()V
    .locals 3

    const v2, 0x7f0f007c

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setEmptyListPortraitLayout()V
    .locals 4

    const v2, 0x7f0f007c

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setEventList()V
    .locals 7

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "preferences_hide_declined"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v4, v1}, Lcom/android/calendar/AgendaInterface;->setHideDeclinedEvents(Z)V

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/calendar/AgendaInterface;->goTo(Landroid/text/format/Time;Z)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v4, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V

    goto :goto_0
.end method

.method private setLandscapeLayout()V
    .locals 15

    const v13, 0x7f02006b

    const/4 v14, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f090017

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v9, v11

    const v11, 0x7f09003d

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v7, v11

    const v11, 0x7f09003e

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mBodyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v12, 0x7f020075

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    const v12, 0x7f020085

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v11, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v13, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v11, v14, v12, v14, v13}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v11, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v11, 0x7f0f007c

    invoke-virtual {p0, v11}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v14, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPortraitLayout()V
    .locals 14

    const v12, 0x7f02006b

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f090017

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    const v10, 0x7f090018

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mBodyContainer:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v11, 0x7f020075

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setGravity(I)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    const v11, 0x7f020085

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    invoke-virtual {v10, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    iget v11, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    iget v12, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    invoke-virtual {v10, v13, v11, v13, v12}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v10, 0x7f0f007c

    invoke-virtual {p0, v10}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const v10, 0x7f090029

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupPickView()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v2, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v2, v4}, Lcom/android/calendar/AgendaListView;->setItemsCanFocus(Z)V

    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v2, Lcom/android/calendar/AgendaListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v2, Lcom/android/calendar/AgendaListView;

    new-instance v3, Lcom/android/calendar/AgendaActivity$11;

    invoke-direct {v3, p0}, Lcom/android/calendar/AgendaActivity$11;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v2, 0x7f0f0002

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f00c8

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0f00c9

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0a0092

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/android/calendar/AgendaActivity$12;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaActivity$12;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const v2, 0x7f0f00ca

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a0093

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/android/calendar/AgendaActivity$13;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaActivity$13;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupTabView()V
    .locals 2

    const v0, 0x7f0f0001

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mBodyContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0002

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mListButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$7;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0f0005

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDayButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$8;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0004

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mWeekButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$9;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$9;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0003

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mMonthButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/AgendaActivity$10;

    invoke-direct {v1, p0}, Lcom/android/calendar/AgendaActivity$10;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateAddButtonStatus()V
    .locals 12

    iget-object v8, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v8, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v8}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->getCheckIds()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const v8, 0x7f0f00c9

    invoke-virtual {p0, v8}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getAgendaAdapter()Lcom/android/calendar/AgendaWindowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    check-cast v0, Lcom/android/calendar/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView;->getWindowAdapter()Lcom/android/calendar/AgendaWindowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAllDay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstJulianDay()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLastJulianDay()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedDayInMillis()J
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v3}, Lcom/android/calendar/AgendaInterface;->getSelectedTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    iput v5, v2, Landroid/text/format/Time;->minute:I

    iput v5, v2, Landroid/text/format/Time;->second:I

    iput v5, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public getSelectedTime()J
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v3, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v5}, Lcom/android/calendar/AgendaInterface;->getSelectedTime()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    :cond_0
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    if-ne v2, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    iget v5, v3, Landroid/text/format/Time;->hour:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/text/format/Time;->hour:I

    :goto_0
    iput v9, v3, Landroid/text/format/Time;->minute:I

    iput v9, v3, Landroid/text/format/Time;->second:I

    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    return-wide v5

    :cond_1
    const/16 v5, 0x8

    iput v5, v3, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public getStartMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .locals 2

    invoke-static {p1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/calendar/AgendaInterface;->goTo(Landroid/text/format/Time;Z)V

    goto :goto_0
.end method

.method public goToToday()V
    .locals 3

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;ZZ)V

    return-void
.end method

.method protected isPick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "date"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "allday"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setLandscapeLayout()V

    :goto_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setPortraitLayout()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const-wide/32 v5, 0x400000

    invoke-virtual {v4, v5, v6}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    :goto_0
    const-wide/16 v1, 0x0

    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    if-eqz p1, :cond_0

    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sget-boolean v4, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v4, :cond_0

    :cond_0
    cmp-long v4, v1, v7

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    sget-boolean v4, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    :cond_1
    cmp-long v4, v1, v7

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v4, :cond_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_3
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setBodyView()V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/AgendaActivity;->mNoTitleLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/calendar/AgendaActivity;->mTabPadding:I

    return-void

    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/calendar/AgendaActivity;->mIsPick:Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v1

    :sswitch_0
    new-instance v7, Landroid/text/format/Time;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getSelectedTime()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Landroid/text/format/Time;->set(J)V

    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/AgendaActivity$DateListener;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/AgendaActivity$DateListener;-><init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaActivity$1;)V

    iget v3, v7, Landroid/text/format/Time;->year:I

    iget v4, v7, Landroid/text/format/Time;->month:I

    iget v5, v7, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget v2, v7, Landroid/text/format/Time;->year:I

    iget v3, v7, Landroid/text/format/Time;->month:I

    iget v4, v7, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/AgendaActivity$DateChangeListener;

    invoke-direct {v5, p0}, Lcom/android/calendar/AgendaActivity$DateChangeListener;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v2, Lcom/android/calendar/AgendaActivity$6;

    invoke-direct {v2, p0}, Lcom/android/calendar/AgendaActivity$6;-><init>(Lcom/android/calendar/AgendaActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_0

    :sswitch_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0094

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0075

    invoke-virtual {v6, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;ZZ)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :pswitch_0
    const/16 v1, 0x101

    invoke-virtual {p0, v1}, Lcom/android/calendar/AgendaActivity;->showDialog(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaInterface;

    invoke-interface {v0}, Lcom/android/calendar/AgendaInterface;->onPause()V

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getSelectedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    check-cast p2, Landroid/app/DatePickerDialog;

    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v1, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->setEventList()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AgendaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected windowOnLoadLoadCompleted(Lcom/android/calendar/AgendaWindowAdapter;)V
    .locals 1

    new-instance v0, Lcom/android/calendar/AgendaActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/AgendaActivity$5;-><init>(Lcom/android/calendar/AgendaActivity;Lcom/android/calendar/AgendaWindowAdapter;)V

    invoke-virtual {p1, v0}, Lcom/android/calendar/AgendaWindowAdapter;->setOnLoadCompleteListener(Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)V

    return-void
.end method
