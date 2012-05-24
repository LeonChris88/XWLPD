.class public Lcom/android/email/activity/setup/DayOfTheWeek;
.super Landroid/widget/LinearLayout;
.source "DayOfTheWeek.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/DayOfTheWeek$dayViewClickListener;
    }
.end annotation


# static fields
.field public static friSelected:Z

.field public static monSelected:Z

.field public static satSelected:Z

.field public static sunSelected:Z

.field public static thuSelected:Z

.field public static tueSelected:Z

.field public static wedSelected:Z


# instance fields
.field private DaysView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private selectedDays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private t1:Landroid/widget/ToggleButton;

.field private t2:Landroid/widget/ToggleButton;

.field private t3:Landroid/widget/ToggleButton;

.field private t4:Landroid/widget/ToggleButton;

.field private t5:Landroid/widget/ToggleButton;

.field private t6:Landroid/widget/ToggleButton;

.field private t7:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    new-instance v0, Lcom/android/email/activity/setup/DayOfTheWeek$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/DayOfTheWeek$1;-><init>(Lcom/android/email/activity/setup/DayOfTheWeek;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->initDaySelector()V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "refresh_widget"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initDaySelector()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->selectedDays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    const v1, 0x7f100120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setWidgetProperties()V

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->DaysView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/DayOfTheWeek;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private setFriView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setMonView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setSatView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setSunView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    return-void
.end method

.method private setThuView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setTueView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method

.method private setWedView()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No way to come here!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_1
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t1:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_1

    :pswitch_1
    const-string v2, ""

    const-string v3, "tuesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-nez v2, :cond_2

    :goto_2
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_3
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t2:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_3

    :pswitch_2
    const-string v2, ""

    const-string v3, "wednesday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-nez v2, :cond_4

    :goto_4
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_5
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t3:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_5

    :pswitch_3
    const-string v2, ""

    const-string v3, "thursday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-nez v2, :cond_6

    :goto_6
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_7
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t4:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_7

    :pswitch_4
    const-string v2, ""

    const-string v3, "friday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-nez v2, :cond_8

    :goto_8
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_9
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t5:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_9

    :pswitch_5
    const-string v2, ""

    const-string v3, "saturday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-nez v2, :cond_a

    :goto_a
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    sget-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setTextColor(I)V

    :goto_b
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    aput-boolean v2, v0, v1

    goto/16 :goto_0

    :cond_a
    move v1, v0

    goto :goto_a

    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t6:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextColor(I)V

    goto :goto_b

    :pswitch_6
    const-string v2, ""

    const-string v3, "sunday selected------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    if-nez v2, :cond_c

    :goto_c
    sput-boolean v1, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->t7:Landroid/widget/ToggleButton;

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    sget-boolean v2, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    aput-boolean v2, v1, v0

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto :goto_c

    :pswitch_data_0
    .packed-switch 0x7f100120
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/setup/DayOfTheWeek;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setWidgetProperties()V
    .locals 2

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->monSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->tueSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->wedSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->thuSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->friSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->satSelected:Z

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->mPeakDaysArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    sput-boolean v0, Lcom/android/email/activity/setup/DayOfTheWeek;->sunSelected:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setMonView()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setTueView()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setWedView()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setThuView()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setFriView()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setSatView()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setSunView()V

    return-void
.end method
