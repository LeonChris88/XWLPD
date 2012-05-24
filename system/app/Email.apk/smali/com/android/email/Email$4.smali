.class Lcom/android/email/Email$4;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Email;

.field final synthetic val$mListener:Lcom/android/email/Email$Z7ConnectionListener;


# direct methods
.method constructor <init>(Lcom/android/email/Email;Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/Email$4;->this$0:Lcom/android/email/Email;

    iput-object p2, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Email$4;->this$0:Lcom/android/email/Email;

    invoke-static {v1}, Lcom/android/email/Email;->access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/Email$4;->this$0:Lcom/android/email/Email;

    invoke-static {v1}, Lcom/android/email/Email;->access$000(Lcom/android/email/Email;)Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/seven/Z7/common/IZ7Service;->registerCallback(Lcom/seven/Z7/common/IZ7ServiceCallback;Lcom/seven/Z7/common/Z7CallbackFilter;)V

    iget-object v1, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-virtual {v1}, Lcom/android/email/Email$Z7ConnectionListener;->onCallbackRegistered()V

    :cond_0
    const-string v1, "Z7App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/Email$4;->val$mListener:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Z7App"

    const-string v2, "failed to register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
