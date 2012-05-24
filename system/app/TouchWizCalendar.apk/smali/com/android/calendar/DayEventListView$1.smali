.class Lcom/android/calendar/DayEventListView$1;
.super Ljava/lang/Object;
.source "DayEventListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayEventListView$1;->this$0:Lcom/android/calendar/DayEventListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/DayEventListView$1;->this$0:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->clearCachedEvents()V

    return-void
.end method
