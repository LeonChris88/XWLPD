.class public Lcom/android/settings/fmm/RecipientsMinusView;
.super Landroid/widget/LinearLayout;
.source "RecipientsMinusView.java"


# instance fields
.field private CurrentView:Landroid/widget/LinearLayout;

.field private VisibleView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RecipientsMinusView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fmm/RecipientsMinusView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fmm/RecipientsMinusView;->VisibleView:Z

    return p1
.end method


# virtual methods
.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fmm/RecipientsMinusView;->VisibleView:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fmm/RecipientsMinusView;->VisibleView:Z

    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/fmm/RecipientsMinusView;->CurrentView:Landroid/widget/LinearLayout;

    const v1, 0x7f0800e4

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/fmm/RecipientsMinusView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fmm/RecipientsMinusView$1;-><init>(Lcom/android/settings/fmm/RecipientsMinusView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFocus()V
    .locals 2

    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/android/settings/fmm/RecipientsMinusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
