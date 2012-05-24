.class Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;
.super Ljava/lang/Object;
.source "AccountSetupDisclaimerWeb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initAcceptButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/seven/Z7/app/SubscriptionStatus;->setApplicationUsageDisclaimerAccepted(Z)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SNS_DISCLAIMER_AGREE"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setResult(I)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$2;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->finish()V

    return-void
.end method
