.class public Lcom/android/contacts/model/AccountType$EditType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditType"
.end annotation


# instance fields
.field public customColumn:Ljava/lang/String;

.field public labelRes:I

.field public rawValue:I

.field public secondary:Z

.field public specificMax:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iput p2, p0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/contacts/model/AccountType$EditType;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    iget v2, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v3, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    return v0
.end method

.method public setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    return-object p0
.end method

.method public setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    return-object p0
.end method

.method public setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0

    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    return-object p0
.end method
