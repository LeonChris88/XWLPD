.class public Lcom/android/email/esp/ProviderDummy;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderDummy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ProviderDummy"

    sput-object v0, Lcom/android/email/esp/ProviderDummy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    const v0, 0x7f080560

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    const v0, 0x7f0202a4

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    const v0, 0x7f020146

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    const v0, 0x7f0202d1

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    const v0, 0x7f0202d2

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    const v0, 0x7f0202de

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    return-void
.end method
