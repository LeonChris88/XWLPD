.class public Lcom/android/email/activity/CustomSpinner;
.super Landroid/widget/Spinner;
.source "CustomSpinner.java"


# instance fields
.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    return-void
.end method

.method public setLayout(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mLeft:I

    const/16 v0, 0x256

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mRight:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x1e0

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mLeft:I

    const/16 v0, -0x16a

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mRight:I

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/CustomSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/email/activity/CustomSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/CustomSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
