.class Lcom/android/phone/PhoneApp$LockPatternClear;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockPatternClear"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$LockPatternClear;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v2, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v2, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/app/KeyguardManager;

    move-result-object v3

    const-string v4, "LockPatternClear"

    invoke-virtual {v3, v4}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$1702(Lcom/android/phone/PhoneApp;Landroid/app/KeyguardManager$KeyguardLock;)Landroid/app/KeyguardManager$KeyguardLock;

    iget-object v2, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1700(Lcom/android/phone/PhoneApp;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    iget-object v2, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/PhoneApp$LockPatternClear;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
