.class Lcom/android/email/service/PolicyService$1;
.super Lcom/android/emailcommon/service/IPolicyService$Stub;
.source "PolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/PolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/PolicyService;


# direct methods
.method constructor <init>(Lcom/android/email/service/PolicyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IPolicyService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/SecurityPolicy;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    return-object v0
.end method

.method public getAccountPolicy(J)Lcom/android/emailcommon/service/PolicySet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    return-object v0
.end method

.method public isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v0

    return v0
.end method

.method public isActiveAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v0

    return v0
.end method

.method public isSupported(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/SecurityPolicy;->isSupported(Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v0

    return v0
.end method

.method public policiesRequired(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/SecurityPolicy;->policiesRequired(J)V

    return-void
.end method

.method public reducePolicies()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    return-void
.end method

.method public remoteWipe()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->remoteWipe()V

    return-void
.end method

.method public setAccountHoldFlag(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$100(Lcom/android/email/service/PolicyService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;JZ)V

    return-void
.end method

.method public setRecoverPasswordState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/SecurityPolicy;->setRecoverPasswordState(Z)V

    return-void
.end method

.method public updatePolicies(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/service/PolicyService$1;->this$0:Lcom/android/email/service/PolicyService;

    invoke-static {v0}, Lcom/android/email/service/PolicyService;->access$000(Lcom/android/email/service/PolicyService;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    return-void
.end method
