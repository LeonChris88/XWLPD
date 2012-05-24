.class Lcom/android/calendar/EditEvent$57$2;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent$57;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/EditEvent$57;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent$57;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/16 v7, 0x8

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v5, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v5, v5, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v5}, Lcom/android/calendar/EditEvent;->access$5400(Lcom/android/calendar/EditEvent;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/EditEvent;->access$5502(Lcom/android/calendar/EditEvent;I)I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v5, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v5, v5, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v5}, Lcom/android/calendar/EditEvent;->access$5600(Lcom/android/calendar/EditEvent;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/EditEvent;->access$5702(Lcom/android/calendar/EditEvent;I)I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v5, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v5, v5, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v5}, Lcom/android/calendar/EditEvent;->access$5300(Lcom/android/calendar/EditEvent;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/EditEvent;->access$6102(Lcom/android/calendar/EditEvent;I)I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$6200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v5, v5, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v5}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v5, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$5800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Lcom/android/calendar/EditEvent;->access$5402(Lcom/android/calendar/EditEvent;I)I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v5, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$5800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Lcom/android/calendar/EditEvent;->access$5602(Lcom/android/calendar/EditEvent;I)I

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$6000(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$5900(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p2, :cond_0

    if-ne p2, v7, :cond_1

    :cond_0
    if-ne p2, v7, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_3

    rem-int/lit8 v4, v3, 0x64

    if-nez v4, :cond_4

    :cond_3
    rem-int/lit16 v4, v3, 0x190

    if-nez v4, :cond_5

    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$5400(Lcom/android/calendar/EditEvent;)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/calendar/EditEvent$57$2;->this$1:Lcom/android/calendar/EditEvent$57;

    iget-object v4, v4, Lcom/android/calendar/EditEvent$57;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v4}, Lcom/android/calendar/EditEvent;->access$6900(Lcom/android/calendar/EditEvent;)V

    :cond_5
    return-void
.end method
