.class Lcom/android/calendar/MonthActivity$4;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->setBodyView()V
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

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$4;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$4;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$4;->this$0:Lcom/android/calendar/MonthActivity;

    const-class v0, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$4;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getSelectedMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$4;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->finish()V

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$4;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0, v5, v5}, Lcom/android/calendar/MonthActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
