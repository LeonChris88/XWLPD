.class public Ljavax/mail/util/SharedByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SharedByteArrayInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# instance fields
.field private off:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->off:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iput p2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->off:I

    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    iget v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->off:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 5

    sub-long v0, p3, p1

    long-to-int v0, v0

    new-instance v1, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedByteArrayInputStream;->off:I

    long-to-int v4, p1

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3, v0}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v1
.end method
