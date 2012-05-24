.class public Lcom/sec/android/app/twlauncher/TextIconAdapter;
.super Landroid/widget/BaseAdapter;
.source "TextIconAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mAllItemsEnabled:Z

.field private mCollator:Ljava/text/Collator;

.field private mDisabledBackground:Landroid/graphics/drawable/Drawable;

.field private mEnabledBackground:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mCollator:Ljava/text/Collator;

    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    iput p2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mTextViewResourceId:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mTextViewResourceId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mEnabledBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "StaticArrayAdapter requires a TextView resource Id"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    return v0
.end method

.method public compare(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v2, 0x0

    if-eq p1, p2, :cond_0

    if-nez p1, :cond_1

    const/4 v2, -0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p2}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    check-cast p2, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->compare(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mTextViewResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mEnabledBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mDisabledBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mAllItemsEnabled:Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public sort()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TextIconAdapter;->mItems:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->notifyDataSetChanged()V

    return-void
.end method
