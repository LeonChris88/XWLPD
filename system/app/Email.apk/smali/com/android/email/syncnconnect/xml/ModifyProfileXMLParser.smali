.class public Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ModifyProfileXMLParser.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mIsErrorResponse:Z

.field private mResponseVO:Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;

.field private mVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mVal:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mIsErrorResponse:Z

    iput-object p1, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;

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

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mVal:Ljava/lang/String;

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v1, "error_code"

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "message"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    const-string v1, "error_text"

    iget-object v2, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mVal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mIsErrorResponse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;

    iget-object v1, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->setErrorBundle(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mIsErrorResponse:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "sncUpdateProfileResponse"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "success"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mResponseVO:Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;

    invoke-virtual {v0, v2}, Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;->setSuccess(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mErrorBundle:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;->mIsErrorResponse:Z

    goto :goto_0
.end method
