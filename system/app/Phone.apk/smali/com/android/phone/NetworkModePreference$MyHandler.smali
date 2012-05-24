.class Lcom/android/phone/NetworkModePreference$MyHandler;
.super Landroid/os/Handler;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v5

    const-string v2, "NetworkModePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "NetworkModePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$700(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_1
    :goto_0
    const-string v1, "network_mode_preference_recovery"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V

    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetworkModePreference"

    const-string v2, "set preferred network type done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1
.end method

.method private updateState(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const-string v3, "remove_network_mode_wcdma_only"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    if-gez v1, :cond_3

    :cond_0
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mode is not included in supported network mode, will be shown PREFERRED_NT_MODE mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/phone/NetworkModePreference;->access$902(Lcom/android/phone/NetworkModePreference;I)I

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3, v0}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    :goto_1
    return-void

    :cond_1
    const-string v3, "remove_network_mode_gsm_only"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {v3, p1}, Lcom/android/phone/NetworkModePreference;->access$902(Lcom/android/phone/NetworkModePreference;I)I

    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
