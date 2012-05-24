.class public Lcom/android/calendar/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTIONARG:[Ljava/lang/String;


# instance fields
.field private eventsID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/AlertAdapter$AlertItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/calendar/AlertAdapter;

.field public mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mDismissAllListener:Landroid/view/View$OnClickListener;

.field private mDismissListener:Landroid/view/View$OnClickListener;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSnoozeAllButton:Landroid/widget/Button;

.field private mSnoozeAllListener:Landroid/view/View$OnClickListener;

.field private mSnoozeListener:Landroid/view/View$OnClickListener;

.field private mViewListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/calendar/AlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$1;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/calendar/AlertActivity$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$3;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/calendar/AlertActivity$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$4;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/calendar/AlertActivity$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$5;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/calendar/AlertActivity$6;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$6;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AlertActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AlertActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/AlertActivity;->setAllItemChecked(Z)V

    return-void
.end method

.method static synthetic access$300(JJJJI)Landroid/content/ContentValues;
    .locals 1

    invoke-static/range {p0 .. p8}, Lcom/android/calendar/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/AlertActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/AlertActivity;->dismissFiredAlarms()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AlertActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/calendar/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-object v0
.end method

.method private addListHeaderView()V
    .locals 4

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    new-instance v1, Lcom/android/calendar/AlertActivity$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/AlertActivity$2;-><init>(Lcom/android/calendar/AlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private dismissAlarm(J)V
    .locals 7

    const/4 v2, 0x0

    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private dismissFiredAlarms()V
    .locals 7

    const/4 v2, 0x0

    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "state=1"

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v2
.end method

.method private setAllItemChecked(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AlertAdapter$AlertItem;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/AlertAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, p1}, Lcom/android/calendar/AlertActivity;->updateButtonState(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    goto :goto_0
.end method

.method public isAnyOneSelected()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v2}, Lcom/android/calendar/AlertAdapter$AlertItem;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->setContentView(I)V

    const v1, 0x7f0a003e

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/calendar/AlertActivity$QueryHandler;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AlertActivity$QueryHandler;-><init>(Lcom/android/calendar/AlertActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    new-instance v1, Lcom/android/calendar/AlertAdapter;

    const v2, 0x7f030020

    invoke-direct {v1, p0, v2, p0}, Lcom/android/calendar/AlertAdapter;-><init>(Landroid/content/Context;ILcom/android/calendar/AlertActivity;)V

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    const v1, 0x7f0f0012

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/calendar/AlertActivity;->addListHeaderView()V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0f00c9

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    const v2, 0x7f0a005a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mSnoozeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    iget-object v0, v0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 8

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v4, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcom/android/calendar/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/android/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_0
    return-void
.end method

.method public updateAllCheckState()V
    .locals 5

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v3}, Lcom/android/calendar/AlertAdapter$AlertItem;->getChecked()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    :cond_3
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public updateButtonState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
