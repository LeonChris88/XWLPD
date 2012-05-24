.class public Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.super Ljava/lang/Object;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;,
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$WriteOnceFileBackedMimeBodyPart;,
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isCanonicalisationRequired(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v3, "Content-Transfer-Encoding"

    invoke-virtual {p0, v3}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, p1

    :goto_0
    const-string v3, "binary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    aget-object v0, v1, v2

    goto :goto_0
.end method

.method static outputBodyPart(Ljava/io/OutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v16, p1

    check-cast v16, Ljavax/mail/internet/MimeBodyPart;

    const-string v22, "Content-Transfer-Encoding"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart/related"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/mail/internet/MimeMultipart;

    new-instance v7, Ljavax/mail/internet/ContentType;

    invoke-virtual/range {v17 .. v17}, Ljavax/mail/internet/MimeMultipart;->getContentType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "--"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "boundary"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v14, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v14, v10}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v14}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    move-object/from16 v0, v16

    invoke-static {v14, v0, v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputPreamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_2

    invoke-virtual {v14, v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputBodyPart(Ljava/io/OutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual {v14}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v14, v0, v4, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;Ljavax/mail/BodyPart;)V

    goto :goto_2

    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "--"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v14, v0, v1, v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;ILjava/lang/String;)V

    :goto_3
    return-void

    :cond_3
    if-nez v8, :cond_5

    move-object/from16 v6, p2

    :goto_4
    const-string v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "quoted-printable"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "binary"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4

    new-instance v18, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 p0, v18

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    :cond_5
    const/16 v22, 0x0

    aget-object v6, v8, v22

    goto :goto_4

    :cond_6
    const-string v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    new-instance v20, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v9

    new-instance v18, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/FilterOutputStream;->flush()V

    move-object/from16 p0, v18

    goto :goto_3

    :cond_7
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->flush()V

    if-eqz v3, :cond_8

    new-instance v19, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_6
    const/16 v22, 0x7ff8

    move/from16 v0, v22

    new-array v5, v0, [B

    :goto_7
    const/16 v22, 0x0

    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    if-lez v15, :cond_9

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1, v15}, Ljava/io/FilterOutputStream;->write([BII)V

    goto :goto_7

    :cond_8
    new-instance v19, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_6

    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/io/FilterOutputStream;->flush()V

    goto/16 :goto_3

    :cond_a
    const-string v22, "binary"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    new-instance v18, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 p0, v18

    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_3
.end method

.method static outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;Ljavax/mail/BodyPart;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    check-cast p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    invoke-virtual {p3}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/internet/MimeMultipart;

    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {v6}, Ljavax/mail/internet/MimeMultipart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    :cond_2
    invoke-static {v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_1
.end method

.method static outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    add-int/lit8 v0, p2, 0x1

    :cond_0
    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    :cond_1
    :goto_0
    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_2

    new-instance v4, Ljavax/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "all boundaries not found for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static outputPreamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-nez v2, :cond_1

    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "no boundary found"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static toMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v2, "exception creating body part."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static toMimeBodyPart([B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method

.method public static toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    :try_start_0
    const-string v1, "bcMail"

    const-string v2, ".mime"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/File;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException creating tmp file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/File;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;-><init>(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t save content to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create part: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
