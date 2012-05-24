.class public Lcom/android/email/activity/GradientColorPicker;
.super Landroid/view/View;
.source "GradientColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;
    }
.end annotation


# instance fields
.field private HEIGHT:I

.field private WIDTH:I

.field private context:Landroid/content/Context;

.field private mColorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

.field private selector:Landroid/graphics/Bitmap;

.field private spectrum:Landroid/graphics/Bitmap;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    iput-object p1, p0, Lcom/android/email/activity/GradientColorPicker;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    iput-object p1, p0, Lcom/android/email/activity/GradientColorPicker;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    iput-object p1, p0, Lcom/android/email/activity/GradientColorPicker;->context:Landroid/content/Context;

    return-void
.end method

.method private getColor()I
    .locals 3

    iget-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    iget v2, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method private makeSpectrum()V
    .locals 28

    const/4 v3, 0x6

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    const/4 v3, 0x6

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    const/4 v3, 0x3

    new-array v15, v3, [F

    fill-array-data v15, :array_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/email/activity/GradientColorPicker;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    int-to-float v5, v5

    const/4 v6, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    const/4 v10, 0x1

    invoke-direct {v3, v4, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[I

    const/16 v24, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_0

    aget-object v3, v23, v24

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    aget-object v3, v23, v24

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    aput v5, v3, v4

    aget-object v3, v23, v24

    const/4 v4, 0x2

    const/high16 v5, -0x100

    aput v5, v3, v4

    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/email/activity/GradientColorPicker;->HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/GradientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    new-instance v25, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/GradientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    move/from16 v0, v24

    if-ge v0, v3, :cond_1

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/GradientColorPicker;->HEIGHT:I

    int-to-float v13, v3

    aget-object v14, v23, v24

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/activity/GradientColorPicker;->HEIGHT:I

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v16, v25

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x19t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x40f0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->selector:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->selector:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/email/activity/GradientColorPicker;->HEIGHT:I

    iget-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->selector:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/GradientColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020282

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->selector:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/GradientColorPicker;->spectrum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/GradientColorPicker;->makeSpectrum()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    if-gez v1, :cond_0

    iput v2, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    :cond_0
    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    if-gez v1, :cond_1

    iput v2, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    :cond_1
    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    iget v2, p0, Lcom/android/email/activity/GradientColorPicker;->HEIGHT:I

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/email/activity/GradientColorPicker;->y:I

    :cond_2
    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    iget v2, p0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/android/email/activity/GradientColorPicker;->WIDTH:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/email/activity/GradientColorPicker;->x:I

    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/GradientColorPicker;->mColorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

    invoke-direct {p0}, Lcom/android/email/activity/GradientColorPicker;->getColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;->onColorChanged(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/GradientColorPicker;->invalidate()V

    invoke-virtual {p0}, Lcom/android/email/activity/GradientColorPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setColorchangedListener(Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/GradientColorPicker;->mColorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

    return-void
.end method
