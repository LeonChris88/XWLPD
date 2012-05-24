.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$2;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
