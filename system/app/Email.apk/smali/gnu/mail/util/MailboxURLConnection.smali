.class public Lgnu/mail/util/MailboxURLConnection;
.super Ljava/net/URLConnection;
.source "MailboxURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mail/util/MailboxURLConnection$FolderWriter;,
        Lgnu/mail/util/MailboxURLConnection$MessageWriter;
    }
.end annotation


# instance fields
.field protected folder:Ljavax/mail/Folder;

.field private headerKeys:Ljava/util/List;

.field protected headers:Ljava/util/Map;

.field protected message:Ljavax/mail/Message;

.field protected store:Ljavax/mail/Store;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method protected static asURLName(Ljava/net/URL;)Ljavax/mail/URLName;
    .locals 9

    const/4 v8, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {p0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    const/16 v5, 0x3a

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v8, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-eq v7, v8, :cond_0

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v6, v0

    :goto_1
    new-instance v0, Ljavax/mail/URLName;

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    move-object v5, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    move-object v5, v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x2f

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgnu/mail/util/MailboxURLConnection;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;)Ljavax/mail/Session;

    move-result-object v0

    iget-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->url:Ljava/net/URL;

    invoke-static {v1}, Lgnu/mail/util/MailboxURLConnection;->asURLName(Ljava/net/URL;)Ljavax/mail/URLName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->store:Ljavax/mail/Store;

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Ljavax/mail/Store;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v0

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljavax/mail/Folder;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v1

    iput-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    :cond_1
    iget-object v1, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-virtual {v1}, Ljavax/mail/Folder;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_8

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :goto_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-virtual {v3, v2}, Ljavax/mail/Folder;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v2

    iput-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/mail/Folder;->open(I)V

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Ljavax/mail/search/HeaderTerm;

    const-string v2, "Message-Id"

    invoke-direct {v1, v2, v0}, Ljavax/mail/search/HeaderTerm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-virtual {v2, v1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_5

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    instance-of v0, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Header;

    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;

    invoke-virtual {v0}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/mail/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/mail/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_7
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lgnu/mail/util/MailboxURLConnection;->connected:Z

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    goto :goto_0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lgnu/mail/util/MailboxURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mail/util/MailboxURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headerKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->headers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v0, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    if-nez v0, :cond_0

    new-instance v0, Lgnu/mail/util/MailboxURLConnection$FolderWriter;

    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->folder:Ljavax/mail/Folder;

    invoke-direct {v0, v2, v1}, Lgnu/mail/util/MailboxURLConnection$FolderWriter;-><init>(Ljavax/mail/Folder;Ljava/io/OutputStream;)V

    :goto_0
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "MailboxURLConnection.getInputStream"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0, v1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    return-object v0

    :cond_0
    new-instance v0, Lgnu/mail/util/MailboxURLConnection$MessageWriter;

    iget-object v2, p0, Lgnu/mail/util/MailboxURLConnection;->message:Ljavax/mail/Message;

    invoke-direct {v0, v2, v1}, Lgnu/mail/util/MailboxURLConnection$MessageWriter;-><init>(Ljavax/mail/Message;Ljava/io/OutputStream;)V

    goto :goto_0
.end method
