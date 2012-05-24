.class Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;
.super Ljava/io/InputStream;
.source "RecipientInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/RecipientInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacInputStream"
.end annotation


# instance fields
.field private final inStream:Ljava/io/InputStream;

.field private final mac:Ljavax/crypto/Mac;


# direct methods
.method constructor <init>(Ljavax/crypto/Mac;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;->inStream:Ljava/io/InputStream;

    iput-object p1, p0, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;->mac:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->update(B)V

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lmyorg/bouncycastle/cms/RecipientInformation$MacInputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p1, p2, v0}, Ljavax/crypto/Mac;->update([BII)V

    :cond_0
    return v0
.end method
