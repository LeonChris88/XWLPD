.class Lcom/android/email/activity/setup/AccountSettingsFragment$11;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string v1, "cc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    const v2, 0x7f080282

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$11;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    const v2, 0x7f080283

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0
.end method
