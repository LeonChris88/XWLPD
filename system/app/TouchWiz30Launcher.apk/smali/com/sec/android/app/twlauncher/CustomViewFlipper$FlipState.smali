.class Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;
.super Ljava/lang/Object;
.source "CustomViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/CustomViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlipState"
.end annotation


# instance fields
.field final mAlpha1:I

.field final mAlpha2:I

.field final mBackgroundAlpha:I

.field final mOffset:I

.field final mRegion:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/CustomViewFlipper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper;Landroid/graphics/Rect;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->this$0:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mRegion:Landroid/graphics/Rect;

    iput p3, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mBackgroundAlpha:I

    iput p4, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha1:I

    iput p5, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mAlpha2:I

    iput p6, p0, Lcom/sec/android/app/twlauncher/CustomViewFlipper$FlipState;->mOffset:I

    return-void
.end method
