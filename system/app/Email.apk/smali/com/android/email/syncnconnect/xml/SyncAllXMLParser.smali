.class public Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SyncAllXMLParser.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

.field private mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    iput-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    return-void
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

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v1, "sncServiceInfo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->getSncServiceInfoList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->setSncServiceInfoList(Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "jobId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setJobId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "operationId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setOperationId(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "providerId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setProviderId(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "providerSrvcDetailId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setProviderSrvcDetailsId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "reqUserEmail"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setReqUserEmail(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "returnCode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setReturnCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "serviceId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setServiceId(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "sourceProviderId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setSourceProviderId(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v1, "userEndpointId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;->setUserEndpointId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "code"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_code"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "message"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_text"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mIsErrorResponse:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sncServiceInfo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncServiceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;->mServiceInfo:Lcom/android/email/syncnconnect/utils/SncServiceInfo;

    goto :goto_0
.end method
