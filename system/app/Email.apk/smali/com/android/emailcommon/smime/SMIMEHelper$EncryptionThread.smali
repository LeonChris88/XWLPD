.class Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;
.super Ljava/lang/Thread;
.source "SMIMEHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/SMIMEHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EncryptionThread"
.end annotation


# instance fields
.field encryptedPart:Ljavax/mail/internet/MimeBodyPart;

.field pos:Ljava/io/BufferedOutputStream;

.field final synthetic this$0:Lcom/android/emailcommon/smime/SMIMEHelper;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/smime/SMIMEHelper;Ljavax/mail/internet/MimeBodyPart;Ljava/io/PipedOutputStream;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->this$0:Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->encryptedPart:Ljavax/mail/internet/MimeBodyPart;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p3, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->encryptedPart:Ljavax/mail/internet/MimeBodyPart;

    iget-object v2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v0

    :try_start_6
    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v1, "EncryptionThread"

    const-string v2, "Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_8
    iget-object v2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/emailcommon/smime/SMIMEHelper$EncryptionThread;->pos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_1
    :goto_1
    throw v1

    :catch_7
    move-exception v0

    const-string v2, "EncryptionThread"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
