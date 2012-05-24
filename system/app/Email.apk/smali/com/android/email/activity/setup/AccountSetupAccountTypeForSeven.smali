.class public Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;
.super Lcom/seven/Z7/app/Z7AppBaseActivity;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$11;,
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$ControllerResult;,
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;,
        Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;
    }
.end annotation


# instance fields
.field public KEY_STAGE:Ljava/lang/String;

.field private accountEMail:Ljava/lang/String;

.field private isDefault:Ljava/lang/Boolean;

.field mConnector:Landroid/os/Bundle;

.field private mControllerResult:Lcom/android/email/Controller$Result;

.field private mDuplicateAccountName:Ljava/lang/String;

.field mIsPop:Z

.field mIspName:Ljava/lang/String;

.field private mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

.field mStage:I

.field mUseSameSettings:Z

.field nextButton:Landroid/view/MenuItem;

.field previousButton:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;-><init>()V

    const-string v0, "stage"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->KEY_STAGE:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    iput v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->cancelTask()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showingPopupDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->stopConnectionTimeOut()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->checkDuplicationAccount()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->changePrefToPremiumConnector()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)I
    .locals 1

    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finishSetup(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->cancelTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)I
    .locals 1

    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    return-void
.end method

.method private addAccountForSeven()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->addAccount(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {p0, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkDuplicationAccount()V
    .locals 2

    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$9;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private finishSetup(II)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->restoreAccountWithId(I)V

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->actionOptions(Landroid/app/Activity;II)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v4, 0x4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finish()V

    return-void
.end method

.method private initCurrentStage()V
    .locals 17

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    packed-switch v14, :pswitch_data_0

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v14, :cond_0

    const v14, 0x7f10002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v14, 0x7f10002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :pswitch_0
    const v14, 0x7f04000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setContentView(I)V

    const v14, 0x7f100034

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget-object v14, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_NO_ISP_MATCH:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v14}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v14

    invoke-static {v14}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v14, 0x7f040019

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setContentView(I)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v14, :cond_1

    const v14, 0x7f10005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0800e0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const v14, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;)V

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v14, 0x7f100068

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_1
    const v14, 0x7f10005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0800e1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    :cond_2
    const v14, 0x7f100067

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    const v14, 0x7f04001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setContentView(I)V

    const v14, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$2;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;)V

    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v14, 0x7f1000a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v14, 0x7f100068

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v1, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$3;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v14, 0x7f1000a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v14, 0x7f1000a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    const v14, 0x7f1000aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v14, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13, v7}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$4;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v15, "username"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v15, "password"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setEnabled(Z)V

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    const/16 v14, 0x8

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onNext()V
    .locals 17

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const v1, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    const v1, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    const v1, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v1, :cond_0

    const v1, 0x7f100068

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v1, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    const v1, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    const v1, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    const v1, 0x7f100068

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f1000a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    if-nez v1, :cond_3

    const v1, 0x7f1000a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    const v1, 0x7f1000aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setEmailAndPwToPref(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getAccountID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    const/4 v1, -0x1

    if-ne v14, v1, :cond_4

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->startConnectionTimeOut()V

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "sevenAccountKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v14, v0}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$5;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0
.end method

.method private restoreAccountWithId(I)V
    .locals 3

    int-to-long v1, p1

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method private setIncomingServerType(Z)V
    .locals 6

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v2, "pop."

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/16 v2, 0x6e

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "imap."

    goto :goto_0

    :cond_1
    const/16 v2, 0x8f

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f10002d

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "isp_type"

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setIncomingServerType(Z)V

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    if-eqz v14, :cond_1

    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v14}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->invalidateOptionsMenu()V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const v1, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    const v1, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    const v1, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-nez v1, :cond_0

    const v1, 0x7f100068

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const v1, 0x7f100062

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    const v1, 0x7f100063

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    const v1, 0x7f100066

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    const v1, 0x7f100068

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1000a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mUseSameSettings:Z

    if-nez v1, :cond_0

    const v1, 0x7f1000a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    const v1, 0x7f1000aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v2, "username"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setEmailAndPwToPref(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/digc/seven/SevenSyncProvider;->getAccountID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    const/4 v1, -0x1

    if-ne v15, v1, :cond_8

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->startConnectionTimeOut()V

    goto/16 :goto_3

    :cond_8
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "sevenAccountKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v15, v0}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$7;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :cond_a
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto/16 :goto_3

    :cond_c
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$8;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput v6, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "_connector"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIspName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->accountEMail:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v3, "is_default"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->isDefault:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_INCOMING:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_NTLM_AUTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_OUTGOING_SERVER_PORT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "25"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SSL_OUTGOING:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_USE_SMTP_AUTH:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_USERNAME:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v3, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_SMTP_PASSWORD:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v5, "password"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v2, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v2, :cond_0

    const-string v2, "pop."

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    sget v2, Lcom/seven/Z7/common/Z7ExtConstants$Z7Constants;->Z7_KEY_SETTINGS_ISP_INCOMING_SERVER_PORT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x6e

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mConnector:Landroid/os/Bundle;

    const-string v4, "isp_type"

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mIsPop:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    iget-object v3, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    new-instance v2, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$ControllerResult;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$ControllerResult;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$1;)V

    invoke-direct {v2, v3, v4}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v2, v3}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    invoke-virtual {p0, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->setResult(I)V

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    return-void

    :cond_0
    const-string v2, "imap."

    goto :goto_0

    :cond_1
    const/16 v2, 0x8f

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0804bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800cf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080042

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$10;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mControllerResult:Lcom/android/email/Controller$Result;

    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mListener:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finish()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->initCurrentStage()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->invalidateOptionsMenu()V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->onNext()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_1
        0x7f1002c0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onPause()V

    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    const v1, 0x7f0800cf

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mDuplicateAccountName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const v0, 0x7f1002c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->previousButton:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->mStage:I

    if-eqz v0, :cond_0

    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->nextButton:Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->onStop()V

    return-void
.end method
