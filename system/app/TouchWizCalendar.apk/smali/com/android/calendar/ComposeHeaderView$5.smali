.class Lcom/android/calendar/ComposeHeaderView$5;
.super Landroid/os/Handler;
.source "ComposeHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ComposeHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ComposeHeaderView;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$5;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/calendar/ComposeHeaderView$5;->this$0:Lcom/android/calendar/ComposeHeaderView;

    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$5;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$900(Lcom/android/calendar/ComposeHeaderView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v1, v0}, Lcom/android/calendar/ComposeHeaderView;->access$1000(Lcom/android/calendar/ComposeHeaderView;ZZ)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
