.class Lcom/android/calendar/AgendaDeleteActivity$11;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreateDialog(I)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$1200(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$1002(Lcom/android/calendar/AgendaDeleteActivity;Z)Z

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaDeleteActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaDeleteActivity;->access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    iget-object v0, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v0}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/AgendaDeleteActivity$11;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->setOnLoadCompleteListener(Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)V

    return-void
.end method
