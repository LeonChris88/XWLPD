.class Lcom/android/calendar/AgendaActivity$4;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setBodyView()V
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

    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$4;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/16 v4, 0x1e

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$4;->this$0:Lcom/android/calendar/AgendaActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iput v3, v0, Landroid/text/format/Time;->second:I

    iget v1, v0, Landroid/text/format/Time;->minute:I

    if-lez v1, :cond_0

    if-gt v1, v4, :cond_0

    iput v4, v0, Landroid/text/format/Time;->minute:I

    :goto_0
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity$4;->this$0:Lcom/android/calendar/AgendaActivity;

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity$4;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v0, v4, v7}, Lcom/android/calendar/AgendaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iput v3, v0, Landroid/text/format/Time;->minute:I

    iget v1, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method
