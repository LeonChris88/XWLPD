.class Lcom/android/phone/NetworkModePreference$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModePreference.java"


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

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NetworkModePreference"

    const-string v1, "onDataConnectionStateChanged.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Settings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/phone/Settings;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v0}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)V

    iget-object v0, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/NetworkModePreference;->access$002(Lcom/android/phone/NetworkModePreference;Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
