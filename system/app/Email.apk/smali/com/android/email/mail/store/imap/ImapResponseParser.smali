.class public Lcom/android/email/mail/store/imap/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;
    }
.end annotation


# instance fields
.field private final mBufferReadUntil:Ljava/lang/StringBuilder;

.field private final mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

.field private final mIn:Lcom/android/email/PeekableInputStream;

.field private mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

.field private final mLiteralKeepInMemoryThreshold:I

.field private final mParseBareString:Ljava/lang/StringBuilder;

.field private final mResponsesToDestroy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V
    .locals 1

    const/high16 v0, 0x100

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    new-instance v0, Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, p1}, Lcom/android/email/PeekableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    iput-object p2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    iput p3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    iput-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    return-void
.end method

.method private static newEOSException()Ljava/io/IOException;
    .locals 3

    const-string v0, "End of stream reached"

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Email"

    const-string v2, "End of stream reached"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "End of stream reached"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private onParseError(Ljava/lang/Exception;)V
    .locals 5

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_1
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v2}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseBareString()Lcom/android/email/mail/store/imap/ImapString;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v5, 0x5d

    const/16 v4, 0x29

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    if-eq v0, v4, :cond_1

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    if-eq v0, v5, :cond_1

    const/16 v2, 0x25

    if-eq v0, v2, :cond_1

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Expected string, none found."

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/email/mail/store/imap/ImapString;->EMPTY:Lcom/android/email/mail/store/imap/ImapString;

    :goto_1
    return-object v2

    :cond_3
    new-instance v2, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v2, v1}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const/16 v2, 0x28

    if-ne v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mParseBareString:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private parseElement()Lcom/android/email/mail/store/imap/ImapElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_0
    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    new-instance v1, Lcom/android/email/mail/store/imap/ImapSimpleString;

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseLiteral()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_4
        0x22 -> :sswitch_2
        0x28 -> :sswitch_0
        0x5b -> :sswitch_1
        0x7b -> :sswitch_3
    .end sparse-switch
.end method

.method private parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v1

    if-ne v1, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElement()Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapList;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    goto :goto_0
.end method

.method private parseList(CC)Lcom/android/email/mail/store/imap/ImapList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    new-instance v0, Lcom/android/email/mail/store/imap/ImapList;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapList;-><init>()V

    invoke-direct {p0, v0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V

    invoke-virtual {p0, p2}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    return-object v0
.end method

.method private parseLiteral()Lcom/android/email/mail/store/imap/ImapString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    const/16 v3, 0x7d

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    if-gez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid length in literal"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v0, Lcom/android/email/FixedLengthInputStream;

    iget-object v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-direct {v0, v3, v2}, Lcom/android/email/FixedLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v2, v3, :cond_1

    new-instance v3, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;

    iget-object v4, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mLiteralKeepInMemoryThreshold:I

    if-le v2, v3, :cond_3

    new-instance v3, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;

    invoke-direct {v3, v0}, Lcom/android/email/mail/store/imap/ImapTempFileLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;

    invoke-direct {v3, v0}, Lcom/android/email/mail/store/imap/ImapMemoryLiteral;-><init>(Lcom/android/email/FixedLengthInputStream;)V

    goto :goto_0
.end method

.method private parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v11, 0x5b

    const/16 v9, 0x28

    const/16 v10, 0x20

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v0

    const/16 v8, 0x2b

    if-ne v0, v8, :cond_1

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    throw v3

    :cond_0
    return-object v5

    :cond_1
    const/16 v8, 0x2a

    if-ne v0, v8, :cond_4

    const/4 v7, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    const/16 v8, 0x20

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    :goto_1
    new-instance v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseBareString()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_8

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isStatusResponse()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v2

    if-ne v2, v11, :cond_5

    const/16 v8, 0x5b

    const/16 v9, 0x5d

    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_2

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntilEol()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Lcom/android/email/mail/store/imap/ImapSimpleString;

    invoke-direct {v8, v6}, Lcom/android/email/mail/store/imap/ImapSimpleString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    move-object v5, v4

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/16 v8, 0x20

    :try_start_4
    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    goto :goto_1

    :cond_5
    if-ne v2, v9, :cond_2

    const/16 v8, 0x28

    const/16 v9, 0x29

    :try_start_5
    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseList(CC)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->add(Lcom/android/email/mail/store/imap/ImapElement;)V

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->peek()I

    move-result v8

    if-ne v8, v10, :cond_2

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v8

    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    :cond_6
    throw v8

    :cond_7
    const/4 v8, 0x0

    :try_start_6
    invoke-direct {p0, v4, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseElements(Lcom/android/email/mail/store/imap/ImapList;C)V

    goto :goto_3

    :cond_8
    const/16 v8, 0xd

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v8

    goto :goto_4
.end method

.method private peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->peek()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_0
    return v0
.end method

.method private readByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mIn:Lcom/android/email/PeekableInputStream;

    invoke-virtual {v1}, Lcom/android/email/PeekableInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/email/mail/store/imap/ImapResponseParser;->newEOSException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mDiscourseLogger:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v1, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addReceivedByte(I)V

    return v0
.end method


# virtual methods
.method public destroyResponses()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method expect(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->parseResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "BYE"

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Email"

    const-string v3, "Received BYE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->destroy()V

    new-instance v2, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;

    invoke-direct {v2}, Lcom/android/email/mail/store/imap/ImapResponseParser$ByeException;-><init>()V

    throw v2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->onParseError(Ljava/lang/Exception;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mResponsesToDestroy:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mListener:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;

    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method readUntil(C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readByte()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/imap/ImapResponseParser;->mBufferReadUntil:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method readUntilEol()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readUntil(C)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->expect(C)V

    return-object v0
.end method
