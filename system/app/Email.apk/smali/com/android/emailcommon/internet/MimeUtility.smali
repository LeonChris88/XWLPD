.class public Lcom/android/emailcommon/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v21, "filename"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-nez v10, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v8

    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_1
    const-string v21, "attachment"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v11, :cond_2

    const-string v21, "inline"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    :cond_2
    const/4 v15, 0x1

    :goto_0
    if-nez v5, :cond_3

    if-eqz v10, :cond_6

    if-nez v15, :cond_6

    :cond_3
    const/4 v4, 0x1

    :goto_1
    if-eqz v15, :cond_7

    if-eqz v10, :cond_7

    const/4 v14, 0x1

    :goto_2
    if-nez v4, :cond_4

    if-eqz v14, :cond_8

    :cond_4
    const/4 v6, 0x1

    :goto_3
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/emailcommon/mail/Multipart;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v18

    check-cast v18, Lcom/android/emailcommon/mail/Multipart;

    const/4 v12, 0x0

    :goto_4
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_a

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/emailcommon/mail/Message;

    move/from16 v21, v0

    if-eqz v21, :cond_b

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_a
    :goto_5
    return-void

    :cond_b
    if-nez v6, :cond_c

    const-string v21, "text/html"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    if-nez v6, :cond_d

    const-string v21, "text/plain"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    if-nez v6, :cond_11

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "text/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_11

    const-string v21, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/4 v7, 0x0

    move-object/from16 v3, v19

    :try_start_0
    array-length v0, v3

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_e

    aget-object v20, v3, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "name"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    if-eqz v21, :cond_f

    const/4 v7, 0x1

    :cond_e
    :goto_7
    if-eqz v7, :cond_10

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catch_0
    move-exception v21

    goto :goto_7
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v1, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    invoke-virtual {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v2
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x4c

    const/4 v7, 0x0

    const/16 v2, 0x4c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int v6, p1, v1

    if-gt v6, v8, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    neg-int v0, p1

    invoke-static {p0, v7}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    :goto_1
    if-ne v5, v1, :cond_1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    sub-int v6, v3, v0

    if-le v6, v8, :cond_2

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v5

    :cond_2
    move v5, v3

    goto :goto_1
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_2

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object v0, v7

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "="

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    if-lt v8, v11, :cond_0

    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/emailcommon/mail/Part;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v2, :cond_0

    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ""

    if-eq v0, v7, :cond_1

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ""

    if-ne v0, v7, :cond_3

    :cond_2
    invoke-static {}, Lorg/apache/james/mime4j/util/CharsetUtil;->getLocalCharset()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "ASCII"

    :cond_4
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    return-object v6

    :cond_5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_1

    :catchall_0
    move-exception v7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :goto_2
    throw v7

    :catch_4
    move-exception v7

    goto :goto_0

    :catch_5
    move-exception v7

    goto :goto_1

    :catch_6
    move-exception v8

    goto :goto_2
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    sget-object v1, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unfoldAndDecode2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->justDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
