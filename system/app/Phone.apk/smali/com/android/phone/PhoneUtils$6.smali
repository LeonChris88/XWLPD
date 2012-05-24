.class final Lcom/android/phone/PhoneUtils$6;
.super Landroid/os/Handler;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$900()Lcom/android/internal/telephony/MmiCode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$900()Lcom/android/internal/telephony/MmiCode;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$900()Lcom/android/internal/telephony/MmiCode;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->cancel()V

    :cond_1
    const-string v0, "[[[DIALOG_TIMEOUT]]] dismiss~"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->access$100(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$800()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
