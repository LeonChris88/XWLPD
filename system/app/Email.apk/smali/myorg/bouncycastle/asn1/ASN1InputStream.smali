.class public Lmyorg/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    iput-boolean p3, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method static createPrimitiveDERObject(I[B)Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v2, v4, p0, p1}, Lmyorg/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    :goto_0
    return-object v2

    :pswitch_1
    aget-byte v1, p1, v4

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    const/4 v2, 0x1

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lmyorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Lmyorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Lmyorg/bouncycastle/asn1/DERBoolean;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>([B)V

    goto :goto_0

    :pswitch_4
    new-instance v2, Lmyorg/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_0

    :pswitch_5
    new-instance v2, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    goto :goto_0

    :pswitch_6
    new-instance v2, Lmyorg/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_0

    :pswitch_7
    new-instance v2, Lmyorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_0

    :pswitch_8
    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_0

    :pswitch_9
    sget-object v2, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    goto :goto_0

    :pswitch_a
    new-instance v2, Lmyorg/bouncycastle/asn1/DERNumericString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_0

    :pswitch_b
    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto :goto_0

    :pswitch_c
    new-instance v2, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    :pswitch_d
    new-instance v2, Lmyorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0

    :pswitch_e
    new-instance v2, Lmyorg/bouncycastle/asn1/DERT61String;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0

    :pswitch_f
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto :goto_0

    :pswitch_10
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    goto :goto_0

    :pswitch_11
    new-instance v2, Lmyorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_0

    :pswitch_12
    new-instance v2, Lmyorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_1
    const/16 v4, 0x7f

    if-le v1, v4, :cond_6

    and-int/lit8 v3, v1, 0x7f

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    if-lt v1, p1, :cond_6

    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move v4, v1

    goto :goto_0
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v1, p1, 0x1f

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected buildObject(III)Lmyorg/bouncycastle/asn1/DERObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    new-instance v0, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_1

    new-instance v2, Lmyorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v1, p2, v3}, Lmyorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    :goto_1
    return-object v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_2

    new-instance v2, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v2, p1, p2, v0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    sparse-switch p2, :sswitch_data_0

    new-instance v3, Lmyorg/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v2, p2, v4}, Lmyorg/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v2, v3

    goto :goto_1

    :sswitch_0
    new-instance v2, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    iget-object v3, v3, Lmyorg/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_1

    :sswitch_1
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_3

    new-instance v2, Lmyorg/bouncycastle/asn1/LazyDERSequence;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/LazyDERSequence;-><init>([B)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/DERFactory;->createSequence(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)Lmyorg/bouncycastle/asn1/DERSequence;

    move-result-object v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2, v3}, Lmyorg/bouncycastle/asn1/DERFactory;->createSet(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Z)Lmyorg/bouncycastle/asn1/DERSet;

    move-result-object v2

    goto :goto_1

    :sswitch_3
    new-instance v2, Lmyorg/bouncycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;)Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERExternal;-><init>(Lmyorg/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p2, v2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method protected readLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v4

    if-gtz v4, :cond_1

    if-nez v4, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "unexpected end-of-contents marker"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    invoke-static {p0, v4}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v5

    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    if-gez v2, :cond_6

    if-nez v1, :cond_3

    new-instance v6, Ljava/io/IOException;

    const-string v7, "indefinite length primitive encoding encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    new-instance v0, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    and-int/lit8 v6, v4, 0x40

    if-eqz v6, :cond_4

    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget v6, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, v0, v6}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    new-instance v6, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v6, v5, v3}, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERApplicationSpecificParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    :cond_4
    and-int/lit16 v6, v4, 0x80

    if-eqz v6, :cond_5

    new-instance v6, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v6, v4, v5, v0}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILjava/io/InputStream;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERTaggedObjectParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    :cond_5
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1StreamParser;

    iget v6, p0, Lmyorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v3, v0, v6}, Lmyorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    sparse-switch v5, :sswitch_data_0

    new-instance v6, Ljava/io/IOException;

    const-string v7, "unknown BER object encountered"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    new-instance v6, Lmyorg/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BEROctetStringParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    :sswitch_1
    new-instance v6, Lmyorg/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/BERSequenceParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSequenceParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    :sswitch_2
    new-instance v6, Lmyorg/bouncycastle/asn1/BERSetParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/BERSetParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/BERSetParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    :sswitch_3
    new-instance v6, Lmyorg/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v6, v3}, Lmyorg/bouncycastle/asn1/DERExternalParser;-><init>(Lmyorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERExternalParser;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v4, v5, v2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
