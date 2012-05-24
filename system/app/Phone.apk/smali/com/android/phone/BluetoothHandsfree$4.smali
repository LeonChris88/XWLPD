.class Lcom/android/phone/BluetoothHandsfree$4;
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

    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 11

    const/high16 v10, 0x1000

    const/16 v9, 0x3b

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_4

    const-string v4, ">9999"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    const-string v4, "No number specified in ATD>nnn command"

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v6, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "voicemail"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$6000(Lcom/android/phone/BluetoothHandsfree;)V

    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "args \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not a valid integer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Ljava/lang/String;)V

    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4, v2}, Lcom/android/phone/BluetoothHandsfree;->access$6100(Lcom/android/phone/BluetoothHandsfree;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4, v3}, Lcom/android/phone/BluetoothHandsfree;->access$6200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4}, Lcom/android/phone/BluetoothHandsfree;->terminateScoUsingVirtualVoiceCall()Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertPreDial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$4;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$6000(Lcom/android/phone/BluetoothHandsfree;)V

    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0

    :cond_6
    new-instance v4, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v4, v6}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto/16 :goto_0
.end method
