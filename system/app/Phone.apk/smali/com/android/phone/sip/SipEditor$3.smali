.class Lcom/android/phone/sip/SipEditor$3;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;

.field final synthetic val$newProfile:Landroid/net/sip/SipProfile;

.field final synthetic val$oldProfile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    iput-object p2, p0, Lcom/android/phone/sip/SipEditor$3;->val$newProfile:Landroid/net/sip/SipProfile;

    iput-object p3, p0, Lcom/android/phone/sip/SipEditor$3;->val$oldProfile:Landroid/net/sip/SipProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->val$newProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-static {v1}, Lcom/android/phone/sip/SipEditor;->access$400(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-static {v1}, Lcom/android/phone/sip/SipEditor;->access$500(Lcom/android/phone/sip/SipEditor;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-static {v1}, Lcom/android/phone/sip/SipEditor;->access$400(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$3;->val$newProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->commit(Landroid/net/sip/SipProfile;)V

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$3;->val$oldProfile:Landroid/net/sip/SipProfile;

    invoke-static {v1, v2}, Lcom/android/phone/sip/SipEditor;->access$600(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$3;->val$newProfile:Landroid/net/sip/SipProfile;

    invoke-static {v1, v2}, Lcom/android/phone/sip/SipEditor;->access$700(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not save/register new SipProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$3;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-static {v1, v0}, Lcom/android/phone/sip/SipEditor;->access$800(Lcom/android/phone/sip/SipEditor;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
