.class public Lcom/android/email/syncnconnect/http/HttpResponseVO;
.super Ljava/lang/Object;
.source "HttpResponseVO.java"


# instance fields
.field private mResponseBody:[B

.field private mResponseCode:I

.field private mResponseMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseCode:I

    iput-object v1, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseMessage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseBody:[B

    return-void
.end method


# virtual methods
.method public final getResponseBody()[B
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseBody:[B

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final setResponseBody([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseBody:[B

    return-void
.end method

.method public final setResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseCode:I

    return-void
.end method

.method public setResponseMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/http/HttpResponseVO;->mResponseMessage:Ljava/lang/String;

    return-void
.end method
