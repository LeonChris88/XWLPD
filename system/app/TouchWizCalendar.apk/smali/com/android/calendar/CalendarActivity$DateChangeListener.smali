.class Lcom/android/calendar/CalendarActivity$DateChangeListener;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$DateChangeListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/CalendarActivity$DateChangeListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-static {v0}, Lcom/android/calendar/CalendarActivity;->access$200(Lcom/android/calendar/CalendarActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/android/calendar/Utils;->dateFormat(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
