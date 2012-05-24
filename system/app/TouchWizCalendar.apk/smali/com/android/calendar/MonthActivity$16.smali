.class Lcom/android/calendar/MonthActivity$16;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$16;->this$0:Lcom/android/calendar/MonthActivity;

    iput-object p2, p0, Lcom/android/calendar/MonthActivity$16;->val$quickAdd:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$16;->this$0:Lcom/android/calendar/MonthActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$16;->val$quickAdd:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
