.class Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;
.super Ljava/lang/Object;
.source "SMIMESignedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Signer"
.end annotation


# instance fields
.field final cert:Ljava/security/cert/X509Certificate;

.field final digestOID:Ljava/lang/String;

.field final encryptionOID:Ljava/lang/String;

.field final key:Ljava/security/PrivateKey;

.field final signedAttr:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

.field final synthetic this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

.field final unsignedAttr:Lmyorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 0

    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->key:Ljava/security/PrivateKey;

    iput-object p3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->cert:Ljava/security/cert/X509Certificate;

    iput-object p4, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->encryptionOID:Ljava/lang/String;

    iput-object p5, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->digestOID:Ljava/lang/String;

    iput-object p6, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->signedAttr:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    iput-object p7, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->unsignedAttr:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V

    return-void
.end method


# virtual methods
.method public getCert()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getDigestOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->digestOID:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->encryptionOID:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getSignedAttr()Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->signedAttr:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getUnsignedAttr()Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->unsignedAttr:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method
