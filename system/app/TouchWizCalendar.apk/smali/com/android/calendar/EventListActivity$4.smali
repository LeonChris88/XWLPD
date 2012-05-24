.class Lcom/android/calendar/EventListActivity$4;
.super Ljava/lang/Object;
.source "EventListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/calendar/EventListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventListActivity$4;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/EventListActivity$4;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/EventListActivity;->clearCachedEvents()V

    return-void
.end method
