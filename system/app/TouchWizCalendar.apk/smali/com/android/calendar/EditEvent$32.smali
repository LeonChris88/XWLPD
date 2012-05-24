.class Lcom/android/calendar/EditEvent$32;
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

    iput-object p1, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0, p2}, Lcom/android/calendar/EditEvent;->access$4402(Lcom/android/calendar/EditEvent;I)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$32;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$4300(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a013e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
