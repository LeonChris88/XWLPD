.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# instance fields
.field mContent:Landroid/widget/ImageView;

.field mCount:I

.field final mHandler:Landroid/os/Handler;

.field mSuperLongPress:Ljava/lang/Runnable;

.field mToast:Landroid/widget/Toast;

.field mZzz:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mZzz:Landroid/os/Vibrator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mSuperLongPress:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Android 4.0: Ice Cream Sandwich"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mToast:Landroid/widget/Toast;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/ImageView;

    const v1, 0x1080444

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
