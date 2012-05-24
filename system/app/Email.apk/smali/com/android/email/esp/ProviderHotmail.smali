.class public Lcom/android/email/esp/ProviderHotmail;
.super Lcom/android/email/esp/AbstractProvider;
.source "ProviderHotmail.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHotmailDomains:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ProviderHotmail"

    sput-object v0, Lcom/android/email/esp/ProviderHotmail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/android/email/esp/AbstractProvider;-><init>()V

    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hotmail.co.ar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hotmail.co.br"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hotmail.co.jp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hotmail.co.uk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hotmail.com"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hotmail.de"

    aput-object v2, v0, v1

    const-string v1, "hotmail.es"

    aput-object v1, v0, v3

    const/4 v1, 0x7

    const-string v2, "hotmail.fr"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "hotmail.it"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hotmail.nl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "live.be"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "live.ca"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "live.cn"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "live.co.in"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "live.co.uk"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "live.co.za"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "live.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "live.com.au"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "live.com.mx"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "live.com.pe"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "live.com.ph"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "live.com.pk"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "live.com.pt"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "live.com.ve"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "live.de"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "live.dk"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "live.fr"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "live.ie"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "live.it"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "live.jp"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "live.nl"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "live.ph"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "live.se"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "livemail.tw"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "msn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "windowslive.com"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "windowslive.es"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "tw.live.com"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/esp/ProviderHotmail;->mHotmailDomains:[Ljava/lang/String;

    const-string v0, "Hotmail"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    const-string v0, "Windows\nLive"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    iput v3, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    const-string v0, "@hotmail.com"

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    const v0, 0x7f08055e

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    const v0, 0x7f0202a3

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    const v0, 0x7f0202d5

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    const v0, 0x7f0202d6

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    const v0, 0x7f0202dd

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    iget-object v0, p0, Lcom/android/email/esp/ProviderHotmail;->mHotmailDomains:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    return-void
.end method
