.class Lcom/android/calendar/EventListActivity$6;
.super Landroid/database/ContentObserver;
.source "EventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventListActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventListActivity$6;->this$0:Lcom/android/calendar/EventListActivity;

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
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$6;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/EventListActivity;->reloadEvents()V

    return-void
.end method
