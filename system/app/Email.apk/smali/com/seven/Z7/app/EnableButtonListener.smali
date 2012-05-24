.class public Lcom/seven/Z7/app/EnableButtonListener;
.super Ljava/lang/Object;
.source "EnableButtonListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/app/EnableButtonListener$OperationMode;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

.field private mTextViews:[Landroid/widget/TextView;


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    sget-object v4, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->AND:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mTextViews:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mTextViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    sget-object v4, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->OR:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    sget-object v4, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->AND:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    if-ne v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eq v3, v0, :cond_4

    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
