.class public Lcom/android/email/activity/setup/AccountSetupAccountType;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupAccountType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCurrentOrientation:I

.field private mHorizontalLayout:Landroid/widget/LinearLayout;

.field private mVerticalLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionSelectAccountType(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupAccountType;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private isExchangeAvailable()Z
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URI;

    const-string v1, "eas"

    invoke-virtual {v9}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0, v8}, Lcom/android/email/activity/setup/AccountSetupAccountType;->checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v10

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v10

    goto :goto_0
.end method

.method private onExchange()V
    .locals 15

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAutoDiscoverCount()I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setAutoDiscoverCount(I)V

    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getDomain()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setDomain(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v9

    invoke-static {v9}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    :try_start_0
    new-instance v13, Ljava/net/URI;

    invoke-virtual {v8, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URI;

    const-string v1, "eas+ssl+"

    invoke-virtual {v13}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setStoreUri(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, p0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderUri(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    const/4 v2, -0x2

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x0

    const-string v2, "H3G"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3IE"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/16 v5, 0xf

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {v8, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchange;->actionAutoDiscoverSetupExchangeIntent(Landroid/app/Activity;ZZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    :goto_2
    return-void

    :catch_0
    move-exception v14

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080545

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_2

    :cond_3
    const-string v2, "NZC"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    goto :goto_0

    :cond_4
    const-string v2, "ILO"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v2, 0x1e0

    const/16 v3, 0x41a

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    goto :goto_0

    :cond_5
    const-string v2, "PCL"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    goto :goto_0

    :cond_6
    const-string v2, "MIR"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x1f

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v2, 0x1e0

    const/16 v3, 0x3fc

    const/16 v4, 0x3e

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-static {p0, v2, v8}, Lcom/android/email/activity/setup/AccountSetupExchange;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    goto/16 :goto_1
.end method

.method private onImap()V
    .locals 7

    const/4 v6, 0x3

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v2, :cond_0

    const-string v3, "imap"

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "imap"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    invoke-static {v6}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    const/4 v3, 0x7

    invoke-static {v6, v3}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "Email"

    const-string v4, "AccountSetupAccountType Account is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_0
.end method

.method private onPop()V
    .locals 6

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v2, :cond_0

    const-string v3, "pop3"

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const-string v4, "pop"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/email/activity/setup/SetupData;->setCheckSettingsMode(I)V

    const/4 v3, 0x2

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountType(I)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-static {p0, v3, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v3, "Email"

    const-string v4, "AccountSetupAccountType Account is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    goto :goto_0
.end method


# virtual methods
.method checkAccountInstanceLimit(Lcom/android/email/mail/Store$StoreInfo;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-gez v0, :cond_0

    :goto_0
    return v6

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move v1, v7

    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v2, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v3, p1, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    iget v0, p1, Lcom/android/email/mail/Store$StoreInfo;->mAccountInstanceLimit:I

    if-ge v1, v0, :cond_4

    move v0, v6

    :goto_3
    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v7

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onPop()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onImap()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10002d
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f08002e

    const/16 v7, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->onExchange()V

    :goto_0
    return-void

    :cond_0
    const v4, 0x7f04000d

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->setContentView(I)V

    const v4, 0x7f10002b

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f100030

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f10002d

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f10002e

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f10002f

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100031

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100032

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f100033

    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupAccountType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->isExchangeAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mCurrentOrientation:I

    iget v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mHorizontalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountType;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
