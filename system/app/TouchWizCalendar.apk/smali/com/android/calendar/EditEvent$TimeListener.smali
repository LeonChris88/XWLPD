.class Lcom/android/calendar/EditEvent$TimeListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 11

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$300(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    if-ne v8, v9, :cond_2

    iget v8, v2, Landroid/text/format/Time;->hour:I

    iget v9, v7, Landroid/text/format/Time;->hour:I

    sub-int v3, v8, v9

    iget v8, v2, Landroid/text/format/Time;->minute:I

    iget v9, v7, Landroid/text/format/Time;->minute:I

    sub-int v4, v8, v9

    iput p2, v7, Landroid/text/format/Time;->hour:I

    iput p3, v7, Landroid/text/format/Time;->minute:I

    invoke-virtual {v7, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    add-int v8, p2, v3

    iput v8, v2, Landroid/text/format/Time;->hour:I

    add-int v8, p3, v4

    iput v8, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    move-wide v0, v5

    :cond_0
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v8

    iget v9, v7, Landroid/text/format/Time;->hour:I

    iput v9, v8, Landroid/text/format/Time;->hour:I

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v8

    iget v9, v7, Landroid/text/format/Time;->minute:I

    iput v9, v8, Landroid/text/format/Time;->minute:I

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v8

    iget v9, v7, Landroid/text/format/Time;->second:I

    iput v9, v8, Landroid/text/format/Time;->second:I

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$600(Lcom/android/calendar/EditEvent;)V

    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v0, v1, v10}, Lcom/android/calendar/EditEvent;->access$900(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$400(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v5, v6, v10}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v9, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v9}, Lcom/android/calendar/EditEvent;->access$1100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v9

    iget-object v10, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v10}, Lcom/android/calendar/EditEvent;->access$800(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v0, v1, v10}, Lcom/android/calendar/EditEvent;->access$1000(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;JLjava/lang/String;)V

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v8}, Lcom/android/calendar/EditEvent;->access$1200(Lcom/android/calendar/EditEvent;)V

    return-void

    :cond_2
    invoke-virtual {v7, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iput p2, v2, Landroid/text/format/Time;->hour:I

    iput p3, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-static {v2}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    move-wide v0, v5

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    const v9, 0x7f0a00a0

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    :cond_3
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    move-wide v0, v5

    iget-object v8, p0, Lcom/android/calendar/EditEvent$TimeListener;->this$0:Lcom/android/calendar/EditEvent;

    const v9, 0x7f0a00a1

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    goto :goto_0
.end method
