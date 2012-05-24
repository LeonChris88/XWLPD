.class public Lcom/android/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;
    }
.end annotation


# static fields
.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

.field private static final PATTERN_ENDLINE_LF:Ljava/util/regex/Pattern;

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

.field static final mDateFormat:Ljava/text/SimpleDateFormat;

.field private static mDeviceId:Ljava/lang/String;

.field private static mIsExchangeAccount:Z

.field private static mPolicySet:Lcom/android/emailcommon/service/PolicySet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    const-string v0, "\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_LF:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/emailcommon/internet/Rfc822Output;->mIsExchangeAccount:Z

    sput-object v3, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    sput-object v3, Lcom/android/emailcommon/internet/Rfc822Output;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBodyText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v8, v9

    :goto_0
    return-object v8

    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_3

    move v6, v8

    :goto_1
    and-int/lit8 v10, v2, 0x2

    if-eqz v10, :cond_1

    move v5, v8

    :cond_1
    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v10, :cond_4

    const-string v3, ""

    :goto_2
    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "eas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v8, p2, :cond_5

    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v8, v6, :cond_2

    if-ne v8, v5, :cond_6

    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-gtz v8, :cond_7

    move-object v8, v9

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method static buildBodyTextHtml(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v9

    :cond_0
    const/4 v0, 0x0

    iget v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_5

    move v7, v8

    :goto_1
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_1

    move v6, v8

    :cond_1
    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v10, :cond_6

    const-string v4, ""

    :goto_2
    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "eas"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eq v8, v7, :cond_2

    if-ne v8, v6, :cond_3

    :cond_2
    const-string v10, "<"

    const-string v11, "&lt;"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, ">"

    const-string v11, "&gt;"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "\n"

    const-string v11, "<br>"

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-ne v8, p2, :cond_7

    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    :goto_3
    invoke-static {v10, v8, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    :cond_4
    move-object v9, v0

    goto :goto_0

    :cond_5
    move v7, v6

    goto :goto_1

    :cond_6
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object v8, v9

    goto :goto_3
.end method

.method static buildBodyTextHtmlSnc(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;-><init>()V

    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_1
    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    move v0, v2

    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    if-eqz v0, :cond_4

    iget-object v3, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    :goto_2
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v6, v7, 0x1

    if-eqz v6, :cond_5

    move v6, v2

    :goto_3
    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    :goto_4
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    move-object v5, v1

    :goto_5
    if-eqz v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    if-nez v6, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iput-object v1, v4, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->bodyString:Ljava/lang/String;

    iput-boolean v0, v4, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->isHtml:Z

    move-object v0, v4

    goto :goto_0

    :cond_4
    iget-object v3, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move v6, v1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    move-object v5, v1

    goto :goto_5

    :cond_8
    move-object v1, v3

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method private static convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;
    .locals 5

    array-length v3, p0

    new-array v2, v3, [Ljavax/mail/Address;

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    :try_start_0
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    aget-object v4, p0, v1

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_1

    :cond_0
    return-object v2
.end method

.method private static getEmailPriority(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "normal"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "high"

    goto :goto_0

    :pswitch_1
    const-string v0, "normal"

    goto :goto_0

    :pswitch_2
    const-string v0, "low"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getEncryptionAlgorithm(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_3DES:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_DES:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC2128:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC264:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/emailcommon/smime/SMIMEHelper;->ENCRYPTION_ALGORITHM_RC240:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getIntergratedHTML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v9, 0x0

    const-string v4, "html"

    const-string v1, "/html"

    const-string v3, "body"

    const-string v0, "/body"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_5

    move-object v9, p0

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "PTR"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "PCL"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CEL"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<body dir=\"rtl\">"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_1

    const-string v10, "<div dir=\"RTL\">"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "</body>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "</body>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_3

    const/4 v7, -0x1

    move-object v9, p1

    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<body"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "<body"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, ">"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-gtz v10, :cond_7

    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</body></html>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "<br>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, -0x1

    move-object v9, p1

    const/4 v10, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<body"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v10, v11, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "<body"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, ">"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</body></html>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method public static getIsExchangeAccount()Z
    .locals 1

    sget-boolean v0, Lcom/android/emailcommon/internet/Rfc822Output;->mIsExchangeAccount:Z

    return v0
.end method

.method public static setIsExchangeAccount(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/emailcommon/internet/Rfc822Output;->mIsExchangeAccount:Z

    return-void
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    :cond_0
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    if-eqz p2, :cond_1

    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_1
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method private static writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    const-string v1, "text/html; charset=utf-8"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

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

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x1

    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->hasToBeEncoded(Ljava/lang/String;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v5, :cond_5

    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "base64"

    invoke-static {p1, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    if-ne v5, p4, :cond_4

    const-string v2, "Content-Disposition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inline;\n filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-ne v5, p4, :cond_1

    const-string v1, "Content-ID"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :try_start_0
    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v1, :cond_7

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v3, 0x14

    invoke-direct {v1, p2, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v2, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v2, "Content-Disposition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachment;\n filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";\n name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Transfer-Encoding"

    const-string v2, "base64"

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    if-ne v5, p4, :cond_6

    const-string v1, "Content-Disposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inline;\n filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "Content-Disposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachment;\n filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_3
    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    const-string v1, "Rfc8220Output"

    const-string v2, "writeOneAttachment() : attachment.mContentBytes, attachment.mContentUri are null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Rfc8220Output"

    const-string v2, "writeOneAttachment() : cannot attach this attachment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_9

    throw v0

    :cond_9
    if-eqz v0, :cond_3

    throw v0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    :cond_a
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    :try_start_4
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid attachment."

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_c
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method private static writeRfc822Header(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Disposition"

    const-string v1, "inline"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "message/rfc822"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "Content-Description"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Type"

    const-string v1, "text/plain; charset=utf-8"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public static writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    iget v3, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    iget-boolean v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v4, :cond_2

    iget-boolean v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v4, :cond_1b

    :cond_2
    const-string v4, "RFC822Output"

    const-string v5, "message.mEncrypted || message.mSigned"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-direct {v13}, Lcom/android/emailcommon/smime/SMIMEHelper;-><init>()V

    new-instance v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    invoke-direct {v12}, Lcom/android/emailcommon/smime/SMIMEHelper$Message;-><init>()V

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDate:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSubject:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mMessageID:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v4

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v4

    iput-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    iput-boolean v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mRead:Z

    iput-boolean v3, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mDelivery:Z

    if-eqz p5, :cond_3

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v2

    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    :cond_3
    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->convertAddresses([Lcom/android/emailcommon/mail/Address;)[Ljavax/mail/Address;

    move-result-object v2

    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mReplyTo:[Ljavax/mail/Address;

    iget v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEmailPriority(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mImportance:Ljava/lang/String;

    iget-wide v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyTextHtml(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    iput-object v3, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    :goto_3
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_a

    :cond_4
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v3, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    invoke-direct {v4}, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;-><init>()V

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mUri:Landroid/net/Uri;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    :cond_5
    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    iput v2, v4, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    iget-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    iput-boolean v3, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mIsHtml:Z

    iput-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    :try_start_0
    new-instance v3, Lcom/android/emailcommon/smime/CertificateMgr;

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mDeviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v2, v0}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v4, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    const-string v2, "RFC822Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alias= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v4, :cond_b

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/smime/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v9

    move-object v8, v2

    :cond_b
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/mail/Address;

    const/4 v3, 0x0

    iget-object v4, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mFrom:Ljavax/mail/Address;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v3, v3, [[Ljavax/mail/Address;

    const/4 v4, 0x0

    iget-object v5, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mTo:[Ljavax/mail/Address;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mCC:[Ljavax/mail/Address;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBCC:[Ljavax/mail/Address;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->joinAddresses([[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v4, v2

    :goto_5
    array-length v2, v5

    if-ge v4, v2, :cond_d

    aget-object v2, v5, v4

    check-cast v2, Ljavax/mail/internet/InternetAddress;

    if-eqz v3, :cond_c

    const-string v3, "email"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " LIKE \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_5

    :cond_c
    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "email"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " LIKE \'"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\' "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_6

    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "certificate"

    aput-object v3, v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$CertificateCacheColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_10

    :cond_e
    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_e

    invoke-static {v3}, Lcom/android/emailcommon/smime/CertificateUtil;->convertToX509(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v2

    const-class v3, Lcom/android/emailcommon/internet/Rfc822Output;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_f
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_10
    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v7, v2, v3

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_14

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    sget-object v3, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v3, v3, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    aget-object v7, v2, v3

    :cond_11
    :goto_8
    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_15

    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPolicySet.mRequireSignedSMIMEAlgorithm= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v4, v4, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signingAlgorithm= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privateKey.getAlgorithm()= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget-boolean v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    :cond_12
    :goto_a
    sget-object v2, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_18

    const-string v2, "RFC822Output"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPolicySet.mRequireEncryptionSMIMEAlgorithm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iget v4, v4, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-boolean v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v2, :cond_19

    iget-boolean v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/security/cert/X509Certificate;

    move-object v2, v13

    move-object/from16 v3, p0

    move-object v4, v12

    move-object/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Lcom/android/emailcommon/smime/SMIMEHelper;->encryptMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;ZLjava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/io/OutputStream;)V

    :goto_c
    iget-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v12, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    const-string v4, "Rfc8220Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context.getCacheDir().getName(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "Rfc8220Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp file deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_14
    if-eqz v10, :cond_11

    iget v2, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_11

    sget-object v2, Lcom/android/emailcommon/smime/SMIMEHelper;->SIGNING_ALGORITHMS:[Ljava/lang/String;

    iget v3, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    aget-object v7, v2, v3

    goto/16 :goto_8

    :cond_15
    const-string v2, "RFC822Output"

    const-string v3, "mPolicySet is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_16
    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a

    :cond_17
    if-eqz v10, :cond_12

    iget v2, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_12

    iget v2, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->getEncryptionAlgorithm(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a

    :cond_18
    const-string v2, "RFC822Output"

    const-string v3, "mPolicySet is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_19
    move-object v10, v13

    move-object/from16 v11, p0

    move-object v13, v8

    move-object v14, v9

    move-object v15, v7

    move-object/from16 v16, p3

    invoke-virtual/range {v10 .. v16}, Lcom/android/emailcommon/smime/SMIMEHelper;->signMessage(Landroid/content/Context;Lcom/android/emailcommon/smime/SMIMEHelper$Message;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto/16 :goto_c

    :cond_1a
    const-string v4, "Rfc8220Output"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to delete temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    :cond_1b
    const-string v4, "RFC822Output"

    const-string v5, "writeTo() normal"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x400

    move-object/from16 v0, p3

    invoke-direct {v12, v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v13, Ljava/io/OutputStreamWriter;

    invoke-direct {v13, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v6, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-static {v13, v5, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Subject"

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v13, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Message-ID"

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v13, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->getEmailPriority(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Importance"

    invoke-static {v13, v5, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "From"

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v13, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "To"

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v13, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Cc"

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v13, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1c

    const-string v4, "Bcc"

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v13, v4, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-nez v2, :cond_1d

    if-eqz v3, :cond_22

    :cond_1d
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v6, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const-string v7, "@m.google.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const-string v7, "@google.com"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_1e
    const/4 v4, 0x1

    iget-object v6, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1f

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@gmail.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    if-eqz v5, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_e
    if-eqz v2, :cond_20

    const-string v2, "Disposition-Notification-To"

    invoke-static {v13, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz v3, :cond_21

    const-string v2, "Return-Receipt-To"

    invoke-static {v13, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const-string v2, "Return-Path"

    invoke-static {v13, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string v2, "Reply-To"

    iget-object v3, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v13, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MIME-Version"

    const-string v3, "1.0"

    invoke-static {v13, v2, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyTextHtml(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Z)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_2
    iget-boolean v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--_com.android.email_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    const/4 v7, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v0, v15, :cond_23

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const/16 v7, 0xa

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_23
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2a

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2a

    const-string v2, "alternative"

    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; boundary=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v4, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-nez v9, :cond_24

    if-eqz v8, :cond_26

    :cond_24
    const/4 v2, 0x0

    invoke-static {v13, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "Content-Disposition"

    const-string v4, "inline"

    invoke-static {v13, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz v8, :cond_29

    invoke-static {v13, v12, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_26
    :goto_f
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v14, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    const/4 v4, 0x0

    invoke-static {v13, v3, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v12, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x1

    invoke-static {v13, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_27
    :goto_10
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    invoke-virtual {v13}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    :cond_28
    iget-object v4, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto/16 :goto_e

    :cond_29
    :try_start_3
    invoke-static {v13, v12, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2a
    const/4 v7, 0x1

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v7, v10, :cond_38

    const-string v6, "alternative"

    move v7, v2

    move-object v10, v6

    :goto_11
    const-string v2, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "multipart/"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "; boundary=\""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v2, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v13, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const/4 v2, 0x1

    const-string v6, "mixed"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v2, v6, :cond_43

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--_com.android.email_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "multipart/alternative; boundary=\""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\""

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v5, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "\r\n"

    invoke-virtual {v13, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v6, v2

    :goto_12
    if-nez v9, :cond_42

    const-string v2, ""

    :goto_13
    if-eqz v6, :cond_2b

    const/4 v5, 0x0

    invoke-static {v13, v6, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    :cond_2b
    iget-wide v15, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const-string v5, "Content-Disposition"

    const-string v9, "inline"

    invoke-static {v13, v5, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-static {v13, v12, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v5, "\r\n"

    invoke-virtual {v13, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-nez v8, :cond_41

    if-eqz v2, :cond_3c

    const-string v5, "<"

    const-string v8, "&lt;"

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ">"

    const-string v8, "&gt;"

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\n"

    const-string v8, "<br>"

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><head></head><body><div style=\"word-break;keep-all;\">"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</div></body></html>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :goto_14
    if-eqz v6, :cond_3d

    const/4 v2, 0x0

    invoke-static {v13, v6, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    :goto_15
    if-lez v7, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--_com.android.email_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multipart/relative; boundary=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v4, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v13, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    move-object v4, v2

    :cond_2d
    if-eqz v4, :cond_2e

    const/4 v2, 0x0

    invoke-static {v13, v4, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    :cond_2e
    iget-wide v7, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "Content-Disposition"

    const-string v7, "inline"

    invoke-static {v13, v2, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-static {v13, v12, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-eqz v4, :cond_33

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_32

    :cond_30
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v14, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    if-eqz v2, :cond_31

    iget-object v7, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v7, :cond_31

    if-eqz v5, :cond_31

    const/4 v7, 0x1

    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-ne v7, v8, :cond_31

    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v7

    if-eqz v7, :cond_3e

    if-nez p4, :cond_3e

    iget v7, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_3e

    :cond_31
    :goto_16
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_30

    :cond_32
    const/4 v2, 0x1

    invoke-static {v13, v4, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_33
    if-eqz v6, :cond_3f

    const/4 v2, 0x1

    invoke-static {v13, v6, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :goto_17
    const/4 v2, 0x1

    const-string v4, "mixed"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v2, v4, :cond_27

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_37

    :cond_34
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v14, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    if-eqz v2, :cond_36

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_35

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v4, :cond_36

    if-eqz v5, :cond_36

    const/4 v4, 0x1

    iget-object v6, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eq v4, v6, :cond_36

    :cond_35
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getIsExchangeAccount()Z

    move-result v4

    if-eqz v4, :cond_40

    if-nez p4, :cond_40

    iget v4, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_40

    :cond_36
    :goto_18
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_34

    :cond_37
    const/4 v2, 0x1

    invoke-static {v13, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_38
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_39

    move v7, v2

    :goto_19
    const-class v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v14, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v10, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v10, :cond_3a

    if-eqz v8, :cond_3a

    const/4 v10, 0x1

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v10, v2, :cond_3a

    add-int/lit8 v2, v7, 0x1

    move/from16 v17, v6

    move v6, v2

    move/from16 v2, v17

    :goto_1a
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_44

    move/from16 v17, v2

    move v2, v6

    move/from16 v6, v17

    :cond_39
    if-lez v6, :cond_3b

    const-string v6, "mixed"

    move v7, v2

    move-object v10, v6

    goto/16 :goto_11

    :cond_3a
    add-int/lit8 v2, v6, 0x1

    move v6, v7

    goto :goto_1a

    :cond_3b
    const-string v6, "alternative"

    move v7, v2

    move-object v10, v6

    goto/16 :goto_11

    :cond_3c
    const-string v2, "<html><head></head><body><div style=\"word-break;keep-all;\"></div></body></html>"

    move-object v5, v2

    goto/16 :goto_14

    :cond_3d
    const/4 v2, 0x0

    invoke-static {v13, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_15

    :cond_3e
    const/4 v7, 0x0

    invoke-static {v13, v4, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v12, v2, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_3f
    const/4 v2, 0x1

    invoke-static {v13, v3, v2}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_17

    :cond_40
    const/4 v4, 0x0

    invoke-static {v13, v3, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v12, v2, v4}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    const-string v2, "\r\n"

    invoke-virtual {v13, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_18

    :cond_41
    move-object v5, v8

    goto/16 :goto_14

    :cond_42
    move-object v2, v9

    goto/16 :goto_13

    :cond_43
    move-object v6, v5

    goto/16 :goto_12

    :cond_44
    move v7, v6

    move v6, v2

    goto :goto_19
.end method

.method public static writeToSnC(Landroid/content/Context;JLjava/io/OutputStream;JLjava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/io/OutputStream;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to forward non-existent message id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/BufferedOutputStream;

    const/16 v0, 0x400

    invoke-direct {v8, p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    const-string v0, "BDAT %d\r\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    :cond_1
    sget-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Date"

    invoke-static {v9, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Subject"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Message-ID"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Priority"

    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-static {v9, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "From"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "To"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cc"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Reply-To"

    iget-object v1, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type: multipart/mixed; boundary=\"%s\"\r\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyTextHtmlSnc(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;

    move-result-object v10

    iget-object v11, v10, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->bodyString:Ljava/lang/String;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const-string v0, "mixed"

    if-nez v1, :cond_7

    if-eqz v11, :cond_6

    const/4 v0, 0x0

    invoke-static {v9, v7, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const-string v0, "Content-Disposition"

    const-string v1, "inline"

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_5

    iget-boolean v0, v10, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->isHtml:Z

    if-eqz v0, :cond_5

    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    invoke-static {v9, v7, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeRfc822Header(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    const-string v0, "Rfc8220Output"

    const-string v1, "Done with the writing.. Now Time to Flush....."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    if-nez v0, :cond_3

    const-string v0, "5"

    goto/16 :goto_0

    :cond_3
    const-string v0, "3"

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6
    :try_start_2
    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x1

    if-ne v3, v1, :cond_8

    const/16 v1, 0xa

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const-string v0, "alternative"

    :cond_8
    const-string v1, "MIME-Version"

    const-string v3, "1.0"

    invoke-static {v9, v1, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multipart/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; boundary=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    if-eqz v11, :cond_9

    const/4 v0, 0x0

    invoke-static {v9, v7, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const-string v0, "Content-Disposition"

    const-string v1, "inline"

    invoke-static {v9, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_b

    iget-boolean v0, v10, Lcom/android/emailcommon/internet/Rfc822Output$BodyTextHtml;->isHtml:Z

    if-eqz v0, :cond_b

    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHTMLWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_9
    :goto_3
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    const-string v3, "content://com.android.email"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_2

    :cond_b
    invoke-static {v9, v8, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    invoke-static {v9, v7, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-static {p0, v9, v8, v0, v1}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)V

    const-string v0, "\r\n"

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method
