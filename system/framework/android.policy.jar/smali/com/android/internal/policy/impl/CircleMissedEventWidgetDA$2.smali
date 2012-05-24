.class Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;
.super Ljava/lang/Object;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$502(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    const-string v0, "MissedEvent"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
