.class public Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;
.super Landroid/app/ListActivity;
.source "AccountSetupBasicsChoiceProviderForKOR.java"


# static fields
.field public static final mProviderDomains:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProvidersForLGT:[Ljava/lang/String;

.field private static final mProvidersForSKT:[Ljava/lang/String;


# instance fields
.field private final ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

.field private mReportAccountAuthenticatorError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProviderDomains:Ljava/util/HashMap;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NATE"

    aput-object v1, v0, v3

    const-string v1, "Naver"

    aput-object v1, v0, v4

    const-string v1, "Daum"

    aput-object v1, v0, v5

    const-string v1, "Gmail"

    aput-object v1, v0, v6

    const-string v1, "Yahoo"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Hotmail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForSKT:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hotmail"

    aput-object v1, v0, v3

    const-string v1, "Naver"

    aput-object v1, v0, v4

    const-string v1, "Daum"

    aput-object v1, v0, v5

    const-string v1, "Gmail"

    aput-object v1, v0, v6

    const-string v1, "Yahoo"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForLGT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const-string v0, "intent.seven.action.ADD_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->ACTION_CREATE_ACCOUNT_ACCOUNTNSETTING:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x6

    if-ne v2, v4, :cond_3

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mProvidersForSKT:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "accountAuthenticatorResponse"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->mReportAccountAuthenticatorError:Z

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    long-to-int v1, p4

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ProviderChoiceAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ProviderChoiceData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "accountAuthenticatorResponse"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x2400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/email/activity/MessageCompose;->GetComposerIntent()Landroid/content/Intent;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;Landroid/content/Intent;J)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasicsChoiceProviderForKOR;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_0
.end method
