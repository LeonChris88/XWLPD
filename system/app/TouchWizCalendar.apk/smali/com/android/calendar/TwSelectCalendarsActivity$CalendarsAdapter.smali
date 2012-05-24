.class Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;
.super Landroid/widget/CursorAdapter;
.source "TwSelectCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-nez v7, :cond_0

    const v7, -0x222223

    :cond_0
    const v8, 0x7f0f001a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "My calendar"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v8}, Lcom/android/calendar/TwSelectCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00c0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const v8, 0x7f0f0015

    invoke-direct {p0, p1, v8, v4}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    const v8, 0x7f0f001e

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v8, 0x7f0f001f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v8, 0x1

    if-eq v3, v8, :cond_4

    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gmail"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-static {v8}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$700(Lcom/android/calendar/TwSelectCalendarsActivity;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "gmail"

    const-string v9, "googlemail"

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v8, Lcom/android/calendar/Utils;->CALENDAR_TYPE_IMAGE_SMALL:[I

    invoke-static {v2, v0}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    aget v6, v8, v9

    if-lez v6, :cond_3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v8, 0x7f0f0020

    invoke-direct {p0, p1, v8, v0}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
