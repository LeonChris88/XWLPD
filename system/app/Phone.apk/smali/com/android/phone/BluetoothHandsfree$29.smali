.class Lcom/android/phone/BluetoothHandsfree$29;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    :goto_0
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHandsfree;->access$7702(Lcom/android/phone/BluetoothHandsfree;I)I

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_2

    :cond_2
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$7700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method
