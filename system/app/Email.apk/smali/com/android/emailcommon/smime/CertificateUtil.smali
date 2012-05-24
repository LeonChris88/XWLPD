.class public Lcom/android/emailcommon/smime/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/smime/CertificateUtil$1;,
        Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;,
        Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;,
        Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs checkCertValidity([Ljava/security/cert/Certificate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    instance-of v4, v1, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static convertOIDtoAlgorithm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .locals 2

    const-string v1, "1.2.840.113549.3.7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_EDE3_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "1.3.14.3.2.7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :cond_1
    const-string v1, "1.2.840.113549.3.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :sswitch_0
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC2128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :sswitch_1
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC264_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :sswitch_2
    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC240_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :cond_3
    const-string v1, "2.16.840.1.101.3.4.1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :cond_4
    const-string v1, "2.16.840.1.101.3.4.1.22"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES192_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :cond_5
    const-string v1, "2.16.840.1.101.3.4.1.42"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->aES256_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n-----END CERTIFICATE-----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    new-instance v4, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error while converting certificate. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/smime/CertificateUtilExcpetion;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static easIdToEncryptionAlgorith(I)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_EDE3_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->dES_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC2128_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->rC264_CBC:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static evaluateBestAlghorithm(Lmyorg/bouncycastle/asn1/ASN1Set;II)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .locals 13

    invoke-static {p1}, Lcom/android/emailcommon/smime/CertificateUtil;->easIdToEncryptionAlgorith(I)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-result-object v0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    instance-of v11, v8, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v11, :cond_5

    move-object v10, v8

    check-cast v10, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ge v7, v11, :cond_5

    invoke-virtual {v10, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    instance-of v11, v6, Lmyorg/bouncycastle/asn1/DERSequence;

    if-eqz v11, :cond_3

    move-object v1, v6

    check-cast v1, Lmyorg/bouncycastle/asn1/DERSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERSequence;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-static {v2, v3}, Lcom/android/emailcommon/smime/CertificateUtil;->convertOIDtoAlgorithm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-result-object v5

    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->UNKNOWN:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    if-eq v5, v11, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERSequence;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lmyorg/bouncycastle/asn1/DERSequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_6

    if-gez p1, :cond_0

    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    if-ltz p1, :cond_7

    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->DO_NOT_NEGOTIATE:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual {v11}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v11

    if-ne p2, v11, :cond_7

    invoke-static {v4, v0}, Lcom/android/emailcommon/smime/CertificateUtil;->isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    if-ltz p1, :cond_a

    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_STRONG:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual {v11}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v11

    if-ne p2, v11, :cond_a

    invoke-static {v4, v0}, Lcom/android/emailcommon/smime/CertificateUtil;->isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v0}, Lcom/android/emailcommon/smime/CertificateUtil;->getAlgorithmStrength(Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)I

    move-result v9

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_9

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    invoke-static {v11}, Lcom/android/emailcommon/smime/CertificateUtil;->getAlgorithmStrength(Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)I

    move-result v11

    if-gt v11, v9, :cond_8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-object v0, v11

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_b

    sget-object v11, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_ANY:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual {v11}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v11

    if-ne p2, v11, :cond_b

    invoke-static {v4, v0}, Lcom/android/emailcommon/smime/CertificateUtil;->isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-object v0, v11

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static getAlgorithmStrength(Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)I
    .locals 2

    sget-object v0, Lcom/android/emailcommon/smime/CertificateUtil$1;->$SwitchMap$com$android$emailcommon$smime$CertificateUtil$EncryptionAlgorithm:[I

    invoke-virtual {p0}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getCertificates([Ljavax/mail/Address;JLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavax/mail/Address;",
            "J",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/smime/CertificateUtilExcpetion;
        }
    .end annotation

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    array-length v1, v0

    new-array v7, v1, [Ljavax/mail/internet/InternetAddress;

    const-string v1, "content://com.android.exchange.directory.provider/resolverecipients/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v1, v0

    if-ge v14, v1, :cond_0

    aget-object v1, p0, v14

    check-cast v1, Ljavax/mail/internet/InternetAddress;

    aput-object v1, v7, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountId=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v7

    add-int/lit8 v1, v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    array-length v1, v7

    const/4 v4, 0x1

    if-le v1, v4, :cond_4

    const/4 v14, 0x0

    :goto_1
    array-length v1, v7

    if-ge v14, v1, :cond_5

    if-nez v14, :cond_3

    const-string v1, "(to=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    if-ne v14, v1, :cond_2

    const-string v1, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v14, 0x1

    aget-object v4, v7, v14

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-lt v14, v1, :cond_1

    const-string v1, " OR to=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    array-length v1, v7

    const/4 v4, 0x1

    if-ne v1, v4, :cond_b

    const-string v1, "to=?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v4, 0x0

    aget-object v4, v7, v4

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    :cond_5
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "to"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "email"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "certificate"

    aput-object v4, v3, v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x1

    :goto_3
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v12, :cond_6

    const-string v1, "email"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    :goto_4
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$CertificateCacheColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "email"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "certificate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    invoke-static {v8}, Lcom/android/emailcommon/smime/CertificateUtil;->convertToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-direct {v1, v11, v4}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const-string v1, " OR "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "email"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    if-eqz v11, :cond_8

    new-instance v1, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    const/4 v4, 0x0

    invoke-direct {v1, v11, v4}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    new-instance v1, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v1, v0, v4}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$CertificateCacheColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v1, v4, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "com.android.email.provider"

    move-object/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_b
    :goto_5
    return-object v17

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_5
.end method

.method public static getSignerCapabilities(Lmyorg/bouncycastle/cms/SignerInformation;)Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 4

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    new-instance v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.9.15"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/cms/AttributeTable;->get(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    goto :goto_0
.end method

.method private static isRequiredOnList(Ljava/util/ArrayList;Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;",
            ">;",
            "Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static validateCertificates([Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;JLandroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;",
            "J",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accountId=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "content://com.android.exchange.directory.provider/validatecert/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x0

    :goto_0
    :try_start_0
    array-length v0, p0

    if-ge v9, v0, :cond_0

    const-string v0, " AND certificates=\'?\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, " AND checkCRL=\'?\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "true"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v10

    goto :goto_1
.end method
