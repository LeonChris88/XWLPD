.class Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    const/16 v5, 0x1b58

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$608(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$708(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    const/4 v3, 0x1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PatternUnlockScreen;J)V

    :goto_1
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104038a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    goto :goto_1
.end method

.method public onPatternStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
