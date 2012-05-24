.class Lcom/android/email/activity/setup/snc/AccountSetupSncNames$5;
.super Ljava/lang/Object;
.source "AccountSetupSncNames.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v1, "AccountSetupSncNames"

    const-string v2, "mSyncContacts - true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.BackupAssistant.action.CHECK_PROVISION_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$5;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "AccountSetupSncNames"

    const-string v2, "mSyncContacts - false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
