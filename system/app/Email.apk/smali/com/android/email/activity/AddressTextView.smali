.class Lcom/android/email/activity/AddressTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AddressTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AddressTextView$1;,
        Lcom/android/email/activity/AddressTextView$ForwardValidator;
    }
.end annotation


# instance fields
.field private final mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

.field private mIsValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    new-instance v0, Lcom/android/email/activity/AddressTextView$ForwardValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/AddressTextView$ForwardValidator;-><init>(Lcom/android/email/activity/AddressTextView;Lcom/android/email/activity/AddressTextView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    iget-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/AddressTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    return p1
.end method

.method private markError(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/AddressTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public performValidation()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    iget-boolean v1, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/AddressTextView;->markError(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/AddressTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080510

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gal_search_show_more"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/AddressTextView$ForwardValidator;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    return-void
.end method
