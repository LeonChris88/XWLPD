.class Lcom/android/calendar/DayEventListActivity$2;
.super Landroid/database/ContentObserver;
.source "DayEventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$2;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$2;->this$0:Lcom/android/calendar/DayEventListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListActivity;->eventsChanged(I)V

    return-void
.end method
