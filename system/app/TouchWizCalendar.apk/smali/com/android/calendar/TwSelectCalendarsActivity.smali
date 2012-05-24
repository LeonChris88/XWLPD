.class public Lcom/android/calendar/TwSelectCalendarsActivity;
.super Landroid/app/Activity;
.source "TwSelectCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;,
        Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;
    }
.end annotation


# static fields
.field private static DEFAULT_DOMAIN:Ljava/lang/String;


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mCalendarList:Landroid/widget/ListView;

.field private mCalendarsAdapter:Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mIsGooglemailDomain:Z

.field private mObserver:Landroid/database/ContentObserver;

.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "TwSelectCalendarsActivity2"

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/TwSelectCalendarsActivity$5;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/TwSelectCalendarsActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->initAllCheckState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/TwSelectCalendarsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mIsGooglemailDomain:Z

    return v0
.end method

.method private initAllCheckState()V
    .locals 7

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    sub-int v6, v5, v4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v6, v5, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private startCalendarMetafeedSync()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateAllCheckState()V
    .locals 6

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0f000d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/TwSelectCalendarsActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    sget-object v0, Lcom/android/calendar/TwSelectCalendarsActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v1, "googlemail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mIsGooglemailDomain:Z

    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$1;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$2;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarsAdapter:Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarsAdapter:Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/calendar/TwSelectCalendarsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$3;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/calendar/TwSelectCalendarsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$4;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->startCalendarMetafeedSync()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v1, 0x2

    const v2, 0x7f0a008c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020164

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/calendar/TwSelectCalendarsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    const-string v0, "authorities"

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "authorities"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.calendar"

    aput-object v6, v4, v5

    const-string v5, "com.seven.provider.calendar"

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/calendar/TwSelectCalendarsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8, v3, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    sub-int v8, v3, v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v8, 0x6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v9, "visible"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v9, "sync_events"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v7, v9, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method
