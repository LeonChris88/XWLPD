.class Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;
.super Ljava/lang/Object;
.source "AccountSetupSncAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderInfo"
.end annotation


# instance fields
.field mProviderId:I

.field mProviderName:Ljava/lang/String;

.field mResId:I

.field mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mResId:I

    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mProviderName:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mProviderId:I

    iput p4, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mType:I

    return-void
.end method


# virtual methods
.method public getProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts$ProviderInfo;->mType:I

    return v0
.end method
