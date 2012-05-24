.class Lcom/android/email/activity/setup/AccountSettingsFragment$44;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
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

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$44;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$44;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    const/4 v0, 0x1

    return v0
.end method
