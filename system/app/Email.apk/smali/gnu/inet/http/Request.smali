.class public Lgnu/inet/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field protected authenticator:Lgnu/inet/http/Authenticator;

.field protected final connection:Lgnu/inet/http/HTTPConnection;

.field private dispatched:Z

.field protected final method:Ljava/lang/String;

.field nonce:[B

.field protected final path:Ljava/lang/String;

.field protected requestBodyNegotiationThreshold:I

.field protected requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

.field protected final requestHeaders:Lgnu/inet/http/Headers;

.field protected responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

.field protected responseHeaderHandlers:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Lgnu/inet/http/HTTPConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    iput-object p2, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    iput-object p3, p0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    new-instance v0, Lgnu/inet/http/Headers;

    invoke-direct {v0}, Lgnu/inet/http/Headers;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/Request;->responseHeaderHandlers:Ljava/util/Map;

    const/16 v0, 0x1000

    iput v0, p0, Lgnu/inet/http/Request;->requestBodyNegotiationThreshold:I

    return-void
.end method


# virtual methods
.method authenticate(Lgnu/inet/http/Response;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "WWW-Authenticate"

    invoke-virtual {p1, v0}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p1, v0}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_1

    move-object v1, v0

    :goto_0
    const-string v3, "Basic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->parseAuthParams(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    const-string v2, "realm"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    invoke-interface {v2, v0, p2}, Lgnu/inet/http/Authenticator;->getCredentials(Ljava/lang/String;I)Lgnu/inet/http/Credentials;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lgnu/inet/util/BASE64;->encode([B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v3, "Digest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->parseAuthParams(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    const-string v2, "realm"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "qop"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "algorithm"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/inet/http/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    invoke-interface {v0, v2, p2}, Lgnu/inet/http/Authenticator;->getCredentials(Ljava/lang/String;I)Lgnu/inet/http/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getUsername()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v8, v3}, Lgnu/inet/http/HTTPConnection;->incrementNonce(Ljava/lang/String;)V

    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/16 v11, 0x3a

    aput-byte v11, v9, v10

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    const-string v10, "US-ASCII"

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v10, "US-ASCII"

    invoke-virtual {v2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v10, "US-ASCII"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v10, "md5-sess"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lgnu/inet/http/Request;->generateNonce()[B

    move-result-object v5

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "US-ASCII"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    iget-object v5, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    const-string v10, "US-ASCII"

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v5, "US-ASCII"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    const-string v5, "auth-int"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    :cond_4
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/inet/http/Request;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    const-string v10, "US-ASCII"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "US-ASCII"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "auth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "auth-int"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0, v3}, Lgnu/inet/http/Request;->getNonceCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/inet/http/Request;->generateNonce()[B

    move-result-object v10

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v11, "US-ASCII"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "US-ASCII"

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    :cond_6
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    const-string v0, "US-ASCII"

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " username=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " realm=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nonce=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public dispatch()Lgnu/inet/http/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lgnu/inet/http/Request;->dispatched:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "request already dispatched"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->getVersion()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    invoke-interface {v0}, Lgnu/inet/http/RequestBodyWriter;->getContentLength()I

    move-result v0

    iget v1, p0, Lgnu/inet/http/Request;->requestBodyNegotiationThreshold:I

    if-le v0, v1, :cond_2

    const-string v1, "Expect"

    const-string v2, "100-continue"

    invoke-virtual {p0, v1, v2}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    move v4, v3

    move v6, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lgnu/inet/http/HTTPConnection;->fireRequestEvent(ILgnu/inet/http/Request;)V

    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    new-instance v10, Lgnu/inet/util/LineInputStream;

    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->isUsingProxy()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CONNECT"

    iget-object v11, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lgnu/inet/http/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v11, 0x20

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0}, Lgnu/inet/http/Headers;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v1, v0}, Lgnu/inet/http/Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ": "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->close()V

    throw v0

    :cond_2
    const-string v1, "Content-Length"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    move v4, v3

    move v6, v0

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v0, "\r\n"

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    const/16 v0, 0x1000

    new-array v1, v0, [B

    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    invoke-interface {v0}, Lgnu/inet/http/RequestBodyWriter;->reset()V

    move v0, v3

    :cond_4
    iget-object v11, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    invoke-interface {v11, v1}, Lgnu/inet/http/RequestBodyWriter;->write([B)I

    move-result v11

    if-lez v11, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v11}, Ljava/io/OutputStream;->write([BII)V

    :cond_5
    add-int/2addr v0, v11

    if-le v11, v7, :cond_6

    if-lt v0, v6, :cond_4

    :cond_6
    const-string v0, "\r\n"

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lgnu/inet/http/HTTPConnection;->fireRequestEvent(ILgnu/inet/http/Request;)V

    invoke-virtual {p0, v10}, Lgnu/inet/http/Request;->readResponse(Lgnu/inet/util/LineInputStream;)Lgnu/inet/http/Response;

    move-result-object v9

    invoke-virtual {v9}, Lgnu/inet/http/Response;->getCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    if-eqz v1, :cond_8

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v9, v4}, Lgnu/inet/http/Request;->authenticate(Lgnu/inet/http/Response;I)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v0

    move v0, v2

    move v2, v5

    :goto_2
    if-nez v2, :cond_9

    return-object v9

    :cond_8
    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    if-eqz v2, :cond_a

    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    const-string v1, "Expect"

    invoke-virtual {v0, v1}, Lgnu/inet/http/Headers;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content-Length"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v3

    move v1, v4

    move v2, v5

    goto :goto_2

    :cond_9
    move v2, v0

    move v4, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    move v1, v4

    move v2, v3

    goto :goto_2

    :cond_b
    move v1, v0

    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_c
    move v2, v3

    move v4, v3

    move v6, v7

    goto/16 :goto_0
.end method

.method generateNonce()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/http/Request;->nonce:[B

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/Request;->nonce:[B

    :cond_0
    iget-object v0, p0, Lgnu/inet/http/Request;->nonce:[B

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lgnu/inet/http/Headers;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    return-object v0
.end method

.method getNonceCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0, p1}, Lgnu/inet/http/HTTPConnection;->getNonceCount(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x8

    :goto_0
    if-lez v0, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleSetCookie(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v2}, Lgnu/inet/http/HTTPConnection;->getCookieManager()Lgnu/inet/http/CookieManager;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v2}, Lgnu/inet/http/HTTPConnection;->getHostName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    const/4 v3, -0x1

    if-eq v15, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    const/4 v4, 0x0

    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v11, 0x0

    const/4 v3, 0x0

    move v13, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v2

    :goto_0
    move/from16 v0, v16

    if-gt v13, v0, :cond_0

    move/from16 v0, v16

    if-ne v13, v0, :cond_3

    const/4 v2, 0x0

    move v12, v2

    :goto_1
    const/16 v2, 0x22

    if-ne v12, v2, :cond_5

    if-nez v11, :cond_4

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    move v11, v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v12, v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    if-nez v11, :cond_12

    const/16 v2, 0x3d

    if-ne v12, v2, :cond_6

    if-nez v3, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v11

    goto :goto_2

    :cond_6
    const/16 v2, 0x3b

    if-eq v12, v2, :cond_7

    move/from16 v0, v16

    if-eq v13, v0, :cond_7

    const/16 v2, 0x2c

    if-ne v12, v2, :cond_11

    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgnu/inet/http/Request;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v10, :cond_b

    move-object v4, v2

    :goto_3
    const/4 v10, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    const/16 v2, 0x2c

    if-ne v12, v2, :cond_9

    :cond_8
    new-instance v2, Lgnu/inet/http/Cookie;

    invoke-direct/range {v2 .. v9}, Lgnu/inet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;)V

    invoke-interface {v14, v2}, Lgnu/inet/http/CookieManager;->setCookie(Lgnu/inet/http/Cookie;)V

    :cond_9
    const/16 v2, 0x2c

    if-ne v12, v2, :cond_14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v2}, Lgnu/inet/http/HTTPConnection;->getHostName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    const/4 v7, -0x1

    if-eq v15, v7, :cond_a

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_a
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    move-object v7, v2

    move v2, v11

    move-object/from16 v20, v10

    move-object v10, v3

    move-object/from16 v3, v20

    goto :goto_2

    :cond_b
    const-string v18, "Comment"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object v5, v2

    move-object v3, v10

    goto :goto_3

    :cond_c
    const-string v18, "Domain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object v6, v2

    move-object v3, v10

    goto :goto_3

    :cond_d
    const-string v18, "Path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object v7, v2

    move-object v3, v10

    goto :goto_3

    :cond_e
    const-string v18, "Secure"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/4 v8, 0x1

    move-object v3, v10

    goto :goto_3

    :cond_f
    const-string v18, "Max-Age"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v9, 0xd

    invoke-virtual {v3, v9, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    move-object v3, v10

    goto/16 :goto_3

    :cond_10
    const-string v18, "Expires"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_13

    new-instance v18, Lgnu/inet/http/HTTPDateFormat;

    invoke-direct/range {v18 .. v18}, Lgnu/inet/http/HTTPDateFormat;-><init>()V

    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v3, v10

    goto/16 :goto_3

    :catch_0
    move-exception v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v11

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v11

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v11

    goto/16 :goto_2

    :cond_13
    move-object v3, v10

    goto/16 :goto_3

    :cond_14
    move-object v2, v7

    goto/16 :goto_4
.end method

.method notifyHeaderHandlers(Lgnu/inet/http/Headers;)V
    .locals 4

    invoke-virtual {p1}, Lgnu/inet/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Set-Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lgnu/inet/http/Request;->handleSetCookie(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lgnu/inet/http/Request;->responseHeaderHandlers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/inet/http/ResponseHeaderHandler;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lgnu/inet/http/ResponseHeaderHandler;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method parseAuthParams(Ljava/lang/String;)Ljava/util/Properties;
    .locals 11

    const/4 v2, 0x0

    const/16 v10, 0x20

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    move v4, v3

    move v0, v3

    move-object v1, v2

    :goto_0
    if-ge v4, v5, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    :cond_3
    if-ne v8, v10, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/inet/http/Request;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v1, v2

    goto :goto_1

    :cond_4
    const/16 v9, 0x2c

    if-ne v8, v9, :cond_5

    add-int/lit8 v9, v5, -0x1

    if-ge v4, v9, :cond_0

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v10, :cond_0

    :cond_5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v7
.end method

.method readResponse(Lgnu/inet/util/LineInputStream;)Lgnu/inet/http/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Peer closed connection"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "HTTP/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x5

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v2, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lgnu/inet/http/Headers;

    invoke-direct {v6}, Lgnu/inet/http/Headers;-><init>()V

    invoke-virtual {v6, p1}, Lgnu/inet/http/Headers;->parse(Ljava/io/InputStream;)V

    invoke-virtual {p0, v6}, Lgnu/inet/http/Request;->notifyHeaderHandlers(Lgnu/inet/http/Headers;)V

    div-int/lit8 v4, v3, 0x64

    new-instance v0, Lgnu/inet/http/Response;

    invoke-direct/range {v0 .. v6}, Lgnu/inet/http/Response;-><init>(IIIILjava/lang/String;Lgnu/inet/http/Headers;)V

    const-string v1, "HEAD"

    iget-object v2, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "OPTIONS"

    iget-object v2, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    packed-switch v3, :pswitch_data_0

    iget-object v1, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    iget-object v2, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    invoke-interface {v2, p0, v0}, Lgnu/inet/http/ResponseBodyReader;->accept(Lgnu/inet/http/Request;Lgnu/inet/http/Response;)Z

    move-result v2

    if-nez v2, :cond_4

    move v1, v7

    :cond_4
    invoke-virtual {p0, v0, p1, v1}, Lgnu/inet/http/Request;->readResponseBody(Lgnu/inet/http/Response;Ljava/io/InputStream;Z)V

    :cond_5
    :pswitch_0
    return-object v0

    :cond_6
    move v1, v7

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method readResponseBody(Lgnu/inet/http/Response;Ljava/io/InputStream;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/16 v0, 0x1000

    new-array v7, v0, [B

    const/4 v0, 0x0

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "chunked"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lgnu/inet/http/Headers;

    invoke-direct {v0}, Lgnu/inet/http/Headers;-><init>()V

    new-instance v1, Lgnu/inet/http/ChunkedInputStream;

    invoke-direct {v1, p2, v0}, Lgnu/inet/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lgnu/inet/http/Headers;)V

    move-object p2, v1

    move v1, v2

    :goto_0
    const-string v3, "Content-Encoding"

    invoke-virtual {p1, v3}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "identity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "gzip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v3

    :cond_0
    :goto_1
    const-string v3, "close"

    const-string v4, "Connection"

    invoke-virtual {p0, v4}, Lgnu/inet/http/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "close"

    const-string v4, "Connection"

    invoke-virtual {p1, v4}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    iget v3, v3, Lgnu/inet/http/HTTPConnection;->majorVersion:I

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    iget v3, v3, Lgnu/inet/http/HTTPConnection;->minorVersion:I

    if-eqz v3, :cond_3

    :cond_1
    iget v3, p1, Lgnu/inet/http/Response;->majorVersion:I

    if-ne v3, v6, :cond_2

    iget v3, p1, Lgnu/inet/http/Response;->minorVersion:I

    if-eqz v3, :cond_3

    :cond_2
    if-ne v1, v2, :cond_a

    :cond_3
    move v4, v6

    :goto_2
    if-nez v1, :cond_b

    if-eqz v4, :cond_4

    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->closeConnection()V

    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    iget-object v1, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    invoke-interface {v1}, Lgnu/inet/http/ResponseBodyReader;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/inet/http/Headers;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->notifyHeaderHandlers(Lgnu/inet/http/Headers;)V

    :cond_6
    return-void

    :cond_7
    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Lgnu/inet/http/Response;->getIntHeader(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_8
    const-string v4, "deflate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v3

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Content-Encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v4, v5

    goto :goto_2

    :cond_b
    if-le v1, v2, :cond_d

    move v3, v1

    :goto_4
    array-length v8, v7

    if-le v3, v8, :cond_c

    array-length v3, v7

    :cond_c
    if-le v3, v2, :cond_4

    invoke-virtual {p2, v7, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_e

    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->closeConnection()V

    goto :goto_3

    :cond_d
    array-length v3, v7

    goto :goto_4

    :cond_e
    if-eqz p3, :cond_f

    iget-object v8, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    invoke-interface {v8, v7, v5, v3}, Lgnu/inet/http/ResponseBodyReader;->read([BII)V

    :cond_f
    if-le v1, v2, :cond_c

    sub-int/2addr v1, v3

    if-ge v1, v6, :cond_c

    if-eqz v4, :cond_4

    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->closeConnection()V

    goto :goto_3
.end method

.method public setAuthenticator(Lgnu/inet/http/Authenticator;)V
    .locals 0

    iput-object p1, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1, p2}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRequestBodyWriter(Lgnu/inet/http/RequestBodyWriter;)V
    .locals 0

    iput-object p1, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    return-void
.end method

.method public setResponseBodyReader(Lgnu/inet/http/ResponseBodyReader;)V
    .locals 0

    iput-object p1, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    return-void
.end method

.method toHexString([B)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x10

    const/4 v0, 0x0

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [C

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v5, v2, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    aput-char v5, v3, v0

    add-int/lit8 v0, v4, 0x1

    rem-int/lit8 v2, v2, 0x10

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
