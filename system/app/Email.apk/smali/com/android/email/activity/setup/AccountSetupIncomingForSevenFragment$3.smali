.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;
.super Ljava/lang/Object;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->onNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

.field final synthetic val$e:Landroid/os/RemoteException;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/RemoteException;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;->val$e:Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;->val$e:Landroid/os/RemoteException;

    invoke-static {v0, v1}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    return-void
.end method
