.class Landroid/widget/TextView$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

.field private mStartHandleOnTop:Z

.field private mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    return-void
.end method

.method static synthetic access$9500(Landroid/widget/TextView$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->switchStartHandle()V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$8200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$8100(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8002(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$8500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$8400(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8302(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$8800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$8700(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/TextView;->access$8602(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method private initHandles()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$8000(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionEndHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/TextView$SelectionStartTopHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$8600(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$8300(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/TextView$SelectionStartTopHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->show()V

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->show()V

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->show()V

    :cond_3
    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/TextView$ActionPopupWindow;)V

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$7900(Landroid/widget/TextView;)V

    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchStartHandle()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-boolean v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    :cond_0
    iget v3, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public getStartHandleToTop()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    return v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartHandleView;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionEndHandleView;->hide()V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionStartTopHandleView;->hide()V

    :cond_2
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartTopHandleView;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionStartHandleView;->isDragging()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartHandleView;->onDetached()V

    :cond_0
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionEndHandleView;->onDetached()V

    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->onDetached()V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v7

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v3, v7, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-gtz v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v7, v5, v6}, Landroid/widget/TextView;->access$8900(Landroid/widget/TextView;FF)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    sub-float v0, v5, v7

    iget v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    sub-float v1, v6, v7

    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float v2, v7, v8

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/widget/TextView;->access$7600(Landroid/widget/TextView;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gez v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/widget/TextView;->access$9000(Landroid/widget/TextView;)Z

    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/widget/TextView;->access$9102(Landroid/widget/TextView;Z)Z

    :cond_1
    iput v5, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionX:F

    iput v6, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapPositionY:F

    goto :goto_0

    :pswitch_2
    iget-object v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/widget/TextView;->access$9200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/TextView$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mMinTouchOffset:I

    return-void
.end method

.method public setStartHandleToTop(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$4800(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    goto :goto_0
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initDrawables()V

    invoke-direct {p0}, Landroid/widget/TextView$SelectionModifierCursorController;->initHandles()V

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->this$0:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/TextView;->access$7900(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public unvisibleAllHandle()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public visibleAllHandle()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandleOnTop:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartTopHandle:Landroid/widget/TextView$SelectionStartTopHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartTopHandleView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mEndHandle:Landroid/widget/TextView$SelectionEndHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionEndHandleView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$SelectionModifierCursorController;->mStartHandle:Landroid/widget/TextView$SelectionStartHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$SelectionStartHandleView;->setVisibility(I)V

    goto :goto_0
.end method
