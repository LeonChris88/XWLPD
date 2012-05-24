.class Lcom/android/calendar/EditEvent$50;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/calendar/EditEvent$50;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$50;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5000(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$50;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5100(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$50;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$5200(Lcom/android/calendar/EditEvent;)Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$50;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$5302(Lcom/android/calendar/EditEvent;I)I

    return-void
.end method
