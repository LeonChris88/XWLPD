.class Lcom/android/phone/NetworkModePreference$2;
.super Ljava/lang/Object;
.source "NetworkModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Settings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/Settings;->showDialog(I)V

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference;->access$002(Lcom/android/phone/NetworkModePreference;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$700(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$600(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$2;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$800(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
