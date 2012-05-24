.class Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;
.super Landroid/os/Handler;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FitRectHandler"
.end annotation


# instance fields
.field private initRect:Landroid/graphics/Rect;

.field private mDuration:I

.field private mStartTimeMil:J

.field private targetRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mStartTimeMil:J

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$800(Lcom/sec/android/app/twlauncher/Workspace;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mStartTimeMil:J

    sub-long v0, v2, v4

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->access$900(Lcom/sec/android/app/twlauncher/Workspace;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v2, v6}, Lcom/sec/android/app/twlauncher/Workspace;->access$802(Lcom/sec/android/app/twlauncher/Workspace;Z)Z

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v2, v6}, Lcom/sec/android/app/twlauncher/Workspace;->access$1002(Lcom/sec/android/app/twlauncher/Workspace;I)I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-long v3, v3

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-long v5, v5

    mul-long/2addr v5, v0

    add-long/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    const/16 v2, 0xaa

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xaa
        :pswitch_0
    .end packed-switch
.end method

.method public startFitting()V
    .locals 5

    const/16 v2, 0x1c2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Workspace;->access$600(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->this$0:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Workspace;->access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_0

    move v1, v0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_1

    move v1, v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->targetRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->initRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_2

    move v1, v0

    :cond_2
    if-ge v2, v1, :cond_3

    move v1, v2

    :cond_3
    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->mStartTimeMil:J

    const/16 v2, 0xaa

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
