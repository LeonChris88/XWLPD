.class Lcom/android/settings/fmm/RemoteControls$GoogleAccount$1;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls$GoogleAccount;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls$GoogleAccount;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls$GoogleAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$GoogleAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$GoogleAccount;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$GoogleAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$GoogleAccount;

    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls$GoogleAccount;->access$100(Lcom/android/settings/fmm/RemoteControls$GoogleAccount;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$GoogleAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$GoogleAccount;

    invoke-virtual {v0}, Lcom/android/settings/fmm/RemoteControls$GoogleAccount;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls$GoogleAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$GoogleAccount;

    invoke-static {v1}, Lcom/android/settings/fmm/RemoteControls$GoogleAccount;->access$200(Lcom/android/settings/fmm/RemoteControls$GoogleAccount;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls$GoogleAccount$1;->this$0:Lcom/android/settings/fmm/RemoteControls$GoogleAccount;

    invoke-virtual {v3}, Lcom/android/settings/fmm/RemoteControls$GoogleAccount;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    :cond_0
    return-void
.end method
