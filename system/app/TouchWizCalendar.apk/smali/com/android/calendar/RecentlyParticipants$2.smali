.class Lcom/android/calendar/RecentlyParticipants$2;
.super Landroid/content/BroadcastReceiver;
.source "RecentlyParticipants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/RecentlyParticipants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RecentlyParticipants;


# direct methods
.method constructor <init>(Lcom/android/calendar/RecentlyParticipants;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/RecentlyParticipants$2;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/RecentlyParticipants$2;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-static {v1}, Lcom/android/calendar/RecentlyParticipants;->access$300(Lcom/android/calendar/RecentlyParticipants;)V

    :cond_1
    return-void
.end method
