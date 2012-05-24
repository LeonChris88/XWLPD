.class Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineOutputStream"
.end annotation


# static fields
.field private static newline:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    sget-object v0, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    new-array v0, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    add-int/lit8 v3, v4, 0x1

    aget-char v5, v1, v4

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    move v4, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public writeln()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v3, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->newline:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "IOException"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
