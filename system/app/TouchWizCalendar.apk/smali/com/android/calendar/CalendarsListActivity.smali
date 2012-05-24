.class public Lcom/android/calendar/CalendarsListActivity;
.super Landroid/app/Activity;
.source "CalendarsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarsListActivity$ItemView;,
        Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;,
        Lcom/android/calendar/CalendarsListActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static DEFAULT_DOMAIN:Ljava/lang/String;

.field private static mCurrentId:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCalendarListView:Landroid/widget/ListView;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCancelButton:Landroid/widget/Button;

.field private mIsGooglemailDomain:Z

.field private mOkButton:Landroid/widget/Button;

.field private mQueryHandler:Lcom/android/calendar/CalendarsListActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "CalendarsListActivity"

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarsListActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/CalendarsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarsListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/calendar/CalendarsListActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/calendar/CalendarsListActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/calendar/CalendarsListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/calendar/CalendarsListActivity;->mIsGooglemailDomain:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/calendar/CalendarsListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/calendar/CalendarsListActivity;->mIsGooglemailDomain:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/CalendarsListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarsListActivity;->onRadioChecked(I)V

    return-void
.end method

.method private onRadioChecked(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    sput v2, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p1, :cond_2

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "_id"

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/CalendarsListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v0, "_id"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    :goto_0
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/calendar/CalendarsListActivity$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/CalendarsListActivity$1;-><init>(Lcom/android/calendar/CalendarsListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    const v3, 0x7f0a0075

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    const v3, 0x7f0a0076

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/CalendarsListActivity$QueryHandler;-><init>(Lcom/android/calendar/CalendarsListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mQueryHandler:Lcom/android/calendar/CalendarsListActivity$QueryHandler;

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mQueryHandler:Lcom/android/calendar/CalendarsListActivity$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_access_level>=500"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "calendar_id"

    const-wide/16 v3, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    goto/16 :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "calendar_id"

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "calendar_id"

    sget v1, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
