.class Lcom/android/calendar/AgendaDeleteActivity$7;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onResume()V
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

    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/calendar/AgendaListView;->setHideDeclinedEvents(Z)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$100(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$900(Lcom/android/calendar/AgendaDeleteActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1000(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v3

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1100(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Lcom/android/calendar/AgendaDeleteActivity;->showDialog(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$1300(Lcom/android/calendar/AgendaDeleteActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$1200(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaDeleteActivity$DeleteRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-static {v3}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v3

    iget-object v2, v3, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    iget-object v3, p0, Lcom/android/calendar/AgendaDeleteActivity$7;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaWindowAdapter;->setOnLoadCompleteListener(Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)V

    return-void
.end method
