.class Lcom/android/email/service/EnterpriseDMReceiver$1;
.super Ljava/lang/Object;
.source "EnterpriseDMReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/EnterpriseDMReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/EnterpriseDMReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->this$0:Lcom/android/email/service/EnterpriseDMReceiver;

    iput-object p2, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v1, "accountid"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    if-eqz v2, :cond_0

    cmp-long v0, v3, v6

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->this$0:Lcom/android/email/service/EnterpriseDMReceiver;

    iget-object v1, p0, Lcom/android/email/service/EnterpriseDMReceiver$1;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/android/email/service/EnterpriseDMReceiver;->access$000(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Context;[BJLjava/lang/String;)V

    goto :goto_0
.end method
