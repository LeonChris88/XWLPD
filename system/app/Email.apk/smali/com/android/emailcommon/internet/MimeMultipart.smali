.class public Lcom/android/emailcommon/internet/MimeMultipart;
.super Lcom/android/emailcommon/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field protected mBoundary:Ljava/lang/String;

.field protected mContentType:Ljava/lang/String;

.field protected mPreamble:Ljava/lang/String;

.field protected mSubType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Multipart;-><init>()V

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMultipart;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    const-string v0, "mixed"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Multipart;-><init>()V

    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    const-string v1, "boundary"

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiPart does not contain boundary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid MultiPart Content-Type; must contain subtype and boundary. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method private writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\n name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Transfer-Encoding"

    const-string v11, "base64"

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    const-string v10, "Content-Disposition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "attachment;\n filename*=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v10, "Content-ID"

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "\r\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v10, :cond_5

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v7, v8

    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/Writer;->flush()V

    new-instance v2, Landroid/util/Base64OutputStream;

    const/16 v10, 0x14

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v10}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v7, v2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    const/16 v10, 0xd

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    const/16 v10, 0xa

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/util/Base64OutputStream;->close()V

    :cond_2
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    move-object v1, v2

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\n name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Transfer-Encoding"

    const-string v11, "base64"

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    const-string v10, "Content-Disposition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "attachment;\n filename=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/internet/MimeMultipart;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v10, :cond_1

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto/16 :goto_1

    :catch_0
    move-exception v3

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    :cond_6
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    :catch_1
    move-exception v10

    :goto_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    :cond_7
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    :catch_2
    move-exception v9

    :goto_5
    :try_start_4
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Invalid attachment."

    invoke-direct {v10, v11, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v10

    :catchall_1
    move-exception v10

    move-object v1, v2

    goto :goto_6

    :catch_3
    move-exception v9

    move-object v1, v2

    goto :goto_5

    :catch_4
    move-exception v10

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v3

    move-object v1, v2

    goto :goto_3

    :cond_a
    move-object v1, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public generateBoundary()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubTypeForTest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    return-object v0
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mSubType:Ljava/lang/String;

    const-string v0, "multipart/%s; boundary=\"%s\""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x400

    invoke-direct {v6, p4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/BodyPart;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0, p4}, Lcom/android/emailcommon/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v1, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {p0, p1, v7, v6, v0}, Lcom/android/emailcommon/internet/MimeMultipart;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    const-string v0, "\r\n"

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v4, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mPreamble:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v4, p0, Lcom/android/emailcommon/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/BodyPart;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMultipart;->mBoundary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method
