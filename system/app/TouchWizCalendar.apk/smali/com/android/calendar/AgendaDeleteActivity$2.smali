.class Lcom/android/calendar/AgendaDeleteActivity$2;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$200(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$200(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v1, v0}, Lcom/android/calendar/AgendaDeleteActivity;->setAllBeforeItemChecked(Z)V

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$2;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$300(Lcom/android/calendar/AgendaDeleteActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
