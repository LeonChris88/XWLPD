.class Lcom/android/calendar/EditEvent$DateClickListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateClickListener"
.end annotation


# instance fields
.field private mTime:Landroid/text/format/Time;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V
    .locals 7

    const/16 v6, 0x7f4

    iput-object p1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    if-le v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    const/16 v2, 0x3b

    const/16 v3, 0x17

    const/16 v4, 0x1f

    const/16 v5, 0xb

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v7, 0xe

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/android/calendar/EditEvent;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1600(Lcom/android/calendar/EditEvent;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1, v7}, Lcom/android/calendar/EditEvent;->removeDialog(I)V

    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    new-instance v2, Lcom/android/calendar/EditEvent$DateListener;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v2, v3, p1}, Lcom/android/calendar/EditEvent$DateListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/EditEvent$DateChangeListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {v5, v6}, Lcom/android/calendar/EditEvent$DateChangeListener;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1, v0}, Lcom/android/calendar/EditEvent;->access$1502(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1500(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$DateClickListener;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->dateFormat(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateClickListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {v1, v7}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    goto :goto_0
.end method
