.class Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$002(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
