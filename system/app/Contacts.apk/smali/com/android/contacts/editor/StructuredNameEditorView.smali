.class public Lcom/android/contacts/editor/StructuredNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "StructuredNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/StructuredNameEditorView$1;,
        Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mChanged:Z

.field private mSnapshot:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private eraseFullName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 1

    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    return-void
.end method

.method private eraseStructuredName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 4

    sget-object v0, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private rebuildFullName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->valuesToStructuredNameMap(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "data1"

    invoke-virtual {p1, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private rebuildStructuredName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V
    .locals 5

    const-string v4, "data1"

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v1, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private switchFromFullNameToStructuredName()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    if-nez v7, :cond_0

    sget-object v0, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    iget-object v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v7, "data1"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseFullName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    iget-object v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    iget-object v7, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v8, "data1"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private switchFromStructuredNameToFullName()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    if-nez v5, :cond_1

    const-string v5, "data1"

    iget-object v6, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v7, "data1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/contacts/editor/StructuredNameEditorView;->valuesToStructuredNameMap(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v4}, Lcom/android/contacts/editor/StructuredNameEditorView;->eraseStructuredName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    const-string v5, "data1"

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    iget-object v5, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    const-string v6, "data1"

    const-string v7, "data1"

    invoke-virtual {v4, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private valuesToStructuredNameMap(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method


# virtual methods
.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/StructuredNameEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->hasShortAndLongForms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->areOptionalFieldsVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->rebuildFullName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/StructuredNameEditorView;->rebuildStructuredName(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    goto :goto_0
.end method

.method protected onOptionalFieldVisibilityChange()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->hasShortAndLongForms()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->areOptionalFieldsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->switchFromFullNameToStructuredName()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onOptionalFieldVisibilityChange()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->switchFromStructuredNameToFullName()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    iget-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    iput-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    iget-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    iput-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    iput-boolean v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    iput-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    return-object v0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/contacts/editor/StructuredNameEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Landroid/content/ContentValues;

    invoke-virtual {p2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    goto :goto_0
.end method
