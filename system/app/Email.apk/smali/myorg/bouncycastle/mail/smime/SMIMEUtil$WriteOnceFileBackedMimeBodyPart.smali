.class Lmyorg/bouncycastle/mail/smime/SMIMEUtil$WriteOnceFileBackedMimeBodyPart;
.super Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteOnceFileBackedMimeBodyPart"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$WriteOnceFileBackedMimeBodyPart;->dispose()V

    return-void
.end method
