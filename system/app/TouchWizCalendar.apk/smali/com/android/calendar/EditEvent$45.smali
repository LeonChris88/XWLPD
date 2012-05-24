.class Lcom/android/calendar/EditEvent$45;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->initAlarmCustomizeDialog(Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$alarm_day:Ljava/lang/String;

.field final synthetic val$alarm_hour:Ljava/lang/String;

.field final synthetic val$alarm_min:Ljava/lang/String;

.field final synthetic val$alarm_week:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$45;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_min:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_hour:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_day:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_week:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_min:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_hour:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_hour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_day:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_day:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_week:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_week:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$45;->val$alarm_min:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
