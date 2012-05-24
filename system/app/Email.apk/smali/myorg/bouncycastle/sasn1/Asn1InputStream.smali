.class public Lmyorg/bouncycastle/sasn1/Asn1InputStream;
.super Ljava/lang/Object;
.source "Asn1InputStream.java"


# instance fields
.field private _eofFound:Z

.field _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    const v0, 0x7fffffff

    iput v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    array-length v0, p1

    iput v0, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    return-void
.end method

.method private readLength()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

    const-string v5, "DER length more than 4 bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    iget-object v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    if-gez v2, :cond_3

    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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
    iget v4, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_limit:I

    if-lt v1, v4, :cond_6

    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move v4, v1

    goto :goto_0
.end method


# virtual methods
.method public readObject()Lmyorg/bouncycastle/sasn1/Asn1Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    iget-boolean v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/io/EOFException;

    const-string v8, "attempt to read past end of file."

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iput-boolean v9, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_1
    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    instance-of v7, v7, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    check-cast v7, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_2
    and-int/lit8 v1, v5, -0x21

    move v6, v1

    and-int/lit16 v7, v5, 0x80

    if-eqz v7, :cond_5

    and-int/lit8 v6, v5, 0x1f

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_5

    const/4 v6, 0x0

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_1
    if-ltz v0, :cond_3

    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_3

    and-int/lit8 v7, v0, 0x7f

    or-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x7

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_3
    if-gez v0, :cond_4

    iput-boolean v9, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_eofFound:Z

    new-instance v7, Ljava/io/EOFException;

    const-string v8, "EOF encountered inside tag value."

    invoke-direct {v7, v8}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    and-int/lit8 v7, v0, 0x7f

    or-int/2addr v6, v7

    :cond_5
    invoke-direct {p0}, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->readLength()I

    move-result v4

    if-gez v4, :cond_6

    new-instance v3, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v3, v7}, Lmyorg/bouncycastle/sasn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;)V

    sparse-switch v1, :sswitch_data_0

    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;

    invoke-direct {v7, v5, v6, v3}, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;-><init>(IILjava/io/InputStream;)V

    goto :goto_0

    :sswitch_0
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Null;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/sasn1/Asn1Null;-><init>(I)V

    goto :goto_0

    :sswitch_1
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerOctetString;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerOctetString;-><init>(ILjava/io/InputStream;)V

    goto :goto_0

    :sswitch_2
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerSequence;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerSequence;-><init>(ILjava/io/InputStream;)V

    goto :goto_0

    :sswitch_3
    new-instance v7, Lmyorg/bouncycastle/sasn1/BerSet;

    invoke-direct {v7, v5, v3}, Lmyorg/bouncycastle/sasn1/BerSet;-><init>(ILjava/io/InputStream;)V

    goto :goto_0

    :cond_6
    new-instance v2, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;

    iget-object v7, p0, Lmyorg/bouncycastle/sasn1/Asn1InputStream;->_in:Ljava/io/InputStream;

    invoke-direct {v2, v7, v4}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    sparse-switch v1, :sswitch_data_1

    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;

    invoke-direct {v7, v5, v6, v2}, Lmyorg/bouncycastle/sasn1/Asn1TaggedObject;-><init>(IILjava/io/InputStream;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Integer;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/Asn1Integer;-><init>(I[B)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1Null;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/sasn1/Asn1Null;-><init>(I)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v7, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/Asn1ObjectIdentifier;-><init>(I[B)V

    goto/16 :goto_0

    :sswitch_7
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerOctetString;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerOctetString;-><init>(I[B)V

    goto/16 :goto_0

    :sswitch_8
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerSequence;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerSequence;-><init>(I[B)V

    goto/16 :goto_0

    :sswitch_9
    new-instance v7, Lmyorg/bouncycastle/sasn1/DerSet;

    invoke-virtual {v2}, Lmyorg/bouncycastle/sasn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v5, v8}, Lmyorg/bouncycastle/sasn1/DerSet;-><init>(I[B)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_7
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x10 -> :sswitch_8
        0x11 -> :sswitch_9
    .end sparse-switch
.end method
