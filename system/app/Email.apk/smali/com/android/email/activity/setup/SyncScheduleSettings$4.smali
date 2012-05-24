.class Lcom/android/email/activity/setup/SyncScheduleSettings$4;
.super Ljava/lang/Object;
.source "SyncScheduleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/SyncScheduleSettings;->setupPeakStartTime()V
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

    iput-object p1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$4;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$4;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$4;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$500(Lcom/android/email/activity/setup/SyncScheduleSettings;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$600(Lcom/android/email/activity/setup/SyncScheduleSettings;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$4;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$702(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$4;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$802(Lcom/android/email/activity/setup/SyncScheduleSettings;I)I

    iget-object v1, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$4;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    iget-object v2, p0, Lcom/android/email/activity/setup/SyncScheduleSettings$4;->this$0:Lcom/android/email/activity/setup/SyncScheduleSettings;

    invoke-static {v2}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$900(Lcom/android/email/activity/setup/SyncScheduleSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/activity/setup/SyncScheduleSettings;->access$1000(Lcom/android/email/activity/setup/SyncScheduleSettings;Landroid/preference/Preference;Z)V

    const/4 v1, 0x0

    return v1
.end method
