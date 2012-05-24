.class public Lcom/android/email/activity/smime/SecurityPreference;
.super Landroid/preference/PreferenceActivity;
.source "SecurityPreference.java"


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountId:J

.field private mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeEncryptAllPolicyApplied:Z

.field private mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeOwnCertificateAlias:Ljava/lang/String;

.field private mSmimeSignAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeSignAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeSignAllPolicyApplied:Z

.field private policiesList:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccountId:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/smime/SecurityPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/smime/SecurityPreference;->onOwnCertificate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/smime/SecurityPreference;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/smime/SecurityPreference;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/smime/SecurityPreference;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccountId:J

    return-wide v0
.end method

.method private onOwnCertificate()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/smime/SecurityPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "KEYSTORE_PASSWORD"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CERTIFICATE_ALIAS"

    iget-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EMAIL_ADDRESS"

    iget-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/smime/SecurityPreference;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AccountSettings"

    const-string v1, "Error while getting device id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCertificateSummary()V
    .locals 2

    const-string v1, "account_own_certificate"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0804cc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

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

    iput-object v0, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/email/activity/smime/SecurityPreference;->setCertificateSummary()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v3, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccountId:J

    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v3, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/email/activity/smime/SecurityPreference;->setCertificateSummary()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f06000f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/smime/SecurityPreference;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/smime/SecurityPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccountId:J

    iget-wide v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccountId:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/smime/SecurityPreference;->finish()V

    :cond_0
    iget-wide v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccountId:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v4, "account_own_certificate"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/email/activity/smime/SecurityPreference;->setCertificateSummary()V

    new-instance v4, Lcom/android/email/activity/smime/SecurityPreference$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/smime/SecurityPreference$1;-><init>(Lcom/android/email/activity/smime/SecurityPreference;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v4, "account_smime_encrypt_all"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    const-string v4, "account_smime_sign_all"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    iput-boolean v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAllPolicyApplied:Z

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    iput-boolean v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptAllPolicyApplied:Z

    iget-boolean v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptAllPolicyApplied:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    iget-boolean v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAllPolicyApplied:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_1
    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/smime/SecurityPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0804e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string v4, "account_smime_sign_algorithm"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    const-string v4, "account_smime_encryption_algorithm"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    const-string v4, "security_policy_list"

    invoke-virtual {p0, v4}, Lcom/android/email/activity/smime/SecurityPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->policiesList:Landroid/preference/PreferenceScreen;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget v5, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_2
    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget v5, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :goto_3
    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->policiesList:Landroid/preference/PreferenceScreen;

    new-instance v5, Lcom/android/email/activity/smime/SecurityPreference$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/smime/SecurityPreference$4;-><init>(Lcom/android/email/activity/smime/SecurityPreference;)V

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    new-instance v5, Lcom/android/email/activity/smime/SecurityPreference$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/smime/SecurityPreference$2;-><init>(Lcom/android/email/activity/smime/SecurityPreference;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/email/activity/smime/SecurityPreference;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    new-instance v5, Lcom/android/email/activity/smime/SecurityPreference$3;

    invoke-direct {v5, p0}, Lcom/android/email/activity/smime/SecurityPreference$3;-><init>(Lcom/android/email/activity/smime/SecurityPreference;)V

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SmimeOwnCertificateAlias"

    iget-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SmimeEncryptAll"

    iget-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "SmimeSignAll"

    iget-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "SmimeSignAlgorithm"

    iget-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SmimeEncryptionAlgorithm"

    iget-object v2, p0, Lcom/android/email/activity/smime/SecurityPreference;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/email/activity/smime/SecurityPreference;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method
