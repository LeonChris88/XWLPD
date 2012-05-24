.class public Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AutoDiscoverSetupExchangeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mCacheLoginCredential:Ljava/lang/String;

.field public mDomainText:Landroid/widget/EditText;

.field public mEmailText:Landroid/widget/EditText;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field mLoaded:Z

.field mManualButton:Landroid/view/MenuItem;

.field mNextButton:Landroid/view/MenuItem;

.field public mPasswordText:Landroid/widget/EditText;

.field private mStarted:Z

.field private mTrustedCertificates:Landroid/widget/CheckBox;

.field private mTrustedCertificatesString:Landroid/widget/TextView;

.field public mUserNameText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->enableDisableNextButton()V

    return-void
.end method

.method private enableDisableNextButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mNextButton:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mNextButton:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSmartValues()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v4, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    array-length v3, v2

    if-le v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->TAG:Ljava/lang/String;

    const-string v4, "Failed to restore Account store URI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateFields()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->enableNextButton(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected getUri()Ljava/net/URI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v1, "\\"

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    iput-object v8, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+trustallcerts"

    const/4 v4, 0x0

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 6

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v3, "eas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "AutoDiscoverSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    const-string v0, "AutoDiscoverSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0f000d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x200

    const v1, 0x7f040049

    invoke-virtual {p1, v1, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->setHasOptionsMenu(Z)V

    new-instance v5, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v5}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "AutoDiscoverSetupExchange:onCreate"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v5, 0x7f100024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CEL"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    const v5, 0x7f100023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificatesString:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificatesString:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment$1;-><init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;)V

    const v5, 0x7f1000e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    const v5, 0x7f10001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    const v5, 0x7f1000e7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    const v5, 0x7f1000e8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getImeOptions()I

    move-result v6

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->setSmartValues()V

    return-object v4
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    return-void
.end method

.method public onNext()V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getUri()Ljava/net/URI;

    move-result-object v7

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V

    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v8

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v8}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 19

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "Email"

    const-string v6, "AutoDiscoverSetupExchangeFragment account is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->onBackPressed()V

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v6

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mEmailText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mPasswordText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mDomainText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mUserNameText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v15

    const/16 v16, 0x0

    if-eqz v15, :cond_2

    :try_start_0
    const-string v2, "eas+ssl+trustallcerts"

    :goto_2
    const/16 v5, 0x40

    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "eas+ssl+"

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v11, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    new-instance v1, Ljava/net/URI;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    invoke-static {v11}, Lcom/android/email/activity/setup/SetupData;->setDomain(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5, v12}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;

    move-object/from16 v0, v16

    invoke-virtual {v6, v5, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f1000e3

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v14

    const-string v5, "AccountCheckSettingsFragment"

    invoke-virtual {v14, v10, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    const-string v5, "back"

    invoke-virtual {v14, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v14}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    :catch_0
    move-exception v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080545

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v5, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100038
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f100038

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mManualButton:Landroid/view/MenuItem;

    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mNextButton:Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AutoDiscoverSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AutoDiscoverSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mStarted:Z

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mStarted:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->validateFields()Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mTrustedCertificates:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->hostChanged(J)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->mStarted:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    :cond_0
    return-void
.end method
