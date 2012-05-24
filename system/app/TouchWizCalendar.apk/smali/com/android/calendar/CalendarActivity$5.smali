.class Lcom/android/calendar/CalendarActivity$5;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarActivity;->switchViews(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$5;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$5;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/CalendarInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/calendar/CalendarInterface;->reloadEvents(Z)V

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$5;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
