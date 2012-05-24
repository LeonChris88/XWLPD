.class public Lcom/android/emailcommon/internet/MimeMessage;
.super Lcom/android/emailcommon/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final END_OF_LINE:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mBcc:[Lcom/android/emailcommon/mail/Address;

.field private mBody:Lcom/android/emailcommon/mail/Body;

.field private mCc:[Lcom/android/emailcommon/mail/Address;

.field private mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

.field private mFrom:[Lcom/android/emailcommon/mail/Address;

.field private mHeader:Lcom/android/emailcommon/internet/MimeHeader;

.field private mImportance:Ljava/lang/String;

.field private mInhibitLocalMessageId:Z

.field private mReadReceiptTo:[Lcom/android/emailcommon/mail/Address;

.field private mReplyTo:[Lcom/android/emailcommon/mail/Address;

.field private mSentDate:Ljava/util/Date;

.field protected mSize:I

.field private mTo:[Lcom/android/emailcommon/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->sRandom:Ljava/util/Random;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Message;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    return-void
.end method

.method private generateMessageId()Ljava/lang/String;
    .locals 6

    const/16 v4, 0x3c

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    sget-object v4, Lcom/android/emailcommon/internet/MimeMessage;->sRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    and-int/lit8 v3, v4, 0x1f

    const-string v4, "0123456789abcdefghijklmnopqrstuv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "@email.android.com>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/emailcommon/internet/MimeHeader;

    invoke-direct {v0}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mHeader:Lcom/android/emailcommon/internet/MimeHeader;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcom/android/emailcommon/mail/Body;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v1, "Content-ID"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/emailcommon/internet/MimeMessage;->REMOVE_OPTIONAL_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "$1"

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v1, "Content-Disposition"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getExtendedHeaders()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    invoke-virtual {v0}, Lcom/android/emailcommon/internet/MimeHeader;->writeToString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()[Lcom/android/emailcommon/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    if-nez v1, :cond_2

    const-string v1, "From"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Sender"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    :cond_2
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImportance()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mImportance:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Importance"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mImportance:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mImportance:Ljava/lang/String;

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

.method public getMessageId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v1, "Message-ID"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadReceiptTo()[Lcom/android/emailcommon/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReadReceiptTo:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_0

    const-string v0, "Disposition-Notification-To"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReadReceiptTo:[Lcom/android/emailcommon/mail/Address;

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReadReceiptTo:[Lcom/android/emailcommon/mail/Address;

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    const-string v3, "Received"

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_0

    const-string v0, "To"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_2

    const-string v0, "CC"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    :cond_2
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_4

    const-string v0, "BCC"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    :cond_4
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Unrecognized recipient type."

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReplyTo()[Lcom/android/emailcommon/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    if-nez v0, :cond_0

    const-string v0, "Reply-to"

    invoke-virtual {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {p0, v2}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v6, 0x2

    :try_start_0
    const-string v4, "Content-Type"

    invoke-virtual {p0, v4}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "charset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "MBP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-ge v4, v6, :cond_1

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v3, :cond_0

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    const-string v4, "Subject"

    invoke-virtual {p0, v4}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x1

    aget-object v4, v1, v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_2
    const-string v4, "Subject"

    invoke-virtual {p0, v4}, Lcom/android/emailcommon/internet/MimeMessage;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/emailcommon/internet/MimeHeader;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    iput-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mImportance:Ljava/lang/String;

    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    new-instance v1, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;-><init>(Lcom/android/emailcommon/internet/MimeMessage;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    new-instance v1, Lorg/apache/james/mime4j/EOLConvertingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Message-ID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/internet/MimeMessage;->mInhibitLocalMessageId:Z

    :cond_0
    return-void
.end method

.method public setBody(Lcom/android/emailcommon/mail/Body;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    instance-of v1, p1, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/emailcommon/mail/Multipart;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/mail/Multipart;->setParent(Lcom/android/emailcommon/mail/Part;)V

    const-string v1, "Content-Type"

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MIME-Version"

    const-string v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/emailcommon/internet/TextBody;

    if-eqz v1, :cond_0

    const-string v1, "Content-Type"

    const-string v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtendedHeaders(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    :cond_0
    return-void

    :cond_1
    new-instance v5, Lcom/android/emailcommon/internet/MimeHeader;

    invoke-direct {v5}, Lcom/android/emailcommon/internet/MimeHeader;-><init>()V

    iput-object v5, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    sget-object v5, Lcom/android/emailcommon/internet/MimeMessage;->END_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    const-string v5, ":"

    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-eq v5, v8, :cond_2

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal extended headers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Lcom/android/emailcommon/internet/MimeMessage;->mExtendedHeader:Lcom/android/emailcommon/internet/MimeHeader;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setFrom(Lcom/android/emailcommon/mail/Address;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    const-string v1, "From"

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/mail/Address;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mFrom:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/internet/MimeHeader;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Message-ID"

    invoke-virtual {p0, v0, p1}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x4

    const/4 v0, 0x5

    sget-object v3, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "To"

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    :goto_0
    return-void

    :cond_1
    const-string v3, "To"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mTo:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_5

    if-eqz p2, :cond_3

    array-length v3, p2

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "CC"

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    :cond_4
    const-string v3, "CC"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mCc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    if-ne p1, v3, :cond_8

    if-eqz p2, :cond_6

    array-length v3, p2

    if-nez v3, :cond_7

    :cond_6
    const-string v3, "BCC"

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    :cond_7
    const-string v3, "BCC"

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBcc:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0

    :cond_8
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Unrecognized recipient type."

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setReplyTo([Lcom/android/emailcommon/mail/Address;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0xa

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Reply-to"

    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    :goto_0
    return-void

    :cond_1
    const-string v1, "Reply-to"

    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->toHeader([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mReplyTo:[Lcom/android/emailcommon/mail/Address;

    goto :goto_0
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Date"

    sget-object v1, Lcom/android/emailcommon/internet/MimeMessage;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mSentDate:Ljava/util/Date;

    return-void
.end method

.method public setSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0x9

    const-string v1, "Subject"

    const/16 v2, 0x9

    invoke-static {p1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/emailcommon/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/emailcommon/mail/Body;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/emailcommon/internet/MimeMessage;->getMimeHeaders()Lcom/android/emailcommon/internet/MimeHeader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/emailcommon/internet/MimeHeader;->writeTo(Ljava/io/OutputStream;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage;->mBody:Lcom/android/emailcommon/mail/Body;

    invoke-interface {v1, p1}, Lcom/android/emailcommon/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
