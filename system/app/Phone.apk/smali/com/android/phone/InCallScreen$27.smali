.class Lcom/android/phone/InCallScreen$27;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showRadioOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallScreen$27;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/16 v2, 0x97

    iget-object v0, p0, Lcom/android/phone/InCallScreen$27;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen$27;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v1}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/InCallScreen$27;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen$27;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$2502(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/InCallScreen$27;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/InCallScreen$27;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$3400(Lcom/android/phone/InCallScreen;)V

    :cond_0
    return-void
.end method
