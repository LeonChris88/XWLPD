.class Lcom/android/calendar/AgendaActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AgendaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$2;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

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
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$2;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaInterface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/calendar/AgendaInterface;->refresh(Z)V

    :cond_1
    return-void
.end method
