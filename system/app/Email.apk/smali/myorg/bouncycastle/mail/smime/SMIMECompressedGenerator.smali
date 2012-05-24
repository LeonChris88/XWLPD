.class public Lmyorg/bouncycastle/mail/smime/SMIMECompressedGenerator;
.super Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;
.source "SMIMECompressedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/SMIMECompressedGenerator$ContentCompressor;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    check-cast v0, Ljavax/activation/MailcapCommandMap;

    const-string v1, "application/pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    const-string v1, "application/x-pkcs7-mime;; x-java-content-handler=myorg.bouncycastle.mail.smime.handlers.x_pkcs7_mime"

    invoke-virtual {v0, v1}, Ljavax/activation/MailcapCommandMap;->addMailcap(Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/activation/CommandMap;->setDefaultCommandMap(Ljavax/activation/CommandMap;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmyorg/bouncycastle/mail/smime/SMIMEGenerator;-><init>()V

    return-void
.end method
