.class public Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPart;
.super Ljava/lang/Object;
.source "CMSProcessableBodyPart.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSProcessable;


# instance fields
.field private bodyPart:Ljavax/mail/BodyPart;


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPart;->bodyPart:Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/CMSProcessableBodyPart;->bodyPart:Ljavax/mail/BodyPart;

    invoke-virtual {v1, p1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/cms/CMSException;

    const-string v2, "can\'t write BodyPart to stream."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
