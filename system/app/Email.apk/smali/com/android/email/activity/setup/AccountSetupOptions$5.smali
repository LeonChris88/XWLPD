.class Lcom/android/email/activity/setup/AccountSetupOptions$5;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    iget v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, -0x31

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v8, v7}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-static {v8}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    invoke-static {v8}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    invoke-static {v8}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;)V

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    return-void
.end method
