.class Lcom/android/phone/sip/SipSettings$3$1;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/sip/SipSettings$3;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings$3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$3$1;->this$1:Lcom/android/phone/sip/SipSettings$3;

    iput-boolean p2, p0, Lcom/android/phone/sip/SipSettings$3$1;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$3$1;->this$1:Lcom/android/phone/sip/SipSettings$3;

    iget-object v0, v0, Lcom/android/phone/sip/SipSettings$3;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-boolean v1, p0, Lcom/android/phone/sip/SipSettings$3$1;->val$enabled:Z

    invoke-static {v0, v1}, Lcom/android/phone/sip/SipSettings;->access$800(Lcom/android/phone/sip/SipSettings;Z)V

    return-void
.end method
