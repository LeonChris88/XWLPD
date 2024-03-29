.class public Lcom/android/calendar/RecentlyParticipants;
.super Landroid/app/Activity;
.source "RecentlyParticipants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/RecentlyParticipants$EventAdapter;,
        Lcom/android/calendar/RecentlyParticipants$QueryHandler;
    }
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEmpty:Landroid/view/View;

.field private mEventAdapter:Lcom/android/calendar/RecentlyParticipants$EventAdapter;

.field private mEventList:Landroid/widget/ListView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mQueryHandler:Lcom/android/calendar/RecentlyParticipants$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Events._id AS _id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/RecentlyParticipants;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "attendeePhoneNumber"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/RecentlyParticipants;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/calendar/RecentlyParticipants$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/RecentlyParticipants$2;-><init>(Lcom/android/calendar/RecentlyParticipants;)V

    iput-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/calendar/RecentlyParticipants$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/RecentlyParticipants$3;-><init>(Lcom/android/calendar/RecentlyParticipants;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/RecentlyParticipants;)Lcom/android/calendar/RecentlyParticipants$EventAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEventAdapter:Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/RecentlyParticipants;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEventList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/RecentlyParticipants;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEmpty:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/RecentlyParticipants;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/RecentlyParticipants;->reloadEvents()V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/calendar/RecentlyParticipants;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private reloadEvents()V
    .locals 13

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v12, Landroid/text/format/Time;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Landroid/text/format/Time;->set(J)V

    iget v0, v12, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v12, Landroid/text/format/Time;->month:I

    invoke-virtual {v12, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v12, v6, v7}, Landroid/text/format/Time;->set(J)V

    iget v0, v12, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v12, Landroid/text/format/Time;->month:I

    invoke-virtual {v12, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    sget-object v3, Lcom/android/calendar/Utils;->EVENTS_HAVE_ATTENDEES_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visible=1 AND dtstart>="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "dtend"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "attendeeRelationship"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "<>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " or "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "attendeeRelationship"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is null)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "hasAttendeeData"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mQueryHandler:Lcom/android/calendar/RecentlyParticipants$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->cancelOperation(I)V

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mQueryHandler:Lcom/android/calendar/RecentlyParticipants$QueryHandler;

    sget-object v4, Lcom/android/calendar/RecentlyParticipants;->PROJECTION:[Ljava/lang/String;

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/RecentlyParticipants$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/calendar/RecentlyParticipants;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/RecentlyParticipants;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/android/calendar/RecentlyParticipants;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/RecentlyParticipants;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x7f0f0036

    invoke-virtual {p0, v0}, Lcom/android/calendar/RecentlyParticipants;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEventList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEventList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/calendar/RecentlyParticipants$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/RecentlyParticipants$1;-><init>(Lcom/android/calendar/RecentlyParticipants;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    const v1, 0x7f030027

    invoke-direct {v0, p0, p0, v1}, Lcom/android/calendar/RecentlyParticipants$EventAdapter;-><init>(Lcom/android/calendar/RecentlyParticipants;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEventAdapter:Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEventList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/RecentlyParticipants;->mEventAdapter:Lcom/android/calendar/RecentlyParticipants$EventAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/android/calendar/RecentlyParticipants;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mEmpty:Landroid/view/View;

    new-instance v0, Lcom/android/calendar/RecentlyParticipants$QueryHandler;

    iget-object v1, p0, Lcom/android/calendar/RecentlyParticipants;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/RecentlyParticipants$QueryHandler;-><init>(Lcom/android/calendar/RecentlyParticipants;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mQueryHandler:Lcom/android/calendar/RecentlyParticipants$QueryHandler;

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/RecentlyParticipants;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/calendar/RecentlyParticipants;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calendar/RecentlyParticipants;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/calendar/RecentlyParticipants;->reloadEvents()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/calendar/RecentlyParticipants;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/RecentlyParticipants;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/calendar/RecentlyParticipants;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/RecentlyParticipants;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
