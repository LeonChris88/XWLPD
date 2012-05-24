.class public Lcom/android/calendar/vcal/pim/PropertyNode;
.super Ljava/lang/Object;
.source "PropertyNode.java"


# instance fields
.field public paramMap:Landroid/content/ContentValues;

.field public paramMap_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propGroupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propName:Ljava/lang/String;

.field public propValue:Ljava/lang/String;

.field public propValue_bytes:[B

.field public propValue_vector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/android/calendar/vcal/pim/PropertyNode;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/vcal/pim/PropertyNode;

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    iget-object v4, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "propName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paramMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", propmMap_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", propGroupSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, ", propValue_vector size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v1, :cond_1

    const-string v1, ", propValue_bytes size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue_bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", propValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/calendar/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
