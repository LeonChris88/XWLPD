.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 43

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v40

    iget-object v11, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v24, Ljava/io/DataOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v32, 0x0

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    if-nez v2, :cond_6

    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_4

    const/16 v32, 0x9

    :goto_1
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v32, v32, -0x1

    :cond_1
    const/16 v2, 0x15

    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_2
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_5

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "APDU-TEST1"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data being sent to RIL is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "channel id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v24, :cond_0

    :try_start_1
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_EXCHANGE_APDU : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0x9

    goto/16 :goto_1

    :cond_5
    :try_start_2
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v13, v2, [B

    const/16 v30, 0x0

    :goto_3
    array-length v2, v13

    move/from16 v0, v30

    if-ge v0, v2, :cond_3

    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v30

    aget-byte v2, v13, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    :catch_1
    move-exception v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-nez v2, :cond_9

    const/16 v32, 0xd

    :goto_4
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    add-int/lit8 v32, v32, -0x1

    :cond_7
    const/16 v2, 0x15

    :try_start_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a

    const/16 v2, 0xb

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_5
    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->cla:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->command:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p1:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p2:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->p3:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    :cond_8
    iget v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->channel:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v13, v2, [B

    const/16 v30, 0x0

    :goto_6
    array-length v2, v13

    move/from16 v0, v30

    if-ge v0, v2, :cond_3

    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v30

    aget-byte v2, v13, v30

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v30, v30, 0x1

    goto :goto_6

    :cond_9
    iget-object v2, v11, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v32, v2, 0xd

    goto/16 :goto_4

    :cond_a
    const/16 v2, 0xc

    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in APDU()"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_c

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_c

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v12, v2

    check-cast v12, [B

    const/16 v23, 0x0

    array-length v2, v12

    const/4 v3, 0x2

    if-le v2, v3, :cond_b

    array-length v2, v12

    add-int/lit8 v2, v2, -0x2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v23

    invoke-static {v12, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    new-instance v2, Lcom/android/internal/telephony/IccIoResult;

    array-length v3, v12

    add-int/lit8 v3, v3, -0x2

    aget-byte v3, v12, v3

    and-int/lit16 v3, v3, 0xff

    array-length v4, v12

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v12, v4

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_7
    monitor-enter v40

    :try_start_5
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v40
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    :cond_c
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_7

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    const/16 v2, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v27, Ljava/io/DataOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v34, 0x0

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    if-nez v2, :cond_e

    const/16 v34, 0x4

    :goto_8
    const/16 v2, 0x15

    :try_start_6
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x9

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    if-nez v2, :cond_f

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "OPEN CHANNEL-TEST"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v27, :cond_0

    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_OPEN_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v34, v2, 0x4

    goto :goto_8

    :cond_f
    :try_start_8
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v13, v2, [B

    const/16 v30, 0x0

    :goto_a
    array-length v2, v13

    move/from16 v0, v30

    if-ge v0, v2, :cond_d

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;->AID:Ljava/lang/String;

    mul-int/lit8 v3, v30, 0x2

    mul-int/lit8 v4, v30, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v13, v30

    aget-byte v2, v13, v30

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    :catch_4
    move-exception v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in open channel"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "response came"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_13

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_13

    const/16 v42, 0x0

    const/16 v22, 0x0

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v23, v2

    check-cast v23, [B

    move-object/from16 v0, v23

    array-length v2, v0

    add-int/lit8 v22, v2, -0x1

    :goto_b
    if-ltz v22, :cond_12

    aget-byte v2, v23, v22

    if-gez v2, :cond_11

    aget-byte v2, v23, v22

    add-int/lit16 v2, v2, 0x100

    or-int v42, v42, v2

    :goto_c
    if-lez v22, :cond_10

    shl-int/lit8 v42, v42, 0x8

    :cond_10
    add-int/lit8 v22, v22, -0x1

    goto :goto_b

    :cond_11
    aget-byte v2, v23, v22

    or-int v42, v42, v2

    goto :goto_c

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response from sim is data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session Id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v42

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_d
    monitor-enter v40

    :try_start_9
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v40
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v2

    :cond_13
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_d

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    const/16 v2, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v26, Ljava/io/DataOutputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v33, 0x0

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    if-nez v2, :cond_14

    const/16 v33, 0x4

    :goto_e
    const/16 v2, 0x15

    :try_start_a
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    if-nez v2, :cond_15

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "CLOSE CHANNEL-TEST"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    if-eqz v26, :cond_0

    :try_start_b
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_CLOSE_CHANNEL : close fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_14
    const/16 v33, 0x8

    goto :goto_e

    :cond_15
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session ID received from application is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;->sessionID:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_f

    :catch_6
    move-exception v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "IOException in close channel"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto :goto_f

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_10
    monitor-enter v40

    :try_start_d
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v40
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v2

    :cond_16
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_10

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;

    const/16 v2, 0x1a

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->fileId:I

    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->command:I

    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p1:I

    move-object/from16 v0, v37

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p2:I

    move-object/from16 v0, v37

    iget v7, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->p3:I

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$IccIoArgument;->filePath:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/IccCard;->transmitIccIo(IIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_17

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_17

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_11
    monitor-enter v40

    :try_start_e
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v40
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v2

    :cond_17
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v40

    iput-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v3, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v40

    :try_start_f
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v40
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v2

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v9}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_18

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_18

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_12
    monitor-enter v40

    :try_start_10
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v40
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v2

    :cond_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_12

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v39

    const/4 v2, 0x2

    move/from16 v0, v39

    if-ne v0, v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v29

    :goto_13
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->access$300()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_END_CALL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v29, :cond_1c

    const-string v2, "hung up!"

    :goto_14
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    :cond_19
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v40

    :try_start_11
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v40
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v2

    :cond_1a
    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v29

    goto :goto_13

    :cond_1b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c
    const-string v2, "no call to hang up"

    goto :goto_14

    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v2, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_GET_CALL_FORWARD cfReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move/from16 v0, v20

    invoke-interface {v2, v0, v9}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_20

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_20

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v19, v2

    check-cast v19, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, v19

    array-length v2, v0

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_GET_CALL_FORWARD_DONE cfInfoArray.length==0"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_15
    monitor-enter v40

    :try_start_12
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v40
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v2

    :cond_1d
    const/16 v30, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v35, v0

    :goto_16
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_GET_CALL_FORWARD_DONE cfInfoArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v19, v30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_16

    :cond_1e
    const/4 v2, 0x0

    aget-object v2, v19, v2

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    const/4 v2, 0x0

    aget-object v2, v19, v2

    iget-object v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_15

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: CONFIG NOT ACTIVE"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const-string v2, ""

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_15

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_GET_CALL_FORWARD_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const-string v2, ""

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto/16 :goto_15

    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v2, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_SET_CALL_FORWARD cfReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cfAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfAction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dialingNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timerSeconds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->timerSeconds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget v5, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfAction:I

    move-object/from16 v0, v38

    iget v6, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->cfReason:I

    move-object/from16 v0, v38

    iget-object v7, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->dialingNumber:Ljava/lang/String;

    move-object/from16 v0, v38

    iget v8, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallForwardParams;->timerSeconds:I

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_SET_CALL_FORWARD_DONE worked"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_17
    monitor-enter v40

    :try_start_13
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v40
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v2

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_SET_CALL_FORWARD_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_17

    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v2, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_GET_CALL_BARRING cbFacility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v9}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_23

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_23

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v31, v2

    check-cast v31, [I

    const/4 v2, 0x0

    aget v2, v31, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_18
    monitor-enter v40

    :try_start_14
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v40
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v2

    :cond_22
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_GET_CALL_BARRING_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v2, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_SET_CALL_BARRING  cbAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-boolean v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbAction:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cbFlavour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " password="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-boolean v3, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbAction:Z

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v9}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    monitor-enter v40

    :try_start_15
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v40
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    throw v2

    :pswitch_15
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_SET_CALL_BARRING_DONE worked"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_19
    monitor-enter v40

    :try_start_16
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v40
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    throw v2

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_SET_CALL_BARRING_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_19

    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    const/16 v2, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: CMD_CHANGE_BARRING_PWD  cbFlavour="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oldPwd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->oldPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newPwd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v4, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->cbFlavour:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v6, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->oldPwd:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v7, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v8, v0, Lcom/android/phone/PhoneInterfaceManager$SetCallBarringParams;->newPwd:Ljava/lang/String;

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    monitor-enter v40

    :try_start_17
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v40
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    throw v2

    :pswitch_17
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "srocco: EVENT_CHANGE_BARRING_PWD_DONE worked"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_1a
    monitor-enter v40

    :try_start_18
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v40
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    throw v2

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "srocco: EVENT_CHANGE_BARRING_PWD_DONE exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v40

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1a

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "GET_ATR-TEST"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x21

    :try_start_19
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7

    :goto_1b
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "Request ATR Info"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto/16 :goto_0

    :catch_7
    move-exception v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const-string v3, "EVENT_GET_ATR_INFO_DONE"

    invoke-static {v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    const/16 v23, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v0, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v41, v2

    check-cast v41, [B

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR Length :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v4, v41, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    aget-byte v2, v41, v2

    if-lez v2, :cond_26

    const/4 v2, 0x0

    aget-byte v2, v41, v2

    new-array v0, v2, [B

    move-object/from16 v23, v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATR info :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_1c
    move-object/from16 v0, v23

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v40

    :try_start_1a
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v40

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v40
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    throw v2

    :cond_27
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in EVENT_GET_ATR_INFO_DONE with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_12
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
