.class public Lcom/android/phone/InCallButtonsViewLand;
.super Landroid/widget/RelativeLayout;
.source "InCallButtonsViewLand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsViewLand;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/InCallButtonsViewLand;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method initialize()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/InCallButtonsViewLand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040025

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method
