.class Lcom/android/server/enterprise/FirewallPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/FirewallPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/FirewallPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForRules()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-virtual {v2, v5, v1}, Lcom/android/server/enterprise/FirewallPolicy;->enableRulesWithUid(ZI)Z

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/FirewallPolicy$1;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-virtual {v2, v5, v0}, Lcom/android/server/enterprise/FirewallPolicy;->enableProxyWithUid(ZI)Z

    :cond_1
    return-void
.end method
