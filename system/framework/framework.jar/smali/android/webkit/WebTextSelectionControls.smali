.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final GRANULARITY_CHARACTER:I = 0x0

.field static final GRANULARITY_IMAGE:I = 0x8

.field static final GRANULARITY_PARAGRAPH:I = 0x4

.field static final GRANULARITY_WORD:I = 0x1

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field static final HANDLE_PARA_BOTTOM:I = 0x5

.field static final HANDLE_PARA_LEFT:I = 0x3

.field static final HANDLE_PARA_RIGHT:I = 0x4

.field static final HANDLE_PARA_TOP:I = 0x6

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field private static final STATE_CHECK_REVERSED:I = 0x5

.field private static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field private static final STATE_FORCE_REVERSED:I = 0x4

.field private static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RESET_MASK:I = 0x3

.field private static final STATE_REVERSED:I = 0x1

.field private static final STATE_UPSIDEDOWN:I = 0x2

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private final HORIZONTAL_TRANSPARENT_RATE:F

.field private final LOGTAG:Ljava/lang/String;

.field private final LOGV:Z

.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mLeftHandleId:I

.field private mLeftHandleState:I

.field private mOrigCharHandleHeight:I

.field private mOrigCharHandleWidth:I

.field private mOrigParaHandleHeight:I

.field private mOrigParaHandleWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectedtext:Ljava/lang/String;

.field private mSeletionCursor:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "WebSelectionControls"

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->LOGTAG:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/webkit/WebTextSelectionControls;->LOGV:Z

    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    iput v3, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    const v2, 0x3e0f5c29

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10804d5

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10804d9

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    :cond_1
    return-void
.end method

.method private DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 9

    const/4 v5, 0x1

    invoke-direct {p0, p2, v5, v5}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v2

    const/4 v4, 0x2

    invoke-direct {p0, p3, v4, v5}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Point;->y:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/Point;->y:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .locals 8

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10804d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    if-gez v1, :cond_2

    int-to-double v3, p3

    const-wide v5, 0x3fc3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v1, v3

    :cond_0
    :goto_2
    if-gez v2, :cond_3

    int-to-double v3, p4

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v2, v3

    :cond_1
    :goto_3
    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10804d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10804d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10804d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    sub-int/2addr v3, p3

    if-le v1, v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v3

    int-to-double v4, p3

    const-wide v6, 0x3feb333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v1, v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_1

    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v3

    int-to-double v4, p4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v2, v3, v4

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_0

    const/16 v3, 0xff

    const/16 v4, 0x58

    const/16 v5, 0xa5

    const/16 v6, 0xdc

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .locals 8

    const v7, 0x10804d5

    const v6, 0x10804d4

    const v5, 0x3e0f5c29

    const/4 v4, 0x1

    const v3, 0x3f5c28f6

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    if-ne v4, p2, :cond_3

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    if-ne v4, p3, :cond_1

    if-ne v4, p2, :cond_5

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gez v1, :cond_0

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    if-gt v1, v2, :cond_4

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    :cond_1
    :goto_1
    if-ne v4, p2, :cond_a

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_8

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_2

    const v1, 0x10804da

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_4
    const-string v1, "WebSelectionControls"

    const-string v2, "Webview is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, -0x4

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    const v1, 0x10804da

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    :cond_6
    iget v1, v0, Landroid/graphics/Point;->y:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_7

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_1

    :cond_7
    const-string v1, "WebSelectionControls"

    const-string v2, "Webview is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_2

    const v1, 0x10804db

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto :goto_2

    :cond_9
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_2

    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_2

    :cond_a
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_b

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_2

    iput v7, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    :cond_b
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    if-eqz p3, :cond_2

    iput v6, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2

    :cond_c
    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    if-eqz p3, :cond_2

    const v1, 0x10804db

    iput v1, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_2
.end method

.method private updateHandleSize(IF)V
    .locals 4

    const/high16 v3, 0x4000

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    :cond_1
    sget v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iget v1, p0, Landroid/webkit/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_0
.end method


# virtual methods
.method DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/webkit/WebTextSelectionControls;->drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    return-void
.end method

