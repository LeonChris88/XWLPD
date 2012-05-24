.class Lcom/android/email/activity/MessageListFragment$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowBuilder"
.end annotation


# static fields
.field private static sBackground:Landroid/graphics/Bitmap;

.field private static sCountImage:Landroid/graphics/Bitmap;

.field private static sCountImageNinePatch:Landroid/graphics/NinePatch;

.field private static sCountImagePointXDefault:I

.field private static sCountImagePointXFour:I

.field private static sCountImagePointXOne:I

.field private static sCountImagePointXThree:I

.field private static sCountImagePointXTwo:I

.field private static sCountImageRightDefault:I

.field private static sCountImageRightFour:I

.field private static sCountImageRightThree:I

.field private static sCountImageRightTwo:I

.field private static sCountImageTop:I

.field private static sCountPaint:Landroid/text/TextPaint;

.field private static sCountTextPointXDefault:I

.field private static sCountTextPointXFour:I

.field private static sCountTextPointXOne:I

.field private static sCountTextPointXThree:I

.field private static sCountTextPointXTwo:I

.field private static sCountTextPointY:I

.field private static sEnvelopePointY:I

.field private static sMessagePaint:Landroid/text/TextPaint;

.field private static sTouchPoint:I

.field private static sTouchX:I


# instance fields
.field private mCountText:Ljava/lang/String;

.field private mDragHeight:I

.field private final mDragWidth:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragWidth:I

    return-void
.end method

.method static synthetic access$902(I)I
    .locals 0

    sput p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    return p0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    packed-switch v1, :pswitch_data_0

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_4

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXDefault:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightDefault:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXDefault:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :pswitch_0
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImage:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXOne:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImage:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXOne:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_1

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXTwo:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightTwo:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXTwo:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXTwo:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightTwo:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXTwo:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_2
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_2

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXThree:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightThree:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXThree:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXThree:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightThree:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXThree:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_3
    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v3, v3

    sget-object v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXFour:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightFour:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXFour:I

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXFour:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageRightFour:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXFour:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sBackground:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sEnvelopePointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXDefault:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImagePointXOne:I

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageTop:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sget-object v2, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountImageNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mCountText:Ljava/lang/String;

    sget v3, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchPoint:I

    sget v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointXDefault:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountTextPointY:I

    int-to-float v4, v4

    sget-object v5, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    sget v0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->sTouchX:I

    iget v1, p0, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->mDragHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
