.class Lcom/android/calendar/EditEvent$11;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_3

    iget-object v3, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3000(Lcom/android/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/calendar/EditEvent;->access$2902(Lcom/android/calendar/EditEvent;I)I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2900(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3100(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$2902(Lcom/android/calendar/EditEvent;I)I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2900(Lcom/android/calendar/EditEvent;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent$11;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3200(Lcom/android/calendar/EditEvent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2
.end method
