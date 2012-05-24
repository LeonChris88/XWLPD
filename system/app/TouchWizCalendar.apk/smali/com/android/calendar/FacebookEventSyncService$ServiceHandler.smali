.class final Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;
.super Landroid/os/Handler;
.source "FacebookEventSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/FacebookEventSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/FacebookEventSyncService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/FacebookEventSyncService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;->this$0:Lcom/android/calendar/FacebookEventSyncService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/FacebookEventSyncService$ServiceHandler;->this$0:Lcom/android/calendar/FacebookEventSyncService;

    invoke-virtual {v1}, Lcom/android/calendar/FacebookEventSyncService;->syncEventsPartial()V

    :cond_0
    return-void
.end method
