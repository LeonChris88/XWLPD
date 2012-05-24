.class Lmyorg/bouncycastle/mail/smime/SMIMECompressedGenerator$ContentCompressor;
.super Ljava/lang/Object;
.source "SMIMECompressedGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMECompressedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentCompressor"
.end annotation


# instance fields
.field private final _compressionOid:Ljava/lang/String;

.field private final _content:Ljavax/mail/internet/MimeBodyPart;


# virtual methods
.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;-><init>()V

    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMECompressedGenerator$ContentCompressor;->_compressionOid:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lmyorg/bouncycastle/cms/CMSCompressedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMECompressedGenerator$ContentCompressor;->_content:Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, v1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
