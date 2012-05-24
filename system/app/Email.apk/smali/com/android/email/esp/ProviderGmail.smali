.class public Lcom/android/email/esp/ProviderGmail;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderGmail.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mGmailDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ProviderGmail"

    sput-object v0, Lcom/android/email/esp/ProviderGmail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "googlemail.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/esp/ProviderGmail;->mGmailDomains:[Ljava/lang/String;

    const-string v0, "Gmail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    const-string v0, "Gmail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    const-string v0, "@gmail.com"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    const v0, 0x7f08055d

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    const v0, 0x7f0202a2

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    const v0, 0x7f020144

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    const v0, 0x7f0202cf

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    const v0, 0x7f0202d0

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    const v0, 0x7f0202dc

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    iget-object v0, p0, Lcom/android/email/esp/ProviderGmail;->mGmailDomains:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    return-void
.end method
