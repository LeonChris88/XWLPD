.class Lcom/android/calendar/EditEvent$37;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createRepeatCustomizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$mainView:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$37;->val$mainView:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v3, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v3}, Lcom/android/calendar/EditEvent;->access$4600(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/calendar/EditEvent;->access$4000(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)V

    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->val$mainView:Landroid/widget/LinearLayout;

    const v3, 0x7f0f00c5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0xa

    :try_start_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gtz v1, :cond_0

    const/16 v1, 0xa

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Lcom/android/calendar/EditEvent;->access$4700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2, v1}, Lcom/android/calendar/EditEvent;->access$4802(Lcom/android/calendar/EditEvent;I)I

    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/EditEvent;->access$4602(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/calendar/EditEvent$37;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/calendar/EditEvent;->removeDialog(I)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
