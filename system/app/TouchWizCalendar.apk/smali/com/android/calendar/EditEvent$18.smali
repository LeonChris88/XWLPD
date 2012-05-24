.class Lcom/android/calendar/EditEvent$18;
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

    iput-object p1, p0, Lcom/android/calendar/EditEvent$18;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/EditEvent$18;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0, p2}, Lcom/android/calendar/EditEvent;->access$3702(Lcom/android/calendar/EditEvent;I)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent$18;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/EditEvent$18;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$3800(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/EditEvent$18;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$3700(Lcom/android/calendar/EditEvent;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
