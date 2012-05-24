.class public Lmyorg/bouncycastle/cms/CMSProcessableByteArray;
.super Ljava/lang/Object;
.source "CMSProcessableByteArray.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSProcessableByteArray;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
