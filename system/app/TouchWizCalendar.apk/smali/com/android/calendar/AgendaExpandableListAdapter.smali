.class public Lcom/android/calendar/AgendaExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AgendaExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;,
        Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;,
        Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;,
        Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;,
        Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public final AGENDA_PROJECTION:[Ljava/lang/String;

.field private OFF_BY_ONE_BUG:I

.field private mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaActivity:Landroid/app/Activity;

.field private mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

.field public mAllChecked:Z

.field public mBeforeTodayChecked:Z

.field private mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

.field private mFooterView:Landroid/widget/LinearLayout;

.field private mForced:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mHideDeclined:Z

.field private mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

.field private mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

.field private mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

.field private mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

.field private mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private mShuttingDown:Z

.field private mStartDay:I

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AgendaExpandableListAdapter"

    sput-object v0, Lcom/android/calendar/AgendaExpandableListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/AgendaExpandableListView;)V
    .locals 8

    const v7, 0x7f030004

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "event_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "eventLocation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "allDay"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hasAlarm"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "calendar_color"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rrule"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "begin"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "end"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "selfAttendeeStatus"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "calendar_id"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "eventTimezone"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "startDay"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "endDay"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "contact_data_id"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "contact_id"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "contact_account_type"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "facebook_schedule_id"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "facebook_photo_url"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mCheckedIds:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mCheckedStrings:Ljava/util/HashMap;

    iput-boolean v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAllChecked:Z

    iput-boolean v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mBeforeTodayChecked:Z

    iput-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    iput-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    iput-object p2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;-><init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;-><init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;-><init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/calendar/AgendaActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaExpandableListView;->addHeaderView(Landroid/view/View;)V

    iput v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    goto :goto_0
.end method

.method private DayChange(IZII)I
    .locals 2

    const/4 v0, 0x0

    add-int v0, p1, p4

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const v1, 0x24dc87

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_1

    const v0, 0x24dc87

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0

    :pswitch_1
    const v1, 0x259d23

    if-le v0, v1, :cond_0

    if-eqz p2, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    const v0, 0x259d23

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaExpandableListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaExpandableListAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/AgendaExpandableListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/text/format/Time;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/AgendaExpandableListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/AgendaExpandableListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/AgendaExpandableListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/AgendaExpandableListAdapter;IZII)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/AgendaExpandableListAdapter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AgendaExpandableListAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/AgendaExpandableListAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/calendar/AgendaExpandableListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$2012(Lcom/android/calendar/AgendaExpandableListAdapter;I)I
    .locals 1

    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaExpandableListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mForced:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/AgendaExpandableListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->requery()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/AgendaExpandableListAdapter;IILandroid/text/format/Time;I)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(IILandroid/text/format/Time;I)Z

    move-result v0

    return v0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private calculateQueryDuration(II)I
    .locals 3

    const/16 v0, 0x3c

    iget v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    if-eqz v1, :cond_0

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    div-int v0, v1, v2

    :cond_0
    const/16 v1, 0x3c

    if-le v0, v1, :cond_2

    const/16 v0, 0x3c

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private doQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v14, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->calculateQueryDuration(II)I

    move-result v15

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->cancelOperation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v0, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-wide/from16 v17, v0

    const-wide/16 v2, -0x1

    cmp-long v2, v17, v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v3, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v7, v4, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v9, v4, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "dtstart ASC, title ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    neg-int v6, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v15}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v7, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v8, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    const-wide/16 v2, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "startDay ASC, begin ASC, title ASC"

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/SearchResult;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/SearchResult;

    invoke-virtual {v2}, Lcom/android/calendar/SearchResult;->getSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v3, 0x0

    sget-object v6, Lcom/android/calendar/Event;->PROJECTION_SEARCH:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dtstart ASC, title ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v7, 0x0

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    const-wide/16 v2, -0x1

    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "dtstart ASC, title ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "startDay ASC, begin ASC, title ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private formatDateString(I)Ljava/lang/String;
    .locals 7

    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v4, p1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    return-object v5

    :cond_1
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iget-object v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_0

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v0, v6, :cond_0

    monitor-exit v7

    :goto_0
    return-object v2

    :cond_1
    monitor-exit v7

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private isInRange(II)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8

    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_3

    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    monitor-exit v6

    move-object v4, v3

    :goto_1
    return-object v4

    :cond_2
    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_3
    :try_start_1
    iget v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    const/4 v1, 0x0

    :cond_5
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_7

    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    iget v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    move-object v3, v2

    :cond_7
    if-nez v2, :cond_5

    if-eqz v3, :cond_8

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    iput v1, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    :cond_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    goto :goto_1
.end method

