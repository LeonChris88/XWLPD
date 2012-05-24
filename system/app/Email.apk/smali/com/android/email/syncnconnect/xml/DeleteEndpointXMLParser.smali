.class public Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DeleteEndpointXMLParser.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

.field private mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mVal:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mIsErrorResponse:Z

    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

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

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mVal:Ljava/lang/String;

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

    const-string v1, "sncUserEndpoint"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

    invoke-virtual {v1}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->getUserEndpointList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

    invoke-virtual {v1, v0}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->setUserEndpointList(Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "code"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_code"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v1, "message"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v2, "error_text"

    iget-object v3, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mIsErrorResponse:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mIsErrorResponse:Z

    iput-object v3, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mVal:Ljava/lang/String;

    const-string v2, "sncService"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/email/syncnconnect/utils/SncService;

    invoke-direct {v0}, Lcom/android/email/syncnconnect/utils/SncService;-><init>()V

    const-string v2, "serviceId"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceId(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setServiceName(Ljava/lang/String;)V

    const-string v2, "isNotified"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/utils/SncService;->setIsNotified(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2, v1}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setSncServiceList(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "sncUserEndpoint"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-direct {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;-><init>()V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "userName"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "userEndpointId"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setUserEndpointId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "provider"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setProvider(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "endpointId"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setEndpointId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "displayOrder"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDisplayOrder(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    const-string v3, "defaultFlag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->setDefaultFlag(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "error"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;->mIsErrorResponse:Z

    goto :goto_0
.end method