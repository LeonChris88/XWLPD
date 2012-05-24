.class Lcom/android/calendar/MonthActivity$19;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;

.field final synthetic val$quickAdd:Landroid/widget/EditText;

.field final synthetic val$selectedDate:J


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$19;->this$0:Lcom/android/calendar/MonthActivity;

    iput-object p2, p0, Lcom/android/calendar/MonthActivity$19;->val$quickAdd:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/android/calendar/MonthActivity$19;->val$selectedDate:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$19;->val$quickAdd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$19;->this$0:Lcom/android/calendar/MonthActivity;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity$19;->val$quickAdd:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/calendar/MonthActivity;->access$800(Lcom/android/calendar/MonthActivity;Landroid/view/View;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/MonthActivity$19;->this$0:Lcom/android/calendar/MonthActivity;

    iget-wide v2, p0, Lcom/android/calendar/MonthActivity$19;->val$selectedDate:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/calendar/MonthActivity;->access$900(Lcom/android/calendar/MonthActivity;JLjava/lang/String;)V

    goto :goto_0
.end method
