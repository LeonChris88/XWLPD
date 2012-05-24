.class Lcom/android/phone/IncomingCallWidget$Handle$2;
.super Landroid/os/Handler;
.source "IncomingCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingCallWidget$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingCallWidget$Handle;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingCallWidget$Handle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v7, 0x64

    const/4 v6, 0x3

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget;->access$200(Lcom/android/phone/IncomingCallWidget;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    iget-object v4, v4, Lcom/android/phone/IncomingCallWidget$Handle;->this$0:Lcom/android/phone/IncomingCallWidget;

    const-string v5, "handleMessage"

    invoke-virtual {v4, v5}, Lcom/android/phone/IncomingCallWidget;->log(Ljava/lang/String;)V

    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$300(Lcom/android/phone/IncomingCallWidget$Handle;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$400(Lcom/android/phone/IncomingCallWidget$Handle;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v1, v4, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-eq v6, v4, :cond_4

    const-wide/16 v4, 0x96

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/phone/IncomingCallWidget$Handle$2;->this$1:Lcom/android/phone/IncomingCallWidget$Handle;

    invoke-static {v4}, Lcom/android/phone/IncomingCallWidget$Handle;->access$500(Lcom/android/phone/IncomingCallWidget$Handle;)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    rsub-int/lit8 v4, v2, 0x3

    add-int/lit8 v3, v4, -0x1

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x384

    invoke-virtual {p0, v7, v4, v5}, Lcom/android/phone/IncomingCallWidget$Handle$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
