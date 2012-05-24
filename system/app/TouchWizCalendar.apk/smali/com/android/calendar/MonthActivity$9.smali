.class Lcom/android/calendar/MonthActivity$9;
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

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$9;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$9;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v1}, Lcom/android/calendar/MonthActivity;->access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/MonthInterface;

    invoke-interface {v1, v3}, Lcom/android/calendar/MonthInterface;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$9;->this$0:Lcom/android/calendar/MonthActivity;

    iput-boolean v3, v1, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    iget-object v1, p0, Lcom/android/calendar/MonthActivity$9;->this$0:Lcom/android/calendar/MonthActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    return-void
.end method
