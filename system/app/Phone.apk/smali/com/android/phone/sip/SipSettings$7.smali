.class Lcom/android/phone/sip/SipSettings$7;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;

.field final synthetic val$profile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$7;->this$0:Lcom/android/phone/sip/SipSettings;

    iput-object p2, p0, Lcom/android/phone/sip/SipSettings$7;->val$profile:Landroid/net/sip/SipProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$7;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$7;->val$profile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings;->deleteProfile(Landroid/net/sip/SipProfile;)V

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$7;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$7;->val$profile:Landroid/net/sip/SipProfile;

    invoke-static {v0, v1}, Lcom/android/phone/sip/SipSettings;->access$1100(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    return-void
.end method
