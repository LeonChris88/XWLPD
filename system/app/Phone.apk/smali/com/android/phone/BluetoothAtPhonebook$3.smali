.class Lcom/android/phone/BluetoothAtPhonebook$3;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothAtPhonebook;->register(Landroid/bluetooth/AtParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$700(Lcom/android/phone/BluetoothAtPhonebook;)I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    array-length v3, p1

    if-lt v3, v4, :cond_1

    aget-object v3, p1, v5

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_2

    :cond_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    :cond_2
    aget-object v3, p1, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    array-length v3, p1

    if-ne v3, v4, :cond_3

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3, v1}, Lcom/android/phone/BluetoothAtPhonebook;->access$702(Lcom/android/phone/BluetoothAtPhonebook;I)I

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3, v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$802(Lcom/android/phone/BluetoothAtPhonebook;I)I

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$902(Lcom/android/phone/BluetoothAtPhonebook;Z)Z

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$1000(Lcom/android/phone/BluetoothAtPhonebook;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3, v5}, Lcom/android/phone/BluetoothAtPhonebook;->access$902(Lcom/android/phone/BluetoothAtPhonebook;Z)Z

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$1100(Lcom/android/phone/BluetoothAtPhonebook;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v4, v6}, Lcom/android/phone/BluetoothAtPhonebook;->access$802(Lcom/android/phone/BluetoothAtPhonebook;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$702(Lcom/android/phone/BluetoothAtPhonebook;I)I

    goto :goto_0

    :cond_3
    aget-object v3, p1, v4

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v3

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    goto :goto_0

    :cond_4
    aget-object v3, p1, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 5

    const-string v2, "SM"

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$400(Lcom/android/phone/BluetoothAtPhonebook;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CPBR: (1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "),30,30"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v3, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v3}, Lcom/android/phone/BluetoothAtPhonebook;->access$300(Lcom/android/phone/BluetoothAtPhonebook;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/phone/BluetoothAtPhonebook;->access$600(Lcom/android/phone/BluetoothAtPhonebook;Ljava/lang/String;Z)Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$3;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {v2}, Lcom/android/phone/BluetoothAtPhonebook;->access$200(Lcom/android/phone/BluetoothAtPhonebook;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->reportCmeError(I)Landroid/bluetooth/AtCommandResult;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/android/phone/BluetoothAtPhonebook$PhonebookResult;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0
.end method
