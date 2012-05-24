.class public Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;
    }
.end annotation


# instance fields
.field TouchListener:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;

.field private mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordView:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mRestoreItem:Landroid/view/MenuItem;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field position:I

.field userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->TouchListener:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->showHidePassword(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Landroid/os/Bundle;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->addUserAccountResponse(Landroid/os/Bundle;J)V

    return-void
.end method

.method public static actionaddaccount(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ConfiguredAccounts"

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private addUserAccountResponse(Landroid/os/Bundle;J)V
    .locals 6

    const-string v3, "AccountSetupSncRestoreAccounts"

    const-string v4, "addUserAccountResponse"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    if-eqz p1, :cond_1

    const-string v3, "status_code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "status_text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "AccountSetupSncRestoreAccounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addUserAccountCallback - resultCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mList:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->actionDisplayAccounts(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f080574

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, "Ok"

    new-instance v4, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$7;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$7;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private createProgressDialog()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080576

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$6;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$6;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "Created Progress dialog"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onEnableProceedButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private showHidePassword(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 4

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->onEnableProceedButtons(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onBackPressed()V

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->showHidePassword(Z)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100048
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "AccountSetupSncRestoreAccounts"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040027

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ConfiguredAccounts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mSncList:Ljava/util/List;

    const-string v2, "position"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->position:I

    const v2, 0x7f10003d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mSncList:Ljava/util/List;

    iget v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f10001c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100048

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    const v2, 0x7f100045

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V

    const-string v2, "ConfiguredAccounts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mList:Ljava/util/List;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    invoke-virtual {v2, v3}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onDestroy()V

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v2, "User pressed restore"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->createProgressDialog()V

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    if-nez v0, :cond_0

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v2, "UserEndpoint is NULL"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "AccountSetupSncRestoreAccounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EndpointName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userName- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceList- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f1002c3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f1002c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    return-void
.end method
