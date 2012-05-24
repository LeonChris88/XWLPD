.class public Lcom/android/email/activity/BannerController;
.super Ljava/lang/Object;
.source "BannerController.java"


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private final mBannerHeight:I

.field private final mBannerView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/BannerController;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/email/activity/BannerController;->mBannerHeight:I

    iget v0, p0, Lcom/android/email/activity/BannerController;->mBannerHeight:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/BannerController;->setBannerYAnim(I)V

    return-void
.end method


# virtual methods
.method public setBannerYAnim(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/email/activity/BannerController;->mBannerView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method
