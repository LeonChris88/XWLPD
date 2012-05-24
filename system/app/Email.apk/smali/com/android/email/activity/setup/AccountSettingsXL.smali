.class public Lcom/android/email/activity/setup/AccountSettingsXL;
.super Landroid/preference/PreferenceActivity;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;,
        Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;,
        Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;,
        Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;,
        Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;
    }
.end annotation


# static fields
.field private static final SECRET_KEY_CODES:[I

.field public static mDeleteMode:Z

.field private static mDeleteaccountId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsRotating:Z

.field public static mPrevPreference:Z


# instance fields
.field private mAccountDeleteItem:[J

.field private mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

.field private final mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

.field private final mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

.field private mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

.field private mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field mCurrentFragment:Landroid/app/Fragment;

.field private mCurrentHeaderPosition:I

.field private mDefaultAccountId:J

.field private mDeleteAccountPressed:Z

.field private mDeletingAccountId:J

.field private mGeneratedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

.field private mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

.field private mNumGeneralHeaderClicked:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

.field private mRequestedAccountId:J

.field private mResumed:Z

.field private mSecretKeyCodeIndex:I

.field private mShowDebugMenu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    return-void

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    return-void
.end method

.method static synthetic access$1002(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/email/activity/setup/AccountSettingsXL;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceBack()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsXL;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->forceSwitchHeader(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSettingsXL;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsXL;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsXL;)Lcom/android/email/Controller;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/setup/AccountSettingsXL;[Landroid/preference/PreferenceActivity$Header;)[Landroid/preference/PreferenceActivity$Header;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    return-object p1
.end method

.method public static actionSettings(Landroid/app/Activity;J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionSettingsWithDebug(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "AccountSettingsXL.enable_debug"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static actionSettings_withdeleteoption(Landroid/app/Activity;J)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "AccountSettingsXL.for_deleteoption"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "AccountSettingsXL.account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "AccountSettingsXL.for_account"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private enableDebugMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateHeaders()V

    return-void
.end method

.method private forceBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    return-void
.end method

.method private forceSwitchHeader(I)V
    .locals 2

    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentHeaderPosition:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->setSelection(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    return-void
.end method

.method private getAddedAccountCategory()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    const v1, 0x7f0805dc

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAddedAccountCategory:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    const v3, 0x7f0805ba

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v0, :cond_0

    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v1, Lcom/android/email/activity/setup/GeneralPreferences;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAppPreferencesHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private onAddNewAccount()V
    .locals 0

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    return-void
.end method

.method private onDeleteAccount()V
    .locals 3

    const v2, 0x7f080058

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080043

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsXL$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private onDeleteMode()V
    .locals 4

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[toma] mRequestedAccountId :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[toma] mDefaultAccountId :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    return-void
.end method

.method private onDeleteModeCancel()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    return-void
.end method

.method private shouldShowNewAccount()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/GeneralPreferences;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/DebugFragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 4

    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->deleteAccount(J)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    iget-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    goto :goto_0
.end method

.method public deleteAccountCallbackResult(Landroid/os/Bundle;J)V
    .locals 9

    const/4 v4, 0x0

    const v8, 0x7f080270

    const/4 v7, 0x0

    const-string v0, "Email"

    const-string v1, "deleteAccountCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    if-eqz p1, :cond_6

    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    if-nez p1, :cond_4

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    if-nez v6, :cond_1

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    iget-wide v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "status_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    const v0, 0x7f080589

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    move v6, v7

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Fragment;)V
    .locals 3

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, p1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->setCallback(Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountServerSettingsFragmentCallback:Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v1, :cond_0

    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteModeCancel()V

    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    :goto_1
    return-void

    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Email"

    const-string v2, "Error in onBackPressed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v9, -0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getAddedAccountCategory()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountListHeaders:[Landroid/preference/PreferenceActivity$Header;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_1

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v4, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountHeader:Landroid/preference/PreferenceActivity$Header;

    iput-wide v9, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    iput v1, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    const-class v1, Lcom/android/email/activity/setup/DebugFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iput-object v8, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getTitleFromArgs(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "AccountSettings.title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "intent.seven.action.EMAIL_ACCOUNT_PREFERENCE"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez p1, :cond_1

    const-string v3, "com.android.email.activity.setup.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-direct {v3, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    new-array v4, v7, [Landroid/content/Intent;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    :cond_1
    :goto_1
    const-string v3, "AccountSettingsXL.enable_debug"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mShowDebugMenu:Z

    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    iput-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    const-string v3, "AccountSettings.title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    new-instance v3, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;

    invoke-direct {v5, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    invoke-direct {v3, v4, v5}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v3, v4}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    goto :goto_0

    :cond_3
    const-string v3, "intent.seven.action.EMAIL_ACCOUNT_PREFERENCE"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-direct {v3, p0, v8}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    new-array v4, v7, [Landroid/content/Intent;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    goto :goto_1

    :cond_4
    const-string v3, "AccountSettingsXL.account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mRequestedAccountId:J

    const-string v3, "AccountSettingsXL.for_deleteoption"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGetAccountIdFromAccountTask:Lcom/android/email/activity/setup/AccountSettingsXL$GetAccountIdFromAccountTask;

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    return-void
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    instance-of v4, v4, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "UnsavedChangesDialogFragment"

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v4, v7, :cond_1

    iget-wide v0, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    :cond_1
    if-nez p2, :cond_4

    sput-boolean v7, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    :goto_2
    if-nez p2, :cond_5

    sget-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    :cond_2
    :goto_3
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iput-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDefaultAccountId:J

    iput p2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentHeaderPosition:I

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sput-boolean v6, Lcom/android/email/activity/setup/AccountSettingsXL;->mPrevPreference:Z

    goto :goto_2

    :cond_5
    iput v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mNumGeneralHeaderClicked:I

    goto :goto_3
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Store;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080135

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080198

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Email"

    const-string v2, "Error while trying to invoke store settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onIncomingSettingsForSeven(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080135

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    iget v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    iget v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    sget-object v1, Lcom/android/email/activity/setup/AccountSettingsXL;->SECRET_KEY_CODES:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->enableDebugMenu()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mSecretKeyCodeIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAddNewAccount()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteMode()V

    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->Category:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :sswitch_3
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    if-nez v2, :cond_0

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteAccount()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteModeCancel()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f1002b1 -> :sswitch_2
        0x7f1002b3 -> :sswitch_1
        0x7f1002b7 -> :sswitch_3
        0x7f1002b8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/mail/Sender;->getSettingActivityClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v1, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    const-class v1, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getSettingsModeArgs()Landroid/os/Bundle;

    move-result-object v2

    const v3, 0x7f080136

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Email"

    const-string v2, "Error while trying to invoke sender settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v2, 0x7f1002b7

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->shouldShowNewAccount()Z

    move-result v0

    return v0

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    const-string v4, "com.android.email.activity.AccountSettingXL.deleteMode"

    sget-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    const-string v4, "com.android.email.activity.AccountSettingXL.ACCOUNTDELET_ITEM "

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v4, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mResumed:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mIsRotating:Z

    const-string v5, "com.android.email.activity.AccountSettingXL.deleteMode"

    sget-boolean v6, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    sget-object v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x0

    new-array v5, v1, [J

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    sget-object v5, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteaccountId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v2

    move v2, v3

    goto :goto_0

    :cond_0
    const-string v5, "com.android.email.activity.AccountSettingXL.ACCOUNTDELET_ITEM "

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mAccountDeleteItem:[J

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void
.end method

.method public onSyncScheduleSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 7

    const v3, 0x7f08043d

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/android/email/activity/setup/SetupData;->init(ILcom/android/emailcommon/provider/EmailContent$Account;)V

    const-class v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3ec

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mGeneratedHeaders:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public updateAccounts()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->hasHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeletingAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL;->mLoadAccountListTask:Lcom/android/email/activity/setup/AccountSettingsXL$LoadAccountListTask;

    :cond_0
    return-void
.end method
