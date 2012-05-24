.class Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;
.super Ljava/lang/Object;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCircleUnlocked(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$6;->$SwitchMap$com$android$internal$policy$impl$CircleMissedEventWidgetDA$UnlockMode:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$900(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$1000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$900(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$1000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;->this$0:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->access$1000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
