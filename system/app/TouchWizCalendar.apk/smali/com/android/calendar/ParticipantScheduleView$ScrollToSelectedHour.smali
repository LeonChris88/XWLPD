.class Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;
.super Ljava/lang/Object;
.source "ParticipantScheduleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ParticipantScheduleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollToSelectedHour"
.end annotation


# instance fields
.field mDeltaY:I

.field mDestY:I

.field mIsInit:Z

.field final synthetic this$0:Lcom/android/calendar/ParticipantScheduleView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/ParticipantScheduleView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ParticipantScheduleView;Lcom/android/calendar/ParticipantScheduleView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/ParticipantScheduleView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDestY:I

    if-ge v1, v2, :cond_1

    const/16 v1, 0xd

    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    :goto_0
    iput-boolean v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    add-int v0, v1, v2

    if-gez v0, :cond_2

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1, v3}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    :goto_1
    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v1, p0}, Lcom/android/calendar/ParticipantScheduleView;->post(Ljava/lang/Runnable;)Z

    :goto_2
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-virtual {v1}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    return-void

    :cond_1
    const/16 v1, -0xd

    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1}, Lcom/android/calendar/ParticipantScheduleView;->access$500(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v1

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$500(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    if-gez v1, :cond_6

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDestY:I

    if-ge v0, v1, :cond_6

    :cond_5
    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mDeltaY:I

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1, v0}, Lcom/android/calendar/ParticipantScheduleView;->access$402(Lcom/android/calendar/ParticipantScheduleView;I)I

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v2}, Lcom/android/calendar/ParticipantScheduleView;->access$400(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v3}, Lcom/android/calendar/ParticipantScheduleView;->access$1000(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v3}, Lcom/android/calendar/ParticipantScheduleView;->access$1000(Lcom/android/calendar/ParticipantScheduleView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/calendar/ParticipantScheduleView;->access$1202(Lcom/android/calendar/ParticipantScheduleView;I)I

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->this$0:Lcom/android/calendar/ParticipantScheduleView;

    invoke-static {v1, v4}, Lcom/android/calendar/ParticipantScheduleView;->access$902(Lcom/android/calendar/ParticipantScheduleView;Z)Z

    iput-boolean v4, p0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;->mIsInit:Z

    goto :goto_2
.end method
