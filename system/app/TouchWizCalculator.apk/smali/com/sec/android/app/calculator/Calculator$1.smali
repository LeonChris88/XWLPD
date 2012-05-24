.class Lcom/sec/android/app/calculator/Calculator$1;
.super Landroid/os/Handler;
.source "Calculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/calculator/Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventHandler;->isSelecting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$200(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$200(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    iget-object v0, v0, Lcom/sec/android/app/calculator/Calculator;->cursorHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$1;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    goto :goto_0
.end method
