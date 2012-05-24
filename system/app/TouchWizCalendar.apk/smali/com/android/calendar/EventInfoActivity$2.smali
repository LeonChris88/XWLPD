.class Lcom/android/calendar/EventInfoActivity$2;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->goTo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v1}, Lcom/android/calendar/EventInfoActivity;->access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v1}, Lcom/android/calendar/EventInfoActivity;->access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/EventInfoActivity;->access$400(Lcom/android/calendar/EventInfoActivity;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
