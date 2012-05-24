.class public Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsSecurityOptionsFragment.java"


# instance fields
.field private encryptAlgorithm:I

.field private isEncryptChecked:Ljava/lang/Boolean;

.field private isSignChecked:Ljava/lang/Boolean;

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountId:J

.field private mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeEncryptAllPolicyApplied:Z

.field private mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeEncryptionAlgorithmPolicyApplied:Z

.field private mSmimeOwnCertificateAlias:Ljava/lang/String;

.field private mSmimeSignAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeSignAlgorithmPolicyApplied:Z

.field private mSmimeSignAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeSignAllPolicyApplied:Z

.field private policiesList:Landroid/preference/PreferenceScreen;

.field private signAlgorithm:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->signAlgorithm:I

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->encryptAlgorithm:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    return-wide v0
.end method

.method private setCertificateSummary()V
    .locals 2

    const-string v1, "account_own_certificate"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0804cc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "inside on activity result*********"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "CERTIFICATE_ALIAS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v5, "SmimeSignAll"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->isSignChecked:Ljava/lang/Boolean;

    const-string v5, "SmimeSignAlgorithm"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->signAlgorithm:I

    const-string v5, "SmimeEncryptAll"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->isEncryptChecked:Ljava/lang/Boolean;

    const-string v5, "SmimeEncryptionAlgorithm"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->encryptAlgorithm:I

    :cond_0
    const v5, 0x7f06000f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "account_id"

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    cmp-long v5, v5, v11

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, p0, v8, v10}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, p0, v8, v10}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    :cond_2
    const-string v5, "account_own_certificate"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v5, "account_smime_encrypt_all"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    const-string v5, "account_smime_sign_all"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v2

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0804e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_3
    const-string v5, "account_smime_sign_algorithm"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    const-string v5, "account_smime_encryption_algorithm"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    const-string v5, "security_policy_list"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->policiesList:Landroid/preference/PreferenceScreen;

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget v6, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_2
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget v6, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_3
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->policiesList:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    const-string v6, "com.android.email.securitypreference.encrypt"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    if-eqz p1, :cond_7

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    const-string v6, "com.android.email.securitypreference.sign"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    :cond_9
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "SmimeOwnCertificateAlias"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    if-nez v2, :cond_0

    const-string v2, "SmimeEncryptAll"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    if-nez v2, :cond_1

    const-string v2, "SmimeSignAll"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithmPolicyApplied:Z

    if-nez v2, :cond_2

    const-string v2, "SmimeSignAlgorithm"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithmPolicyApplied:Z

    if-nez v2, :cond_3

    const-string v2, "SmimeEncryptionAlgorithm"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1002bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f1002bd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002be

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.android.email.securitypreference.sign"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.android.email.securitypreference.encrypt"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
