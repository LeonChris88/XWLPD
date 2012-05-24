.class Lcom/android/calendar/SearchResult$1;
.super Landroid/database/ContentObserver;
.source "SearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SearchResult;


# direct methods
.method constructor <init>(Lcom/android/calendar/SearchResult;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/SearchResult$1;->this$0:Lcom/android/calendar/SearchResult;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "-------------------------"

    const-string v1, "--------------mProviderStatusObserver :: -----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/calendar/SearchResult$1;->this$0:Lcom/android/calendar/SearchResult;

    invoke-static {v0}, Lcom/android/calendar/SearchResult;->access$000(Lcom/android/calendar/SearchResult;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    return-void
.end method
