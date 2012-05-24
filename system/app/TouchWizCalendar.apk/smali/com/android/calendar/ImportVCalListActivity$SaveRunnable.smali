.class Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ImportVCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method private constructor <init>(Lcom/android/calendar/ImportVCalListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ImportVCalListActivity;Lcom/android/calendar/ImportVCalListActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;-><init>(Lcom/android/calendar/ImportVCalListActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1700(Lcom/android/calendar/ImportVCalListActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-virtual {v2}, Lcom/android/calendar/ImportVCalListActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1600(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1600(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    long-to-int v3, v0

    iget-object v4, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v4}, Lcom/android/calendar/ImportVCalListActivity;->access$500(Lcom/android/calendar/ImportVCalListActivity;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/android/calendar/ImportVCalListActivity;->access$1900(Lcom/android/calendar/ImportVCalListActivity;I)Z

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$2000(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    long-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1800(Lcom/android/calendar/ImportVCalListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1600(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1600(Lcom/android/calendar/ImportVCalListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2, v6}, Lcom/android/calendar/ImportVCalListActivity;->access$1702(Lcom/android/calendar/ImportVCalListActivity;Z)Z

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$SaveRunnable;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$1400(Lcom/android/calendar/ImportVCalListActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
