.class public Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;
.super Ljava/lang/Object;
.source "CMSProcessableBodyPartInbound.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private final bodyPart:Ljavax/mail/BodyPart;

.field private final defaultContentTransferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/BodyPart;)V
    .locals 1

    const-string v0, "7bit"

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;-><init>(Ljavax/mail/BodyPart;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/BodyPart;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->bodyPart:Ljavax/mail/BodyPart;

    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->defaultContentTransferEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->bodyPart:Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->bodyPart:Ljavax/mail/BodyPart;

    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartInbound;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputBodyPart(Ljava/io/OutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t write BodyPart to stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
