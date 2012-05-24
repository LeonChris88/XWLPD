.class public Lcom/android/email/activity/setup/SetupData;
.super Ljava/lang/Object;
.source "SetupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/activity/setup/SetupData;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLOW_MODES:[Ljava/lang/String;

.field private static INSTANCE:Lcom/android/email/activity/setup/SetupData;

.field public static mIsAutoSetupFinished:Z


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private mAllowAutodiscover:Z

.field private mAutoSetup:Z

.field private mCheckAutodiscoverCount:I

.field private mCheckSettingsMode:I

.field private mDefault:Z

.field private mDomain:Ljava/lang/String;

.field private mFlowMode:I

.field private mMailProvider:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPolicySet:Lcom/android/emailcommon/service/PolicySet;

.field private mSncEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mSncFlowMode:Z

.field private mSncProvider:Ljava/lang/String;

.field private mSncService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation
.end field

.field private mUserEndpointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "normal"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "eas"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pop/imap"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "edit"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "force"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rtc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rtl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->FLOW_MODES:[Ljava/lang/String;

    sput-boolean v3, Lcom/android/email/activity/setup/SetupData;->mIsAutoSetupFinished:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    new-instance v0, Lcom/android/email/activity/setup/SetupData$1;

    invoke-direct {v0}, Lcom/android/email/activity/setup/SetupData$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    iput-object v2, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckAutodiscoverCount:I

    iput-object v2, p0, Lcom/android/email/activity/setup/SetupData;->mSncEndpointList:Ljava/util/List;

    iput-object v2, p0, Lcom/android/email/activity/setup/SetupData;->mUserEndpointList:Ljava/util/List;

    iput-object v2, p0, Lcom/android/email/activity/setup/SetupData;->mSncService:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mSncFlowMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    iput v3, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    iput v3, p0, Lcom/android/email/activity/setup/SetupData;->mCheckAutodiscoverCount:I

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mSncEndpointList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUserEndpointList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mSncService:Ljava/util/List;

    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupData;->mSncFlowMode:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/service/PolicySet;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckAutodiscoverCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mDomain:Ljava/lang/String;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public static getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method public static getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    return-object v0
.end method

.method public static getAutoDiscoverCount()I
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget v0, v0, Lcom/android/email/activity/setup/SetupData;->mCheckAutodiscoverCount:I

    return v0
.end method

.method public static getDomain()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getFlowMode()I
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget v0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/email/activity/setup/SetupData;
    .locals 2

    const-class v1, Lcom/android/email/activity/setup/SetupData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/activity/setup/SetupData;

    invoke-direct {v0}, Lcom/android/email/activity/setup/SetupData;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    :cond_0
    sget-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMailProvider()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mMailProvider:Ljava/lang/String;

    return-object v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public static getPolicySet()Lcom/android/emailcommon/service/PolicySet;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    return-object v0
.end method

.method public static getProviderServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mSncService:Ljava/util/List;

    return-object v0
.end method

.method public static getSncEndpointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mSncEndpointList:Ljava/util/List;

    return-object v0
.end method

.method public static getSncProviderString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mSncProvider:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public static init(I)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupData;->commonInit()V

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    return-void
.end method

.method public static init(ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupData;->commonInit()V

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    iput-object p1, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-void
.end method

.method public static isAllowAutodiscover()Z
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    return v0
.end method

.method public static isAutoSetup()Z
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    return v0
.end method

.method public static isDefault()Z
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    return v0
.end method

.method public static isSncFlow()Z
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mSncFlowMode:Z

    return v0
.end method

.method public static declared-synchronized restore(Landroid/os/Bundle;)Lcom/android/email/activity/setup/SetupData;
    .locals 2

    const-class v1, Lcom/android/email/activity/setup/SetupData;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "com.android.email.setupdata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.setupdata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SetupData;

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    sget-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static save(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.android.email.setupdata"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-void
.end method

.method public static setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    return-void
.end method

.method public static setAccountType(I)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput p0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    :cond_0
    return-void
.end method

.method public static setAllowAutodiscover(Z)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-boolean p0, v0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    return-void
.end method

.method public static setAutoDiscoverCount(I)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mCheckAutodiscoverCount:I

    return-void
.end method

.method public static setCheckSettingsMode(I)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    return-void
.end method

.method public static setDefault(Z)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-boolean p0, v0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    return-void
.end method

.method public static setDomain(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public static setFlowMode(I)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    return-void
.end method

.method public static setMailProvider(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mMailProvider:Ljava/lang/String;

    return-void
.end method

.method public static setPassword(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public static setPolicySet(Lcom/android/emailcommon/service/PolicySet;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    return-void
.end method

.method public static setProviderServiceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mSncService:Ljava/util/List;

    return-void
.end method

.method public static setSncEndpointList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mSncEndpointList:Ljava/util/List;

    return-void
.end method

.method public static setSncFlowMode(Z)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-boolean p0, v0, Lcom/android/email/activity/setup/SetupData;->mSncFlowMode:Z

    return-void
.end method

.method public static setSncProviderString(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mSncProvider:Ljava/lang/String;

    return-void
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method commonInit()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    iput v2, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    iput v2, p0, Lcom/android/email/activity/setup/SetupData;->mCheckAutodiscoverCount:I

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mCheckAutodiscoverCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