.method private queueQuery(IILandroid/text/format/Time;I)Z
    .locals 2

    new-instance v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    invoke-direct {v0, p4}, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;-><init>(I)V

    iput-object p3, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    iput p1, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    iput p2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z
    .locals 4

    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->doQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private requery()V
    .locals 13

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v12, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v10, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v10, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    new-instance v11, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v11, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    const/4 v1, 0x0

    iget v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    iget v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method private updateHeaderFooter(II)V
    .locals 10

    const v9, 0x7f0f000f

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/calendar/AgendaActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0053

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0051

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x24dc87

    if-gt p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/AgendaExpandableListAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x259d23

    if-lt p2, v4, :cond_2

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public buildQuerySelection()Ljava/lang/String;
    .locals 3

    const-string v0, "deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND visible=1"

    iget-boolean v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHideDeclined:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildQuerySelectionforDelete(JJ)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "visible=1 AND deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND calendar_access_level>=500"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHideDeclined:Z

    if-eqz v2, :cond_0

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND dtstart>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    cmp-long v2, p3, v4

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND dtstart<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public buildQueryUriforDelete(JJII)Landroid/net/Uri;
    .locals 4

    const/16 v2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "content://com.android.calendar/instances/whenbydayandgroup"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public close()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->stopImageLoaderThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mShuttingDown:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->cancelOperation(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->cancelOperation(I)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->cancelOperation(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 5

    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_0

    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1

    iget v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 6

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    add-int/2addr v0, v3

    if-le v0, p1, :cond_0

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v5, v0, v3

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/AgendaByDayAdapter;->getMeetingCountPerOneDay(I)I

    move-result v4

    int-to-long v4, v4

    :goto_0
    return-wide v4

    :cond_1
    int-to-long v4, p2

    goto :goto_0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    add-int/2addr v0, v3

    if-le v0, p1, :cond_0

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget-object v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v7, v0, v3

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v6

    add-int/2addr v6, p2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6, p4, p5}, Lcom/android/calendar/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    monitor-exit v5

    :goto_0
    return-object v4

    :cond_1
    monitor-exit v5

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getChildrenCount(I)I
    .locals 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    add-int/2addr v0, v3

    if-le v0, p1, :cond_0

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v6, v0, v3

    sub-int v6, p1, v6

    invoke-virtual {v4, v6}, Lcom/android/calendar/AgendaByDayAdapter;->getMeetingCountPerOneDay(I)I

    move-result v4

    monitor-exit v5

    :goto_0
    return v4

    :cond_1
    monitor-exit v5

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getEventByPosition(II)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .locals 12

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v10}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v4

    add-int/2addr v1, v4

    if-le v1, p1, :cond_0

    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v11, v1, v4

    sub-int v11, p1, v11

    invoke-virtual {v10, v11}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v10

    add-int/2addr v10, p2

    add-int/lit8 v6, v10, 0x1

    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v10, v6}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v7

    const/high16 v10, -0x8000

    if-ne v7, v10, :cond_2

    move-object v0, v9

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    const/4 v5, 0x0

    if-gez v7, :cond_3

    neg-int v7, v7

    const/4 v5, 0x1

    :cond_3
    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v10, :cond_0

    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v7, v10, :cond_0

    :try_start_0
    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    if-eqz v5, :cond_4

    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    invoke-static {v8}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    :cond_4
    if-nez v5, :cond_1

    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v10, 0xb

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    goto :goto_0

    :cond_5
    move-object v0, v9

    goto :goto_0
.end method

.method public getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .locals 11

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v1}, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    iget v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    sub-int/2addr p1, v7

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v1, v5

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v8, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    const/high16 v7, -0x8000

    if-ne p1, v7, :cond_3

    move-object v1, v5

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    if-gez p1, :cond_4

    neg-int p1, p1

    const/4 v3, 0x1

    :cond_4
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v7, :cond_8

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge p1, v7, :cond_8

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x7

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    :cond_5
    :goto_2
    if-nez v3, :cond_1

    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0xb

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    goto :goto_0

    :cond_6
    move v0, v6

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_5

    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    invoke-static {v4}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_2

    :cond_8
    move-object v1, v5

    goto/16 :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    monitor-exit v4

    return v0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    add-int/2addr v0, v3

    if-le v0, p1, :cond_0

    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget-object v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v7, v0, v3

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v6

    invoke-virtual {v4, v6, p3, p4}, Lcom/android/calendar/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    monitor-exit v5

    :goto_0
    return-object v4

    :cond_1
    monitor-exit v5

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public refresh(Landroid/text/format/Time;Z)V
    .locals 18

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/AgendaExpandableListAdapter;->mForced:Z

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/AgendaExpandableListAdapter;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaExpandableListView;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v0, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-wide/from16 v16, v0

    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v3, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "COUNT(*) AS _count"

    aput-object v7, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v7, v4, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v9, v4, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v15, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v14, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->updateHeaderFooter(II)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v7, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v8, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(*) AS _count"

    aput-object v3, v6, v2

    const-wide/16 v2, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/SearchResult;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/SearchResult;

    invoke-virtual {v2}, Lcom/android/calendar/SearchResult;->getSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "COUNT(*) AS _count"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v7, 0x0

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(*) AS _count"

    aput-object v3, v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHideDeclined:Z

    return-void
.end method

.method public stopImageLoaderThread()V
    .locals 4

    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget-object v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaByDayAdapter;->stopImageLoaderThread()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
