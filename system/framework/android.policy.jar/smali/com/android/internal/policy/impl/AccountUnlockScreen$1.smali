.class Lcom/android/internal/policy/impl/AccountUnlockScreen$1;
.super Ljava/lang/Object;
.source "AccountUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->val$success:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->val$success:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$100(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$300(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x10403b3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$400(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/AccountUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    goto :goto_0
.end method
