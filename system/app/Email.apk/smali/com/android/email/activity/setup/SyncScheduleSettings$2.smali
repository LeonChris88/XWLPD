.class Lcom/android/email/activity/setup/SyncScheduleSettings$2;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupOffPeakSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/SyncScheduleSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$200(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v0}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$200(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$200(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$2;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$302(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    const/4 v0, 0x0

    return v0
.end method
