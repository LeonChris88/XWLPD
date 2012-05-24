.class Lcom/android/calendar/EditEvent$1;
.super Landroid/os/Handler;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v10, v1

    check-cast v10, [Ljava/lang/String;

    aget-object v1, v10, v11

    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/calendar/EditEvent$Attendee;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v10, v3

    const/4 v4, -0x1

    const/16 v5, 0x1000

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/EditEvent$Attendee;-><init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$000(Lcom/android/calendar/EditEvent;)I

    move-result v7

    const/16 v1, 0x14

    if-gt v7, v1, :cond_3

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/EditEvent$Attendee;

    invoke-virtual {v6, v0}, Lcom/android/calendar/EditEvent$Attendee;->contain(Lcom/android/calendar/EditEvent$Attendee;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :cond_1
    if-nez v8, :cond_2

    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$100(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/EditEvent$1;->this$0:Lcom/android/calendar/EditEvent;

    const v2, 0x7f0a00b0

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
