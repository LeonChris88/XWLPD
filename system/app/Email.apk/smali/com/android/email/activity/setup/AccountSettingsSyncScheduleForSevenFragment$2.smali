.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleForSevenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->setupPeakEndTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Landroid/content/Context;Landroid/widget/Button;Z)V

    return-void
.end method
