.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupPeakSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->access$102(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;I)I

    const/4 v0, 0x0

    return v0
.end method
