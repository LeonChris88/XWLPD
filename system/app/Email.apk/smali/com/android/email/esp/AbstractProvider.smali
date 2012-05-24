.class public abstract Lcom/android/email/esp/AbstractProvider;
.super Ljava/lang/Object;
.source "AbstractProvider.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mProviderHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/esp/AbstractProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAccountProviderName:Ljava/lang/String;

.field protected mDefaultAccountName:Ljava/lang/String;

.field protected mDomainList:[Ljava/lang/String;

.field protected mIsSnC:Z

.field protected mNotificationIcon:I

.field protected mProviderCheckImage:I

.field protected mProviderId:I

.field protected mProviderImage:I

.field protected mProviderName:Ljava/lang/String;

.field protected mProviderStringResId:I

.field protected mServiceList:[Ljava/lang/String;

.field protected mTabIcon:I

.field protected mTitleButtonIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AbstractProvider"

    sput-object v0, Lcom/android/email/esp/AbstractProvider;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/esp/AbstractProvider;->mProviderHash:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderStringResId:I

    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mNotificationIcon:I

    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mTitleButtonIcon:I

    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    iput v1, p0, Lcom/android/email/esp/AbstractProvider;->mTabIcon:I

    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mDomainList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/email/esp/AbstractProvider;->mServiceList:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/esp/AbstractProvider;->mIsSnC:Z

    return-void
.end method

.method public static declared-synchronized getInstance(I)Lcom/android/email/esp/AbstractProvider;
    .locals 6

    const-class v3, Lcom/android/email/esp/AbstractProvider;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/email/esp/AbstractProvider;->mProviderHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/esp/AbstractProvider;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/email/esp/AbstractProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found a vallid provider for the type - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    :goto_0
    monitor-exit v3

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/email/esp/ServiceProvider;->getProviderFromType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/android/email/esp/AbstractProvider;->TAG:Ljava/lang/String;

    const-string v4, "FATAL: INVALID Provider type"

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/email/esp/ProviderDummy;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderDummy;-><init>()V

    const/16 p0, 0xff

    :goto_1
    sget-object v2, Lcom/android/email/esp/AbstractProvider;->mProviderHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/android/email/esp/ProviderAim;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderAim;-><init>()V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/android/email/esp/ProviderAol;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderAol;-><init>()V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/android/email/esp/ProviderGmail;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderGmail;-><init>()V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/android/email/esp/ProviderYahoo;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderYahoo;-><init>()V

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/android/email/esp/ProviderHotmail;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderHotmail;-><init>()V

    goto :goto_1

    :pswitch_5
    new-instance v0, Lcom/android/email/esp/ProviderVerizon;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderVerizon;-><init>()V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/android/email/esp/ProviderExchange;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderExchange;-><init>()V

    goto :goto_1

    :pswitch_7
    new-instance v0, Lcom/android/email/esp/ProviderOthers;

    invoke-direct {v0}, Lcom/android/email/esp/ProviderOthers;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAccountProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mAccountProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mDefaultAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCheckImage()I
    .locals 1

    iget v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderCheckImage:I

    return v0
.end method

.method public getProviderId()I
    .locals 1

    iget v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderId:I

    return v0
.end method

.method public getProviderImage()I
    .locals 1

    iget v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderImage:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/esp/AbstractProvider;->mProviderName:Ljava/lang/String;

    return-object v0
.end method
