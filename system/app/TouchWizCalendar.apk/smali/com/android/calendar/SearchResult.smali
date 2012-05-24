.class public Lcom/android/calendar/SearchResult;
.super Landroid/app/Activity;
.source "SearchResult.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static DEBUG:Z


# instance fields
.field private mAgendaListView:Lcom/android/calendar/AgendaListView;

.field private mProviderStatusObserver:Landroid/database/ContentObserver;

.field private searchStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/SearchResult;->DEBUG:Z

    const-string v0, "content://com.android.calendar/searchresult"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/calendar/SearchResult$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SearchResult$1;-><init>(Lcom/android/calendar/SearchResult;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/SearchResult;->mProviderStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SearchResult;)Lcom/android/calendar/AgendaListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    return-object v0
.end method

.method private registerProviderStatusObserver()V
    .locals 4

    const-string v0, "-------------------------"

    const-string v1, "--------------registerProviderStatusObserver()-----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/SearchResult;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private startEventInfo(Landroid/content/Intent;)V
    .locals 15

    new-instance v13, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "dtend"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_2

    if-eqz v11, :cond_3

    new-instance v14, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v14}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    :try_start_0
    invoke-virtual {v14, v11}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v14, v9, v10}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v7

    :cond_2
    :goto_1
    const-string v0, "beginTime"

    invoke-virtual {v13, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    invoke-virtual {v13, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v13}, Lcom/android/calendar/SearchResult;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->finish()V

    return-void

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move-wide v7, v9

    goto :goto_1
.end method

.method private unregisterProviderStatusObserver()V
    .locals 2

    const-string v0, "-------------------------"

    const-string v1, "--------------unregisterProviderStatusObserver()-----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/SearchResult;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getSearchString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const-wide/32 v2, 0x400000

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    const v1, 0x7f0a0090

    invoke-virtual {p0, v1}, Lcom/android/calendar/SearchResult;->setTitle(I)V

    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/android/calendar/SearchResult;->setContentView(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/calendar/SearchResult;->startEventInfo(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const v1, 0x7f0f0009

    invoke-virtual {p0, v1}, Lcom/android/calendar/SearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaListView;

    iput-object v1, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v2, v2, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    move-object v0, p1

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/calendar/SearchResult;->startEventInfo(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/calendar/SearchResult;->unregisterProviderStatusObserver()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "searchStr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/calendar/SearchResult;->registerProviderStatusObserver()V

    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->onResume()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences_hide_declined"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v2, v0}, Lcom/android/calendar/AgendaListView;->setHideDeclinedEvents(Z)V

    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    new-instance v3, Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "searchStr"

    iget-object v1, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
