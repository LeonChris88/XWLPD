.class Lcom/android/emailcommon/service/PolicyServiceProxy$1;
.super Ljava/lang/Object;
.source "PolicyServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/PolicyServiceProxy;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

.field final synthetic val$arg0:Lcom/android/emailcommon/service/PolicySet;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/PolicyServiceProxy;Lcom/android/emailcommon/service/PolicySet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->val$arg0:Lcom/android/emailcommon/service/PolicySet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->this$0:Lcom/android/emailcommon/service/PolicyServiceProxy;

    invoke-static {v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$100(Lcom/android/emailcommon/service/PolicyServiceProxy;)Lcom/android/emailcommon/service/IPolicyService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/PolicyServiceProxy$1;->val$arg0:Lcom/android/emailcommon/service/PolicySet;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IPolicyService;->clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/service/PolicyServiceProxy;->access$002(Lcom/android/emailcommon/service/PolicyServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
