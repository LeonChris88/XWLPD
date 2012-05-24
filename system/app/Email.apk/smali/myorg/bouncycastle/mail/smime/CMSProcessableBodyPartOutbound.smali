.class public Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;
.super Ljava/lang/Object;
.source "CMSProcessableBodyPartOutbound.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private bodyPart:Ljavax/mail/BodyPart;

.field private defaultContentTransferEncoding:Ljava/lang/String;


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->bodyPart:Ljavax/mail/BodyPart;

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
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->bodyPart:Ljavax/mail/BodyPart;

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-static {v2, v3}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->isCanonicalisationRequired(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    invoke-direct {v1, p1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v1

    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPartOutbound;->bodyPart:Ljavax/mail/BodyPart;

    invoke-virtual {v2, p1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lmyorg/bouncycastle/cms/CMSException;

    const-string v3, "can\'t write BodyPart to stream."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
