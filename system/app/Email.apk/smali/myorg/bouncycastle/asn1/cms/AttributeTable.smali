.class public Lmyorg/bouncycastle/asn1/cms/AttributeTable;
.super Ljava/lang/Object;
.source "AttributeTable.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Set;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/cms/Attribute;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/DEREncodableVector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/DEREncodableVector;->get(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->addAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/cms/Attribute;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/cms/Attribute;)V
    .locals 3

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    instance-of v2, v1, Lmyorg/bouncycastle/asn1/cms/Attribute;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public get(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/cms/Attribute;
    .locals 2

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/cms/Attribute;

    :goto_0
    return-object v1

    :cond_0
    check-cast v0, Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-object v1, v0

    goto :goto_0
.end method

.method public getAll(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 4

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    check-cast v2, Lmyorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    :cond_1
    return-object v1
.end method

.method public toASN1EncodableVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 5

    new-instance v2, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v4, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Vector;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->attributes:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->copyTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
