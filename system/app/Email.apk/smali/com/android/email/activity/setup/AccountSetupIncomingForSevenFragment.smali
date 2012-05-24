.class public Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;
.super Landroid/app/Fragment;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$4;,
        Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;
    }
.end annotation


# instance fields
.field private bFirstSelected:Z

.field private connectionTimeOut:Ljava/lang/Runnable;

.field protected handler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPopupReport:Landroid/app/AlertDialog;

.field private mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

.field public mProceedButton:Landroid/widget/Button;

.field public mProceedButtonPressed:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSevenAccountKey:I

.field private mShowingPopupDialog:Z

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->bFirstSelected:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->showPopUpForConnectionFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private final showPopUpForConnectionFail()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080438

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private validateFields()V
    .locals 3

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method protected final dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButtonPressed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButtonPressed:Z

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->onNext()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100029
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "AccountSetupIncomingForSevenFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mLoaded:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v7, 0x0

    const v1, 0x7f040009

    invoke-virtual {p1, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f10001b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    const v6, 0x7f10001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v6, 0x7f100029

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f10002a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :try_start_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v6, v6

    iput v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    return-object v5

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->stopConnectionTimeOut()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onNext()V
    .locals 5

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    iget v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/digc/seven/Z7MailHandler;->relogin(ILjava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->showProgressDialog()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->startConnectionTimeOut()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/RemoteException;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AccountSetupIncomingForSevenFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->stopConnectionTimeOut()V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mStarted:Z

    return-void
.end method

.method protected final showProgressDialog()V
    .locals 3

    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected final startConnectionTimeOut()V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final stopConnectionTimeOut()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
