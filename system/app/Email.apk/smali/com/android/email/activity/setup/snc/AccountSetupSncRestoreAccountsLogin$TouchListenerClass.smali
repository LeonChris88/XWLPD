.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchListenerClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Z)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7f100046
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
