.class Lcom/android/calendar/AgendaDeleteActivity$1;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$1;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$1;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$1;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$1;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$102(Lcom/android/calendar/AgendaDeleteActivity;Landroid/text/format/Time;)Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$1;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    return-void
.end method
