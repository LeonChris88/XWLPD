.class public Lcom/android/settings/motion/CommonTryActuallyActivity;
.super Landroid/app/Activity;
.source "CommonTryActuallyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040094

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/CommonTryActuallyActivity;->setContentView(I)V

    const v2, 0x7f0801c1

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/CommonTryActuallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/motion/CommonTryActuallyActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/CommonTryActuallyActivity$1;-><init>(Lcom/android/settings/motion/CommonTryActuallyActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v2, 0x7f0801c2

    invoke-virtual {p0, v2}, Lcom/android/settings/motion/CommonTryActuallyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/motion/CommonTryActuallyActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/CommonTryActuallyActivity$2;-><init>(Lcom/android/settings/motion/CommonTryActuallyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
