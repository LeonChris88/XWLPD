.class public Lcom/android/email/service/EmailPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailPushReceiver.java"


# instance fields
.field WAP_Push_Wbxml_header:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/email/service/EmailPushReceiver;->WAP_Push_Wbxml_header:[I

    return-void

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/email/service/EmailPushReceiver;->searchAccountAndUpdate(Landroid/content/Context;[B)V

    :cond_0
    return-void
.end method

.method public searchAccountAndUpdate(Landroid/content/Context;[B)V
    .locals 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_1

    aget-byte v5, p2, v2

    iget-object v6, p0, Lcom/android/email/service/EmailPushReceiver;->WAP_Push_Wbxml_header:[I

    aget v6, v6, v2

    int-to-byte v6, v6

    if-eq v5, v6, :cond_0

    const-string v5, "EmailPushReceiver"

    const-string v6, "user data header is wrong"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    :goto_2
    array-length v5, p2

    if-ge v2, v5, :cond_2

    aget-byte v5, p2, v2

    if-nez v5, :cond_3

    :cond_2
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v3, v5, 0xff

    packed-switch v3, :pswitch_data_0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v5, "EmailPushReceiver"

    const-string v6, "searchAccountAndUpdate: account is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    aget-byte v5, p2, v2

    int-to-char v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_0
    const-string v5, ".com"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string v5, ".edu"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_2
    const-string v5, ".net"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_3
    const-string v5, ".org"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p1, v5, v6}, Lcom/android/email/service/MailService;->actionSyncOneAccount(Landroid/content/Context;J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
