.class public Lcom/android/email/mail/transport/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"

# interfaces
.implements Lcom/android/email/mail/Transport;


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private mConnectionSecurity:I

.field private mDebugLabel:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;

.field private mTrustCertificates:Z

.field private mUserInfoParts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    return-void
.end method

.method private verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p2, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate hostname not useable for server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    return v0
.end method

.method public canTrySslSecurity()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canTryTlsSecurity()Z
    .locals 2

    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .locals 2

    const v1, 0xffff

    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    :cond_0
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    return v0
.end method

.method public getUserInfoParts()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newInstanceWithConfiguration()Lcom/android/email/mail/Transport;
    .locals 2

    new-instance v0, Lcom/android/email/mail/transport/MailTransport;

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    :cond_0
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    iget-boolean v1, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    iput-boolean v1, v0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    return-object v0
.end method

.method public open()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/CertificateValidationException;
        }
    .end annotation

    const/4 v8, 0x1

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v6

    invoke-direct {v3, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v5

    invoke-static {v5}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    :goto_0
    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const/16 v6, 0x61a8

    invoke-virtual {v5, v3, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/email/mail/transport/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_1
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/16 v7, 0x200

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v6, 0xea60

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open :: socket open"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    iput-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v5, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v4

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "Email"

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v5

    :catch_2
    move-exception v1

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v5

    :catch_3
    move-exception v2

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "Email"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v5, "Email"

    const-string v6, "socket open NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v8, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, -0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v2, v4

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v7, :cond_2

    int-to-char v5, v0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    int-to-char v5, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    :cond_2
    if-ne v0, v7, :cond_3

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "Email"

    const-string v6, "End of stream reached while trying to read line."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_5
    int-to-char v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public reopenTls()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v4, 0xea60

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "Email"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3

    :catch_2
    move-exception v1

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public setSecurity(IZ)V
    .locals 0

    iput p1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    iput-boolean p2, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public setUri(Ljava/net/URI;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    iput p2, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    sget-boolean v1, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-nez v1, :cond_1

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_1
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
