.class public Lmyorg/bouncycastle/asn1/DEREncodableVector;
.super Ljava/lang/Object;
.source "DEREncodableVector.java"


# instance fields
.field v:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public add(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public get(I)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
