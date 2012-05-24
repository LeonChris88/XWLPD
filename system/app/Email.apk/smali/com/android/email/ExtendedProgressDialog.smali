.class public Lcom/android/email/ExtendedProgressDialog;
.super Landroid/app/ProgressDialog;
.source "ExtendedProgressDialog.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mView:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/email/ExtendedProgressDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mView:Landroid/widget/TextView;

    return-void
.end method

.method private getTextViewForTitle()Landroid/widget/TextView;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/android/email/ExtendedProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/email/ExtendedProgressDialog;->getTextViewForTitle()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mView:Landroid/widget/TextView;

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mView:Landroid/widget/TextView;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/ExtendedProgressDialog;->mView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
