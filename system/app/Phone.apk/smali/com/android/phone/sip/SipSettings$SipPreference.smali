.class Lcom/android/phone/sip/SipSettings$SipPreference;
.super Landroid/preference/Preference;
.source "SipSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipPreference"
.end annotation


# instance fields
.field mProfile:Landroid/net/sip/SipProfile;

.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lcom/android/phone/sip/SipSettings$SipPreference;->setProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method


# virtual methods
.method setProfile(Landroid/net/sip/SipProfile;)V
    .locals 2

    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-static {v0, p1}, Lcom/android/phone/sip/SipSettings;->access$000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings$SipPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-static {v0}, Lcom/android/phone/sip/SipSettings;->access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v1, 0x7f0e0237

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipSettings$SipPreference;->updateSummary(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v1, 0x7f0e023a

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method updateSummary(Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getCallingUid()I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-static {v4}, Lcom/android/phone/sip/SipSettings;->access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "SipSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile uid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isPrimary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " registration:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Primary:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-static {v5}, Lcom/android/phone/sip/SipSettings;->access$100(Lcom/android/phone/sip/SipSettings;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-static {v3}, Lcom/android/phone/sip/SipSettings;->access$200(Lcom/android/phone/sip/SipSettings;)I

    move-result v3

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v4, 0x7f0e0242

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-static {v6, v1}, Lcom/android/phone/sip/SipSettings;->access$300(Lcom/android/phone/sip/SipSettings;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/phone/sip/SipSettings$SipPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/phone/sip/SipSettings$SipPreference;->this$0:Lcom/android/phone/sip/SipSettings;

    const v4, 0x7f0e0236

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method
