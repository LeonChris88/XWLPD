.class Lcom/android/calendar/EditEvent$51;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createRepeatUntilDialog()Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$5500(Lcom/android/calendar/EditEvent;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$5402(Lcom/android/calendar/EditEvent;I)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$5700(Lcom/android/calendar/EditEvent;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$5602(Lcom/android/calendar/EditEvent;I)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$6000(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5900(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$5800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$5400(Lcom/android/calendar/EditEvent;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$6100(Lcom/android/calendar/EditEvent;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$5302(Lcom/android/calendar/EditEvent;I)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$500(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EditEvent$51;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$6200(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
