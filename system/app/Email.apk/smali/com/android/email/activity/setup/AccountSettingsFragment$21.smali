.class Lcom/android/email/activity/setup/AccountSettingsFragment$21;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$21;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$21;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0, v7}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2702(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "account_id"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$21;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$21;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0804db

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$21;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/16 v6, 0x3e9

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v7
.end method
