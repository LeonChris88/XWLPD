.class Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;
.super Ljava/lang/Object;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/SMIMEHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoresContainer"
.end annotation


# instance fields
.field public mCertStore:Ljava/security/cert/CertStore;

.field public mSignerInformationStore:Lmyorg/bouncycastle/cms/SignerInformationStore;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertStore;Lmyorg/bouncycastle/cms/SignerInformationStore;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mCertStore:Ljava/security/cert/CertStore;

    iput-object p2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$StoresContainer;->mSignerInformationStore:Lmyorg/bouncycastle/cms/SignerInformationStore;

    return-void
.end method
