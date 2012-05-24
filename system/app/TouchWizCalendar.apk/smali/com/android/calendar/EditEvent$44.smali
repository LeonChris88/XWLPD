.class Lcom/android/calendar/EditEvent$44;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createAlarmCustomizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$44;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$44;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/calendar/EditEvent$44;->val$button:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/EditEvent$44;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$1600(Lcom/android/calendar/EditEvent;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/EditEvent$44;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/EditEvent$44;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v2, p0, Lcom/android/calendar/EditEvent$44;->val$button:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/calendar/EditEvent;->access$4900(Lcom/android/calendar/EditEvent;ILjava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
