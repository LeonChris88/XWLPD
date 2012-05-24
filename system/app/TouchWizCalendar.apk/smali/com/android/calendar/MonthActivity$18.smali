.class Lcom/android/calendar/MonthActivity$18;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$18;->this$0:Lcom/android/calendar/MonthActivity;

    iput-object p2, p0, Lcom/android/calendar/MonthActivity$18;->val$quickAdd:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$18;->this$0:Lcom/android/calendar/MonthActivity;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$18;->val$quickAdd:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/calendar/MonthActivity;->access$800(Lcom/android/calendar/MonthActivity;Landroid/view/View;)V

    return-void
.end method
