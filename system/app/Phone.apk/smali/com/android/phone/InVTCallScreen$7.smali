.class Lcom/android/phone/InVTCallScreen$7;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1, p2}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$3400()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Got BluetoothHeadset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$6500(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$600(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6600(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "InVTCallScreen"

    const-string v2, " in onServiceConnected:: headset is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6500(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$2400()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is connected and switching off the speaker. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "InVTCallScreen"

    const-string v2, "During Call Bluetooth is not connected and switching on the speaker. in IncallScreen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-static {v1, v4, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_2
    const-string v1, "InVTCallScreen"

    const-string v2, " in onServiceConnected:: All case failed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$7;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$6502(Lcom/android/phone/InVTCallScreen;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
