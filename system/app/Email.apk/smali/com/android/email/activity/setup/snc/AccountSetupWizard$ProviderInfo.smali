.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderInfo"
.end annotation


# instance fields
.field mProvider:Ljava/lang/String;

.field mProviderId:I

.field mProviderName:Ljava/lang/String;

.field mResId:I

.field mServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mResId:I

    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderName:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncService;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mResId:I

    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderName:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderId:I

    iput-object p4, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mServiceList:Ljava/util/List;

    iput-object p5, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProvider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderId:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ProviderInfo;->mProviderName:Ljava/lang/String;

    return-object v0
.end method
