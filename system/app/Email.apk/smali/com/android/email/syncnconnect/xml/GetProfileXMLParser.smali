.class public Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GetProfileXMLParser.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;

.field private mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mIsErrorResponse:Z

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;

    return-void
.end method

.method private convertStringToBool(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "Y"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private convertTimeToInt(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    aget-object v2, v1, v5

    if-eqz v2, :cond_0

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int v0, v2, v3

    :cond_0
    return v0
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "sncProfile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->setSncProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "firstName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setFirstName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "lastName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setLastName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "exchangeABSyncFlag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->convertStringToBool(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeABSyncFlag(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "exchangeCalSyncFlag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->convertStringToBool(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeCalSyncFlag(Z)V

    goto :goto_0

    :cond_5
    const-string v0, "exchangeDaysToSync"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDaysToSync(I)V

    goto :goto_0

    :cond_6
    const-string v0, "exchangeDomain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDomain(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "exchangeEmail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeEmail(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v0, "exchangeFetchFreq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeFetchFreq(I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "exchangeMailSyncFlag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->convertStringToBool(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMailSyncFlag(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "exchangeNickName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "exchangeSecureFlag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->convertStringToBool(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeSecureFlag(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "exchangeServer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeServer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "exchangeUser"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeUser(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "exchangeVerifyCertFlag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->convertStringToBool(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeVerifyCertFlag(Z)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "exchangeMailSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMailSize(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    const-string v0, "exchangeMessageFormat"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeMessageFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string v0, "exchangeUpdateSchedule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeUpdateSchedule(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "exchangeDownloadPastEmail"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeDownloadPastEmail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v0, "exchangeIncludeFileAttachment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setExchangeIncludeFileAttachment(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    const-string v0, "code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v1, "error_code"

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_15
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v1, "error_text"

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mIsErrorResponse:Z

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mIsErrorResponse:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sncProfile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncProfile;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    goto :goto_0

    :cond_2
    const-string v0, "sncPushNotification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    const-string v1, "startDate"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncPushNotificationStartDate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    const-string v1, "endDate"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncPushNotificationEndDate(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "sncSyncNotification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    const-string v1, "startTime"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->convertTimeToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationStartTime(I)V

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->mSncProfile:Lcom/android/email/syncnconnect/utils/SncProfile;

    const-string v1, "endTime"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;->convertTimeToInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/utils/SncProfile;->setSncSyncNotificationEndTime(I)V

    goto :goto_0
.end method