.method DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v1, 0x80

    const/16 v2, 0x96

    const/16 v3, 0xcb

    const/16 v4, 0xfb

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int v8, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int v6, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v8

    int-to-float v4, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 10

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    return-void
.end method

.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v4, 0x80

    const/16 v5, 0x96

    const/16 v6, 0xcb

    const/16 v7, 0xfb

    invoke-virtual {v11, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScale()F

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebTextSelectionControls;->updateHandleSize(IF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v14, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_2

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v13}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    new-instance v16, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v9, v15, Landroid/graphics/Rect;->left:I

    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    if-nez p6, :cond_1

    const/4 v6, 0x3

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    iget v10, v15, Landroid/graphics/Rect;->top:I

    const/4 v6, 0x6

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    iget v9, v15, Landroid/graphics/Rect;->right:I

    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    const/4 v6, 0x4

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x5

    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    :cond_0
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Landroid/webkit/WebTextSelectionControls;->DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    packed-switch p8, :pswitch_data_0

    const-string v4, "WebSelectionControls"

    const-string v5, "Selection controler not set!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget v7, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto :goto_0

    :pswitch_0
    iget v9, v15, Landroid/graphics/Rect;->left:I

    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    :pswitch_1
    iget v9, v15, Landroid/graphics/Rect;->right:I

    iget v4, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    goto :goto_1

    :pswitch_2
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :pswitch_3
    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    iget v10, v15, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_2
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, v15, Landroid/graphics/Rect;->left:I

    iget v5, v14, Landroid/graphics/Rect;->top:I

    iget v6, v14, Landroid/graphics/Rect;->right:I

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p3, :cond_3

    new-instance v18, Landroid/graphics/Region;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    :goto_2
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v4, 0x1

    move/from16 v0, p9

    if-ne v4, v0, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    :cond_3
    new-instance v18, Landroid/graphics/Region;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-void
.end method

.method public drawImageCroppingControls(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 7

    const v6, -0xffff01

    const/4 v5, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x3f80

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x4080

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p2, v2, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p3, v3, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;
    .locals 5

    if-nez p4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v4, 0x1

    if-ne v4, p3, :cond_5

    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_2

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_2
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_3
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_4

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_4
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_5
    const/4 v4, 0x2

    if-ne v4, p3, :cond_9

    iget v4, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_7

    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v4

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_6

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_6
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    sub-int v4, p2, v1

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_7
    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, p2

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v4, :cond_8

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_8
    if-lez v1, :cond_0

    sget v4, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v4, :cond_0

    iget-object v4, p4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x5

    if-eq v4, p3, :cond_a

    const/4 v4, 0x6

    if-ne v4, p3, :cond_c

    :cond_a
    if-lez p1, :cond_b

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v4, :cond_b

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_b
    if-lez p1, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-le p1, v4, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x3

    if-eq v4, p3, :cond_d

    const/4 v4, 0x4

    if-ne v4, p3, :cond_0

    :cond_d
    if-lez p2, :cond_e

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v4, :cond_e

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_e
    if-lez p2, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-le p2, v4, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method

.method getHandleHeight()I
    .locals 1

    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getHandleState(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I
    .locals 14

    if-nez p3, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    sget v2, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_5

    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v11, :cond_1

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_7

    div-int/lit8 v9, v2, 0x2

    div-int/lit8 v10, v1, 0x2

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x5

    goto :goto_0

    :cond_2
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x3

    goto :goto_0

    :cond_3
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    goto :goto_0

    :cond_4
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    goto/16 :goto_0

    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_6

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_7

    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkit/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public getSelectionCursorRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 16

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v12, p2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->right:I

    iget v15, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    iget v14, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v14}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v11

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v13, "WebSelectionControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rtSelection.left :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "WebSelectionControls"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rtSelection.top : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    neg-float v13, v5

    neg-float v14, v6

    invoke-virtual {v2, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v11, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v1, v13, v14, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v9, v10

    :goto_0
    if-eqz v9, :cond_1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v13

    goto :goto_0

    :catch_2
    move-exception v13

    move-object v9, v10

    goto :goto_0
.end method

.method public setHandleState(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Landroid/webkit/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
