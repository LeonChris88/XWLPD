.class public final Lgnu/mail/providers/nntp/NNTPRootFolder;
.super Ljavax/mail/Folder;
.source "NNTPRootFolder.java"


# direct methods
.method constructor <init>(Lgnu/mail/providers/nntp/NNTPStore;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    new-instance v1, Lgnu/mail/providers/nntp/NNTPFolder;

    invoke-direct {v1, v0, p1}, Lgnu/mail/providers/nntp/NNTPFolder;-><init>(Lgnu/mail/providers/nntp/NNTPStore;Ljava/lang/String;)V

    return-object v1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/nntp/NNTPStore;

    iget-object v0, v0, Lgnu/mail/providers/nntp/NNTPStore;->connection:Lgnu/inet/nntp/NNTPConnection;

    invoke-virtual {v0}, Lgnu/inet/nntp/NNTPConnection;->getWelcome()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "Folder is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
