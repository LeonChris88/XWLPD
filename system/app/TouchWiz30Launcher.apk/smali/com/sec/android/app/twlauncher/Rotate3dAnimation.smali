.class public Lcom/sec/android/app/twlauncher/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F

.field private final mZoomX:F

.field private final mZoomY:F


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    iget v4, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mFromDegrees:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v8, v4

    mul-float/2addr v8, p1

    add-float v3, v4, v8

    iget v1, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterX:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterY:F

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mReverse:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v8, p1

    invoke-virtual {v0, v11, v11, v8}, Landroid/graphics/Camera;->translate(FFF)V

    sub-float v8, v10, p1

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomX:F

    sub-float/2addr v8, v10

    mul-float/2addr v8, p1

    add-float v6, v10, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomY:F

    sub-float/2addr v8, v10

    mul-float/2addr v8, p1

    add-float v7, v10, v8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    neg-float v8, v1

    neg-float v9, v2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomX:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomX:F

    sub-float v9, v10, v9

    mul-float/2addr v9, p1

    add-float v6, v8, v9

    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomY:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mZoomY:F

    sub-float v9, v10, v9

    mul-float/2addr v9, p1

    add-float v7, v8, v9

    iget v8, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mDepthZ:F

    sub-float v9, v10, p1

    mul-float/2addr v8, v9

    invoke-virtual {v0, v11, v11, v8}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterX:F

    iput p2, p0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->mCenterY:F

    return-void
.end method
