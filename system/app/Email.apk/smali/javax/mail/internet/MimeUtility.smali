.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeUtility$AsciiOutputStream;
    }
.end annotation


# static fields
.field private static defaultJavaCharset:Ljava/lang/String;

.field private static java12:Z

.field private static javaCharsets:Ljava/util/HashMap;

.field private static mimeCharsets:Ljava/util/HashMap;

.field private static part:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "/META-INF/javamail.charset.map"

    const-class v2, Ljavax/mail/internet/MimeUtility;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    new-instance v2, Lgnu/inet/util/LineInputStream;

    invoke-direct {v2, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v0, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    invoke-static {v0, v2}, Ljavax/mail/internet/MimeUtility;->parse(Ljava/util/HashMap;Lgnu/inet/util/LineInputStream;)V

    sget-object v0, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    invoke-static {v0, v2}, Ljavax/mail/internet/MimeUtility;->parse(Ljava/util/HashMap;Lgnu/inet/util/LineInputStream;)V

    :cond_0
    :try_start_0
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1.1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->java12:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput v1, Ljavax/mail/internet/MimeUtility;->part:I

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asciiStatus(Ljava/io/InputStream;IZ)I
    .locals 13

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x1000

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    new-array v1, v0, [B

    move-object v6, v1

    move v7, v0

    move v0, v3

    move v1, v2

    move v3, v4

    move v2, p1

    :goto_1
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v6, v4, v7}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-gez v8, :cond_2

    :cond_0
    :goto_2
    if-nez v2, :cond_a

    if-eqz p2, :cond_a

    const/4 v0, 0x3

    :goto_3
    return v0

    :cond_1
    const/16 v0, 0x1000

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v11, v4

    move v4, v5

    move v5, v11

    move v12, v0

    move v0, v1

    move v1, v3

    move v3, v12

    :goto_4
    if-ge v5, v8, :cond_8

    :try_start_1
    aget-byte v9, v6, v5

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xd

    if-eq v9, v10, :cond_3

    const/16 v10, 0xa

    if-ne v9, v10, :cond_5

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_5
    invoke-static {v9}, Ljavax/mail/internet/MimeUtility;->isAscii(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v1, v1, 0x1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x3e6

    if-le v4, v10, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    const/4 v0, 0x3

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, -0x1

    if-eq v2, v5, :cond_9

    sub-int/2addr v2, v8

    :cond_9
    move v5, v4

    move v11, v3

    move v3, v1

    move v1, v0

    move v0, v11

    goto :goto_1

    :cond_a
    if-nez v1, :cond_c

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x2

    goto :goto_3

    :cond_c
    if-gt v3, v1, :cond_d

    const/4 v0, 0x3

    goto :goto_3

    :cond_d
    const/4 v0, 0x2

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    move v11, v3

    move v3, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    :cond_e
    move-object v6, v0

    move v7, v1

    move v0, v3

    move v1, v2

    move v3, v4

    move v2, p1

    goto :goto_1
.end method

.method static asciiStatus([B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    aget-byte v3, p0, v0

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->isAscii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    if-gt v2, v1, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lgnu/mail/util/Base64InputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lgnu/mail/util/QPInputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/QPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lgnu/mail/util/UUInputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/UUInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    :cond_4
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeInnerText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "=?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-eq v0, v5, :cond_0

    const-string v3, "?="

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "=?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    const-string v4, "\t\n\r "

    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p0, v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-le v9, v10, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v2

    move v2, v3

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v2

    invoke-static {}, Ljavax/mail/internet/MimeUtility;->decodetextStrict()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeInnerText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v5, 0x3f

    const/4 v1, 0x0

    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_3

    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v2, 0x1

    const-string v2, "?="

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_4

    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    new-array v8, v7, [B

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_5

    aget-char v1, v6, v0

    int-to-byte v1, v1

    aput-byte v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "B"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lgnu/mail/util/Base64InputStream;

    invoke-direct {v0, v1}, Lgnu/mail/util/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    new-array v4, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v1}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    new-instance v0, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_7

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljavax/mail/internet/MimeUtility;->decodetextStrict()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeInnerText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0

    :cond_8
    const-string v0, "Q"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lgnu/mail/util/QInputStream;

    invoke-direct {v0, v1}, Lgnu/mail/util/QInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljavax/mail/internet/ParseException;

    invoke-direct {v0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw v0

    :cond_9
    :try_start_1
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0
.end method

.method private static decodetextStrict()Z
    .locals 2

    :try_start_0
    const-string v0, "mail.mime.decodetext.strict"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lgnu/mail/util/Base64OutputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lgnu/mail/util/QPOutputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/QPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lgnu/mail/util/UUOutputStream;

    invoke-direct {v0, p0}, Lgnu/mail/util/UUOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-static {v2}, Lgnu/mail/util/BOutputStream;->encodedLength([B)I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v1, p4, :cond_1

    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    const/4 v1, 0x0

    div-int/lit8 v2, v9, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V

    div-int/lit8 v1, v9, 0x2

    invoke-virtual {p1, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V

    :goto_1
    return-void

    :cond_0
    move/from16 v0, p7

    invoke-static {v2, v0}, Lgnu/mail/util/QOutputStream;->encodedLength([BZ)I

    move-result v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p3, :cond_3

    new-instance v1, Lgnu/mail/util/BOutputStream;

    invoke-direct {v1, v3}, Lgnu/mail/util/BOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_2
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    if-nez p6, :cond_2

    const-string v1, "\r\n "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_4

    aget-byte v3, v2, v1

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    new-instance v1, Lgnu/mail/util/QOutputStream;

    move/from16 v0, p7

    invoke-direct {v1, v3, v0}, Lgnu/mail/util/QOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    goto :goto_2

    :cond_4
    const-string v1, "?="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->asciiStatus([B)I

    move-result v0

    if-ne v0, v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-nez p2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->asciiStatus([B)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const-string p2, "Q"

    :cond_1
    :goto_2
    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v6

    :goto_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "=?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x44

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v7, p3

    invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MimeUtility;->encodeBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;ZZ)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string p2, "B"

    goto :goto_2

    :cond_4
    const-string v0, "Q"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown transfer encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeeolStrict()Z
    .locals 2

    :try_start_0
    const-string v0, "mail.mime.encodeeol.strict"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 2

    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "file.encoding"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljavax/mail/internet/MimeUtility$1;

    invoke-direct {v1}, Ljavax/mail/internet/MimeUtility$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "base64"

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v3, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v4, "text/*"

    invoke-virtual {v3, v4}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v4

    new-instance v5, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;

    if-nez v4, :cond_2

    move v3, v1

    :goto_1
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->encodeeolStrict()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_3

    :goto_2
    invoke-direct {v5, v3, v1}, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;-><init>(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v5}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    invoke-virtual {v5}, Ljavax/mail/internet/MimeUtility$AsciiOutputStream;->status()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "7bit"

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :pswitch_1
    if-eqz v4, :cond_0

    const-string v0, "quoted-printable"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 4

    const-string v0, "base64"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v3, "text/*"

    invoke-virtual {v2, v3}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    invoke-static {v1, v3, v2}, Ljavax/mail/internet/MimeUtility;->asciiStatus(Ljava/io/InputStream;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_2
    const-string v0, "7bit"

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_0

    const-string v0, "quoted-printable"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getUniqueBoundaryValue()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "----=_Part_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Ljavax/mail/internet/MimeUtility;->part:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Ljavax/mail/internet/MimeUtility;->part:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2e

    invoke-static {p0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "JavaMail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "javamailuser@localhost"

    goto :goto_0
.end method

.method private static final isAscii(I)Z
    .locals 1

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0xff

    :cond_0
    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_2

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mimeCharsets:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-boolean v1, Ljavax/mail/internet/MimeUtility;->java12:Z

    if-nez v1, :cond_1

    sget-object v1, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_0
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeUtility;->javaCharsets:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, p0

    goto :goto_0
.end method

.method private static parse(Ljava/util/HashMap;Lgnu/inet/util/LineInputStream;)V
    .locals 3

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\t "

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x5c

    const/4 v1, 0x0

    const/16 v6, 0x22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_0

    if-eq v4, v9, :cond_0

    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_5

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x3

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_1

    if-eq v1, v7, :cond_1

    if-eq v1, v9, :cond_1

    if-ne v1, v8, :cond_2

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_2
    return-object p0

    :cond_5
    const/16 v5, 0x20

    if-lt v4, v5, :cond_6

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method
