.class Lcom/android/calendar/ParticipantScheduleView$1;
.super Ljava/lang/Object;
.source "ParticipantScheduleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ParticipantScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ParticipantScheduleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleView$1;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$1;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$200(Lcom/android/calendar/ParticipantScheduleView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$1;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget-object v1, v1, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$1;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget-object v1, v1, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$1;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$300(Lcom/android/calendar/ParticipantScheduleView;)V

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$1;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v1}, Lcom/android/calendar/ParticipantScheduleView;->updateTitle()V

    return-void
.end method
