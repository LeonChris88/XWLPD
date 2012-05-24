.class public Lcom/sec/android/widgetapp/calculator/Panel;
.super Landroid/widget/LinearLayout;
.source "Panel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;,
        Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;,
        Lcom/sec/android/widgetapp/calculator/Panel$State;
    }
.end annotation


# instance fields
.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field bt_id:[I

.field clickListener:Landroid/view/View$OnClickListener;

.field private isOpenClick:Z

.field private mAniEnd:Z

.field private mBringToFront:Z

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field private mContentHeight:I

.field private mContentId:I

.field private mContentWidth:I

.field private mDuration:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

.field private mHandle:Landroid/view/View;

.field private mHandleId:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsShrinking:Z

.field private mLinearFlying:Z

.field private mOpenedHandle:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

.field private mTouchInteraction:Z

.field private mTouchable:Z

.field private mTrackX:F

.field private mTrackY:F

.field private mVelocity:F

.field private mWeight:F

.field private panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

.field startAnimation:Ljava/lang/Runnable;

.field touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mAniEnd:Z

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$1;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$2;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$2;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->clickListener:Landroid/view/View$OnClickListener;

    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$3;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$3;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->startAnimation:Ljava/lang/Runnable;

    new-instance v4, Lcom/sec/android/widgetapp/calculator/Panel$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/calculator/Panel$4;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-boolean v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchInteraction:Z

    const/16 v4, 0x23

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    sget-object v4, Lcom/sec/android/app/calculator/R$styleable;->Panel:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mDuration:I

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mLinearFlying:Z

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v2, v6}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    :cond_0
    iput v6, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    :cond_1
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    if-nez v4, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The handle attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentId:I

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentId:I

    if-nez v4, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": The content attribute is required and must refer to a valid child."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_4

    throw v1

    :cond_4
    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-ne v4, v2, :cond_6

    :cond_5
    :goto_0
    iput v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setOrientation(I)V

    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    new-instance v2, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;-><init>(Lcom/sec/android/widgetapp/calculator/Panel;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    new-instance v2, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    invoke-direct {v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/calculator/Panel;->setBaselineAligned(Z)V

    return-void

    :cond_6
    move v2, v3

    goto :goto_0

    :array_0
    .array-data 0x4
        0x1at 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x18t 0x0t 0x5t 0x7ft
        0x12t 0x0t 0x5t 0x7ft
        0x13t 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
        0xet 0x0t 0x5t 0x7ft
        0xft 0x0t 0x5t 0x7ft
        0x10t 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
        0x1dt 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x11t 0x0t 0x5t 0x7ft
        0xct 0x0t 0x5t 0x7ft
        0xbt 0x0t 0x5t 0x7ft
        0xat 0x0t 0x5t 0x7ft
        0xdt 0x0t 0x5t 0x7ft
        0x19t 0x0t 0x5t 0x7ft
        0x1et 0x0t 0x5t 0x7ft
        0x1ft 0x0t 0x5t 0x7ft
        0x20t 0x0t 0x5t 0x7ft
        0x21t 0x0t 0x5t 0x7ft
        0x23t 0x0t 0x5t 0x7ft
        0x25t 0x0t 0x5t 0x7ft
        0x24t 0x0t 0x5t 0x7ft
        0x22t 0x0t 0x5t 0x7ft
        0x26t 0x0t 0x5t 0x7ft
        0x27t 0x0t 0x5t 0x7ft
        0x28t 0x0t 0x5t 0x7ft
        0x29t 0x0t 0x5t 0x7ft
        0x2at 0x0t 0x5t 0x7ft
        0x2bt 0x0t 0x5t 0x7ft
        0x2ct 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$State;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/calculator/Panel;Lcom/sec/android/widgetapp/calculator/Panel$State;)Lcom/sec/android/widgetapp/calculator/Panel$State;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureListener:Lcom/sec/android/widgetapp/calculator/Panel$PanelOnGestureListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/calculator/Panel;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/widgetapp/calculator/Panel;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mVelocity:F

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/calculator/Panel;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/widgetapp/calculator/Panel;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mLinearFlying:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mDuration:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/calculator/Panel;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/widgetapp/calculator/Panel;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/calculator/Panel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->postProcess()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/calculator/Panel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/widgetapp/calculator/Panel;FII)F
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/widgetapp/calculator/Panel;->ensureRange(FII)F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/calculator/Panel;)Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/calculator/Panel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mBringToFront:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/calculator/Panel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/calculator/Panel;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I

    return v0
.end method

.method private ensureRange(FII)F
    .locals 1

    int-to-float v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    int-to-float v0, p3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private postProcess()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelClosed(Lcom/sec/android/widgetapp/calculator/Panel;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->setTouchInteraction(Z)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;->onPanelOpened(Lcom/sec/android/widgetapp/calculator/Panel;)V

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->ABOUT_TO_ANIMATE:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    if-ne v1, v4, :cond_5

    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I

    :goto_0
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-nez v1, :cond_1

    :cond_0
    neg-int v0, v0

    :cond_1
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    if-ne v1, v4, :cond_6

    int-to-float v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->TRACKING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v2, Lcom/sec/android/widgetapp/calculator/Panel$State;->FLYING:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-ne v1, v2, :cond_4

    :cond_3
    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackX:F

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTrackY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_5
    iget v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I

    goto :goto_0

    :cond_6
    int-to-float v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public getClosedHandle()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getmContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public initChange()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    sget-object v3, Lcom/sec/android/widgetapp/calculator/Panel$State;->READY:Lcom/sec/android/widgetapp/calculator/Panel$State;

    if-eq v0, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    sget-object v0, Lcom/sec/android/widgetapp/calculator/Panel$State;->ABOUT_TO_ANIMATE:Lcom/sec/android/widgetapp/calculator/Panel$State;

    iput-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mState:Lcom/sec/android/widgetapp/calculator/Panel$State;

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mIsShrinking:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/calculator/Panel;->onBtnFocus(Z)V

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpenClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    return v0
.end method

.method public isTouchInteraction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchInteraction:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mBringToFront:Z

    :cond_0
    return-void
.end method

.method public onBtnFocus(Z)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const v2, 0x7f05001e

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->bt_id:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandleId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your Panel must have a child View whose id attribute is \'R.id."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->removeView(Landroid/view/View;)V

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-ne v2, v6, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->addView(Landroid/view/View;)V

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mPosition:I

    if-ne v2, v6, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/calculator/Panel;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOpenedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    :goto_2
    return-void

    :cond_5
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mHandle:Landroid/view/View;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    if-ne v2, v5, :cond_8

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    iget-object v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_8
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentWidth:I

    iget-object v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContentHeight:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x4000

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/calculator/Panel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mWeight:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0
.end method

.method public setAniEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mAniEnd:Z

    return-void
.end method

.method public setOnPanelListener(Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->panelListener:Lcom/sec/android/widgetapp/calculator/Panel$OnPanelListener;

    return-void
.end method

.method public setOpenClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->isOpenClick:Z

    return-void
.end method

.method public setTouchInteraction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/widgetapp/calculator/Panel;->mTouchInteraction:Z

    return-void
.end method
