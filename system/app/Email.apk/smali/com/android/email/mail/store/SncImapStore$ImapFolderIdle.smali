.class Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;
.super Lcom/android/email/mail/store/SncImapStore$ImapFolder;
.source "SncImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SncImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapFolderIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/SncImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/SncImapStore;Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-direct {p0, p2, p3}, Lcom/android/email/mail/store/SncImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public startIdling(Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startIdling | Cap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    const-string v8, "IDLE"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/SncImapStore;->isCapabilitySupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/SncImapStore;->getConnection()Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    :cond_0
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    iget-object v7, v7, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    iget-object v7, v7, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v8, 0xdbba0

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    :cond_1
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v8, "IDLE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    const/4 v2, 0x0

    :cond_2
    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-static {v7}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->access$100(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    const-string v8, "EXPUNGE"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "IDLE"

    const-string v8, "Got EXPUNGE"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_3
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    const-string v7, "IDLE"

    const-string v8, "Got response for IDLE"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    const/4 v7, 0x1

    :try_start_1
    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    const-string v7, "IDLE"

    const-string v8, "Got EXISTS after EXPUNGE "

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageDeleted(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const/16 v8, 0x55

    invoke-virtual {p0, v7, v8, v5}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    throw v7

    :cond_5
    :try_start_3
    const-string v7, "IDLE"

    const-string v8, "Got EXISTS"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageReceived()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_4
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v7, v3}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    const/4 v7, 0x1

    :try_start_5
    const-string v8, "FETCH"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "IDLE"

    const-string v8, "Got FETCH"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageFlagChanged(Lcom/android/emailcommon/mail/Message;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    :try_start_6
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v7, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const/16 v8, 0x26

    invoke-virtual {p0, v7, v8, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :try_start_7
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "IDLE"

    const-string v8, "Got continuation request"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v7, "IDLE"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TODO - Unexpected response - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_1

    :cond_b
    const-string v7, "IDLE"

    const-string v8, "IDLE not supported but required"

    invoke-static {v7, v8}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x18

    const-string v9, "IDLE not supported but required"

    invoke-direct {v7, v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method public stopIdling()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    const-string v3, "DONE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->sendContinuationCommand(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "IDLE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/SncImapStore$ImapConnection;

    invoke-virtual {p0, v2, v1}, Lcom/android/email/mail/store/SncImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/SncImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2

    :catch_1
    move-exception v0

    const-string v2, "IDLE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
