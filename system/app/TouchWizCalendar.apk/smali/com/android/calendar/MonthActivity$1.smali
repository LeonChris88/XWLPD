.class Lcom/android/calendar/MonthActivity$1;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$1;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$1;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$000(Lcom/android/calendar/MonthActivity;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$1;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$1;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$000(Lcom/android/calendar/MonthActivity;)Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$1;->this$0:Lcom/android/calendar/MonthActivity;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$1;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v1}, Lcom/android/calendar/MonthActivity;->access$000(Lcom/android/calendar/MonthActivity;)Landroid/text/format/Time;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/MonthActivity;->access$100(Lcom/android/calendar/MonthActivity;Landroid/text/format/Time;)V

    return-void
.end method
