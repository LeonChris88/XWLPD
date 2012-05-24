.class public final Lgnu/mail/providers/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "POP3Store.java"


# instance fields
.field connection:Lgnu/inet/pop3/POP3Connection;

.field root:Lgnu/mail/providers/pop3/POP3Folder;


# virtual methods
.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Store;->root:Lgnu/mail/providers/pop3/POP3Folder;

    if-nez v0, :cond_0

    new-instance v0, Lgnu/mail/providers/pop3/POP3Folder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgnu/mail/providers/pop3/POP3Folder;-><init>(Ljavax/mail/Store;I)V

    iput-object v0, p0, Lgnu/mail/providers/pop3/POP3Store;->root:Lgnu/mail/providers/pop3/POP3Folder;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Store;->root:Lgnu/mail/providers/pop3/POP3Folder;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Store;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/mail/Folder;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    invoke-virtual {v1}, Lgnu/inet/pop3/POP3Connection;->noop()V

    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
