.class public Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static SMTP_PORT_NORMAL:I


# instance fields
.field private bFirstSelected:Z

.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mRequireLoginSettingsView:Landroid/view/View;

.field private mRequireLoginSettingsView2:Landroid/view/View;

.field private mRequireLoginString:Landroid/widget/TextView;

.field private mRequireLoginView:Landroid/widget/CheckBox;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24b

    sput v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->SMTP_PORT_NORMAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    return-void
.end method

.method private getPortFromSecurityType()I
    .locals 4

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "VNZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TPH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FTM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AMN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "IDE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ONE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "OPT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x19

    sput v3, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->SMTP_PORT_NORMAL:I

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v3, v3, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_2

    const/16 v0, 0x1d1

    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->SMTP_PORT_NORMAL:I

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 13

    const/4 v11, 0x1

    iget-boolean v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-eqz v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v9, "Email"

    const-string v10, "AccountSetupOutgoingFragment Account is null "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    iget v9, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_3

    iget-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v9, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    iget v9, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v9, -0x5

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    iget v4, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    const/4 v9, -0x1

    if-eq v4, v9, :cond_6

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    :goto_1
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v10, 0x2000006

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_2
    iput-object v6, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iput-boolean v11, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    const-string v7, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v9, 0x3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_5

    const-string v9, "ORA FTM AMN IDE ORG ONE ORO ORS OPT MST"

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v10, 0x2000005

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private validateFields()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f080304

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->enableNextButton(Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView:Landroid/view/View;

    if-eqz p2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v2, 0x2000006

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v2, 0x2000005

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    :sswitch_1
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100029 -> :sswitch_0
        0x7f10002a -> :sswitch_1
        0x7f1000a1 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "AccountSetupOutgoingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    :cond_0
    const-string v0, "smtp"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->setHasOptionsMenu(Z)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const v1, 0x7f04001e

    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v6, 0x7f10001b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    const v6, 0x7f10001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    const v6, 0x7f10001d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    const v6, 0x7f10005c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v6, 0x7f1000a0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    const v6, 0x7f1000a2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView:Landroid/view/View;

    const v6, 0x7f1000a9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    const v6, 0x7f10005b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f1000a1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f1000a1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginString:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginString:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v6, 0x5

    new-array v2, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800e4

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800e6

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800e5

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800e8

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800e7

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v3, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v6, 0x1090009

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const-string v7, "0123456789"

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-object v5
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    return-void
.end method

.method public onNext()V
    .locals 11

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v8, "Email"

    const-string v9, "AccountSetupOutgoingFragment onNext Account is null "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-virtual {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_1
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v8, v4, v5, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v9, 0x2

    invoke-interface {v8, v9, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v5

    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-integer server port; using \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f100029
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f10002a

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f100029

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AccountSetupOutgoingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v3, 0x2000006

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const v3, 0x2000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_2

    nop

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

    if-nez v0, :cond_0

    const-string v1, "Email"

    const-string v2, "AccountSetupOutgoingFragment 2 Account is null "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    :cond_0
    return-void
.end method
