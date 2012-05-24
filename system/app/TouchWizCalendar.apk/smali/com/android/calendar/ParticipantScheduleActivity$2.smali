.class Lcom/android/calendar/ParticipantScheduleActivity$2;
.super Ljava/lang/Object;
.source "ParticipantScheduleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ParticipantScheduleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ParticipantScheduleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-static {v0, v2}, Lcom/android/calendar/ParticipantScheduleActivity;->access$002(Lcom/android/calendar/ParticipantScheduleActivity;Z)Z

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/ParticipantScheduleView;

    check-cast v0, Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/ParticipantScheduleView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/ParticipantScheduleActivity;->goTo(Landroid/text/format/Time;Z)V

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleActivity$2;->this$0:Lcom/android/calendar/ParticipantScheduleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/ParticipantScheduleActivity;->access$002(Lcom/android/calendar/ParticipantScheduleActivity;Z)Z

    return-void
.end method
