.class public abstract Lcom/android/calendar/vcal/pim/VParser;
.super Ljava/lang/Object;
.source "VParser.java"


# instance fields
.field protected final PARSE_ERROR:I

.field protected mBuffer:Ljava/lang/String;

.field protected mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

.field protected mEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/vcal/pim/VParser;->PARSE_ERROR:I

    return-void
.end method


# virtual methods
.method protected getWord(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected isLetter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLetterOrDigit(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x61

    if-lt p1, v1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    :cond_2
    const/16 v1, 0x41

    if-lt p1, v1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPrintable(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/android/calendar/vcal/pim/VBuilder;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/vcal/pim/VParser;->setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->start()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->parseVFile(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuilder:Lcom/android/calendar/vcal/pim/VBuilder;

    invoke-interface {v3}, Lcom/android/calendar/vcal/pim/VBuilder;->end()V

    :cond_1
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    add-int/2addr v0, v1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected parse8bit(I)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method protected parseBase64(I)I
    .locals 6

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_0

    const-string v4, "\r\n\r\n"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x2

    move v4, v3

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v4, -0x1

    goto :goto_1
.end method

.method protected parseCharsetVal(I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "us-ascii"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_1

    add-int/2addr v1, v0

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "iso-8859-1"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v3, "iso-8859-2"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_3

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_3
    const-string v3, "iso-8859-3"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_4

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_4
    const-string v3, "iso-8859-4"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_5

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_5
    const-string v3, "iso-8859-5"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_6

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_6
    const-string v3, "iso-8859-6"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_7

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_7
    const-string v3, "iso-8859-7"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_8

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_8
    const-string v3, "iso-8859-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_9

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_9
    const-string v3, "iso-8859-9"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_a

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_a
    const-string v3, "euc-kr"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_b

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_b
    const-string v3, "shift_jis"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_c

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_c
    const-string v3, "utf-8"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_d

    add-int/2addr v1, v0

    move v2, v1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    move v2, v1

    goto/16 :goto_0
.end method

.method protected parseCrlf(I)I
    .locals 3

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected parseLangVal(I)I
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseTag(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    :goto_0
    return v2

    :cond_0
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_1
    const-string v3, "-"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v2, v0, :cond_2

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseTag(I)I

    move-result v0

    if-eq v2, v0, :cond_1

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method protected parseOctet(I)I
    .locals 10

    const/16 v9, 0x46

    const/16 v8, 0x41

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, "="

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v1

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    add-int/2addr p1, v1

    add-int/2addr v2, v1

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    const/16 v4, 0xd

    if-ne v0, v4, :cond_4

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_0

    :cond_4
    if-lt v0, v6, :cond_5

    if-le v0, v7, :cond_6

    :cond_5
    if-lt v0, v8, :cond_0

    if-gt v0, v9, :cond_0

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v0, v6, :cond_7

    if-le v0, v7, :cond_8

    :cond_7
    if-lt v0, v8, :cond_0

    if-gt v0, v9, :cond_0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected parsePEncodingVal(I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "7BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string v2, "7BIT"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    add-int/2addr v1, v0

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "8BIT"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string v2, "8BIT"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_3

    const-string v2, "QUOTED-PRINTABLE"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_3
    const-string v3, "BASE64"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_4

    const-string v2, "BASE64"

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0
.end method

.method protected parsePValueVal(I)I
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_1

    add-int/2addr v1, v0

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "URL"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v3, "CONTENT-ID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_3

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_3
    const-string v3, "CID"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_4

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_4
    const-string v3, "INLINE"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v2, :cond_5

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseXWord(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0
.end method

.method protected parsePtext(I)I
    .locals 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_1

    add-int/lit8 p1, p1, 0x1

    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/16 v4, 0x3d

    if-eq v0, v4, :cond_2

    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-eq v0, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseOctet(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v3, v2

    goto :goto_0
.end method

.method protected parseQuotedPrintable(I)I
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parsePtext(I)I

    move-result v0

    if-ne v4, v0, :cond_1

    const-string v2, "="

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-eq v0, v4, :cond_0

    add-int/2addr v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->removeWs(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method protected parseString(ILjava/lang/String;Z)I
    .locals 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int v5, p1, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method protected parseTag(I)I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->isLetter(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    :goto_1
    if-nez v1, :cond_1

    const/4 v2, -0x1

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected abstract parseVFile(I)I
.end method

.method protected parseValue(I)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "7BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "8BIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parse8bit(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseQuotedPrintable(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mEncoding:Ljava/lang/String;

    const-string v3, "BASE64"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseBase64(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    move v1, v0

    goto :goto_0
.end method

.method protected parseWord(I)I
    .locals 5

    const/16 v4, 0x3b

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/vcal/pim/VParser;->isPrintable(C)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    if-nez v1, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1

    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v4, :cond_3

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected parseWsls(I)I
    .locals 7

    const/16 v6, 0x20

    const/16 v5, 0x9

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1

    if-ne v0, v5, :cond_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseCrlf(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    add-int/2addr p1, v1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseCrlf(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eq v1, v3, :cond_4

    add-int/2addr p1, v1

    add-int/2addr v2, v1

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_4
    if-lez v2, :cond_5

    move v3, v2

    :cond_5
    return v3
.end method

.method protected parseXWord(I)I
    .locals 5

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v3, "X-"

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/calendar/vcal/pim/VParser;->parseString(ILjava/lang/String;Z)I

    move-result v0

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/android/calendar/vcal/pim/VParser;->parseWord(I)I

    move-result v0

    if-eq v2, v0, :cond_0

    add-int/2addr v1, v0

    move v2, v1

    goto :goto_0
.end method

.method protected removeWs(I)I
    .locals 3

    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setInputStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, -0x1

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    if-eq v1, v5, :cond_2

    const/16 v4, 0xd

    if-ne v1, v4, :cond_4

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    :cond_0
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    return-void

    :cond_1
    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v5, :cond_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/vcal/pim/VParser;->mBuffer:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v4, "\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
