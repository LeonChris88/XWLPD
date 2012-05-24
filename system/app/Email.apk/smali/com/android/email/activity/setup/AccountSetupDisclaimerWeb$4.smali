.class Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$4;
.super Ljava/lang/Object;
.source "AccountSetupDisclaimerWeb.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$4;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$4;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->access$200(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    return-void
.end method
