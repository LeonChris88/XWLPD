.class Lcom/android/calendar/MonthActivity$21;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$21;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$21;->this$0:Lcom/android/calendar/MonthActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$21;->this$0:Lcom/android/calendar/MonthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/MonthActivity;->access$1102(Lcom/android/calendar/MonthActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
