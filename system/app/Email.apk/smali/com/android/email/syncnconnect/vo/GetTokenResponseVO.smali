.class public Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;
.super Ljava/lang/Object;
.source "GetTokenResponseVO.java"


# instance fields
.field private mErrorBundle:Landroid/os/Bundle;

.field private mExpiryDate:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mExpiryDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getErrorBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getExpiryDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mExpiryDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mErrorBundle:Landroid/os/Bundle;

    return-void
.end method

.method public final setExpiryDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mExpiryDate:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;->mToken:Ljava/lang/String;

    return-void
.end method
