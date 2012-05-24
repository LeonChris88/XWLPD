.class Lcom/android/email/mail/store/SncImapStore$ImapConnection;
.super Ljava/lang/Object;
.source "SncImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SncImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapConnection"
.end annotation


# instance fields
.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field protected mTransport:Lcom/android/email/mail/Transport;

.field final synthetic this$0:Lcom/android/email/mail/store/SncImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/SncImapStore;)V
    .locals 2

    iput-object p1, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/SncImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    return-object v0
.end method

.method private createParser()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    const-string v0, "SncImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT@CONN closed the connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    :cond_0
    return-void
.end method

.method public destroyResponses()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    :cond_0
    return-void
.end method

.method public executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v5, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    new-instance v5, Lcom/android/email/mail/store/SncImapStore$ImapException;

    invoke-direct {v5, v4, v0}, Lcom/android/email/mail/store/SncImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    :cond_1
    return-object v2
.end method

.method isTransportOpenForTest()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logLastDiscourse()V
    .locals 3

    const-string v0, "SncImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Most Recent commands of this connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    return-void
.end method

.method public open()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v12}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v12, v12, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v12}, Lcom/android/email/mail/Transport;->newInstanceWithConfiguration()Lcom/android/email/mail/Transport;

    move-result-object v12

    iput-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    :cond_1
    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v12}, Lcom/android/email/mail/Transport;->open()V

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v13, 0xea60

    invoke-interface {v12, v13}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->createParser()V

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v1, 0x0

    const-string v12, "CAPABILITY"

    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v12, 0x0

    const-string v13, "CAPABILITY"

    invoke-virtual {v8, v12, v13}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v1, v8

    :cond_3
    if-nez v1, :cond_4

    new-instance v11, Lcom/android/emailcommon/mail/MessagingException;

    const-string v12, "Invalid CAPABILITY response received"

    invoke-direct {v11, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v11, "SncImapStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to open connection : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v11

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    throw v11

    :cond_4
    :try_start_2
    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v12}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "STARTTLS"

    invoke-virtual {v1, v12}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v12, "STARTTLS"

    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v12}, Lcom/android/email/mail/Transport;->reopenTls()V

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v13, 0xea60

    invoke-interface {v12, v13}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    invoke-direct {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->createParser()V

    :cond_5
    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v12, v12, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v12}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/email/esp/ServiceProvider;->isProviderTypeYahoo(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v12, v12, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v12}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/email/esp/ServiceProvider;->isProviderTypeAol(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    sget-object v12, Lcom/android/email/mail/store/SncImapStore;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-static {v13}, Lcom/android/email/mail/store/SncImapStore;->access$200(Lcom/android/email/mail/store/SncImapStore;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v14, v14, Lcom/android/email/mail/store/SncImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v14}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v1}, Lcom/android/email/mail/store/SncImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/email/mail/store/imap/ImapResponse;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ID ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/mail/store/SncImapStore;->access$302(Lcom/android/email/mail/store/SncImapStore;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-static {v12}, Lcom/android/email/mail/store/SncImapStore;->access$300(Lcom/android/email/mail/store/SncImapStore;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    if-eqz v12, :cond_8

    :try_start_3
    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-static {v12}, Lcom/android/email/mail/store/SncImapStore;->access$300(Lcom/android/email/mail/store/SncImapStore;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/store/SncImapStore$ImapException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    :goto_1
    :try_start_4
    iget-object v12, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-static {v12}, Lcom/android/email/mail/store/SncImapStore;->access$400(Lcom/android/email/mail/store/SncImapStore;)Ljava/lang/String;

    move-result-object v12

    sget-boolean v13, Lcom/android/email/EmailLog;->DEBUG_LOG_PRIVACY:Z

    if-nez v13, :cond_9

    const/4 v11, 0x1

    :cond_9
    invoke-virtual {p0, v12, v11}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v11, v11, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-nez v11, :cond_e

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v11, 0x0

    const-string v12, "CAPABILITY"

    invoke-virtual {v8, v11, v12}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    :cond_b
    iget-object v11, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v11, v11, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-nez v11, :cond_d

    const-string v11, "CAPABILITY"

    invoke-virtual {p0, v11}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v11, 0x0

    const-string v12, "CAPABILITY"

    invoke-virtual {v8, v11, v12}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    :cond_d
    iget-object v11, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v11, v11, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    if-eqz v11, :cond_e

    const-string v11, "SncImapStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Capability : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    iget-object v13, v13, Lcom/android/email/mail/store/SncImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/store/SncImapStore$ImapException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_e
    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->destroyResponses()V

    goto/16 :goto_0

    :cond_f
    :try_start_5
    sget-boolean v11, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v11, :cond_10

    const-string v11, "Z7App"

    const-string v12, "TLS not supported but required"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    new-instance v11, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v12, 0x2

    invoke-direct {v11, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v5

    :try_start_6
    const-string v11, "SncImapStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to open connection : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v4

    :try_start_7
    sget-boolean v12, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string v12, "Z7App"

    invoke-virtual {v4}, Lcom/android/email/mail/store/SncImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v4

    sget-boolean v11, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v11, :cond_11

    const-string v11, "Z7App"

    invoke-virtual {v4}, Lcom/android/email/mail/store/SncImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v4}, Lcom/android/email/mail/store/SncImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_13

    :cond_12
    const/4 v10, 0x5

    const-string v0, "IMAP - Authentication Failed"

    :goto_2
    new-instance v11, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v11, v10, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v11

    :cond_13
    const/16 v10, 0x30

    goto :goto_2

    :catch_4
    move-exception v7

    new-instance v11, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v12, "IMAP - Authentication Failed"

    invoke-direct {v11, v12, v7}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_5
    move-exception v12

    goto/16 :goto_1
.end method

.method public readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->open()V

    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/SncImapStore;

    invoke-static {v2}, Lcom/android/email/mail/store/SncImapStore;->access$500(Lcom/android/email/mail/store/SncImapStore;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_1

    const-string v2, "[IMAP command redacted]"

    :goto_0
    invoke-interface {v3, v0, v2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_0

    const-string v0, "[IMAP command redacted]"

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendContinuationCommand(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->open()V

    iget-object v1, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_1

    const-string v0, "[IMAP command redacted]"

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/mail/store/SncImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_0

    const-string p1, "[IMAP command redacted]"

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
