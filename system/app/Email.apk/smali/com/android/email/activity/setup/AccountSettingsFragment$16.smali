.class Lcom/android/email/activity/setup/AccountSettingsFragment$16;
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

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$16;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$16;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2702(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$16;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2800(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    return v1
.end method
