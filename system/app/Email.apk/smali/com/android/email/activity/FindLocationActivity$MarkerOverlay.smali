.class Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;
.super Lcom/google/android/maps/Overlay;
.source "FindLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/FindLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerOverlay"
.end annotation


# instance fields
.field private mIsSelected:Z

.field private mMarkerBitmap:Landroid/graphics/Bitmap;

.field private mMarkerHeight:I

.field private mMarkerWidth:I

.field private mPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/email/activity/FindLocationActivity;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/FindLocationActivity;ILandroid/graphics/Point;)V
    .locals 3

    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    invoke-virtual {p1}, Lcom/android/email/activity/FindLocationActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/android/email/activity/FindLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020336

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerHeight:I

    iput-object p3, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mPoint:Landroid/graphics/Point;

    return-void
.end method

.method private getDrawPoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerHeight:I

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerHeight:I

    sub-int v1, v3, v4

    new-instance v3, Landroid/graphics/Point;

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    if-gez v1, :cond_3

    move v1, v2

    :cond_3
    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mPoint:Landroid/graphics/Point;

    invoke-direct {p0, v1}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->getDrawPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPixelPoint()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    iget-object v8, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mPoint:Landroid/graphics/Point;

    invoke-direct {p0, v8}, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->getDrawPoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v6, v7

    :goto_1
    return v6

    :pswitch_0
    add-int/lit8 v8, v1, -0x1e

    if-lt v4, v8, :cond_0

    iget v8, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerWidth:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, 0x1e

    if-gt v4, v8, :cond_0

    add-int/lit8 v8, v2, -0x1e

    if-lt v5, v8, :cond_0

    iget v8, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mMarkerHeight:I

    add-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x1e

    if-gt v5, v8, :cond_0

    iput-boolean v6, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mIsSelected:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v7, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mIsSelected:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v8, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mIsSelected:Z

    if-eqz v8, :cond_0

    iget-object v7, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPixelPoint(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$MarkerOverlay;->mPoint:Landroid/graphics/Point;

    return-void
.end method
