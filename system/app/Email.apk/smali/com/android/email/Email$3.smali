.class Lcom/android/email/Email$3;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Email;


# direct methods
.method constructor <init>(Lcom/android/email/Email;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string v3, "Z7App"

    const-string v4, "onServiceConnected z7service Component"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    iget-object v4, v3, Lcom/android/email/Email;->mQueue:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    invoke-static {p2}, Lcom/seven/Z7/common/IZ7Service$Stub;->asInterface(Landroid/os/IBinder;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/Email;->access$002(Lcom/android/email/Email;Lcom/seven/Z7/common/IZ7Service;)Lcom/seven/Z7/common/IZ7Service;

    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    new-instance v5, Lcom/seven/Z7/common/settings/Z7SettingsManager;

    iget-object v6, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    invoke-static {v6}, Lcom/android/email/Email;->access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/seven/Z7/common/settings/Z7SettingsManager;-><init>(Lcom/seven/Z7/common/IZ7Service;)V

    invoke-static {v3, v5}, Lcom/android/email/Email;->access$102(Lcom/android/email/Email;Lcom/seven/Z7/common/settings/Z7SettingsManager;)Lcom/seven/Z7/common/settings/Z7SettingsManager;

    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/email/Email;->access$202(Lcom/android/email/Email;Z)Z

    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    iget-object v3, v3, Lcom/android/email/Email;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    iget-object v3, v3, Lcom/android/email/Email;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    iget-object v4, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    invoke-static {v4}, Lcom/android/email/Email;->access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v4

    invoke-interface {v4}, Lcom/seven/Z7/common/IZ7Service;->isEngineInitialized()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->access$302(Lcom/android/email/Email;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    invoke-static {v3}, Lcom/android/email/Email;->access$400(Lcom/android/email/Email;)V

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Z7App"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Z7App"

    const-string v1, "onServiceDisconnected() Component"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    invoke-virtual {v0, p0}, Lcom/android/email/Email;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/Email;->access$002(Lcom/android/email/Email;Lcom/seven/Z7/common/IZ7Service;)Lcom/seven/Z7/common/IZ7Service;

    iget-object v0, p0, Lcom/android/email/Email$3;->this$0:Lcom/android/email/Email;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/Email;->access$202(Lcom/android/email/Email;Z)Z

    return-void
.end method
