.class Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$2;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$2;->this$1:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC$2;->this$1:Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    return-void
.end method
