.class Lcom/android/email/activity/smime/SecurityPreference$1;
.super Ljava/lang/Object;
.source "SecurityPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/SecurityPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/SecurityPreference;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/SecurityPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/smime/SecurityPreference$1;->this$0:Lcom/android/email/activity/smime/SecurityPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/smime/SecurityPreference$1;->this$0:Lcom/android/email/activity/smime/SecurityPreference;

    invoke-static {v0}, Lcom/android/email/activity/smime/SecurityPreference;->access$000(Lcom/android/email/activity/smime/SecurityPreference;)V

    const/4 v0, 0x1

    return v0
.end method
