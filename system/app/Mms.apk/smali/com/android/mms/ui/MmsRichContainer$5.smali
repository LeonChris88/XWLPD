.class Lcom/android/mms/ui/MmsRichContainer$5;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v1}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsRichContainer$5;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-static {v1}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
