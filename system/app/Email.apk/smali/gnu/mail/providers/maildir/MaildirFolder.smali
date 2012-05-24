.class public final Lgnu/mail/providers/maildir/MaildirFolder;
.super Ljavax/mail/Folder;
.source "MaildirFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mail/providers/maildir/MaildirFolder$MaildirListFilter;,
        Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;,
        Lgnu/mail/providers/maildir/MaildirFolder$MaildirFilter;
    }
.end annotation


# static fields
.field static deliveryCount:J

.field static final filter:Ljava/io/FilenameFilter;

.field static permanentFlags:Ljavax/mail/Flags;


# instance fields
.field curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

.field inbox:Z

.field maildir:Ljava/io/File;

.field newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

.field tmpdir:Ljava/io/File;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirFilter;

    invoke-direct {v0}, Lgnu/mail/providers/maildir/MaildirFolder$MaildirFilter;-><init>()V

    sput-object v0, Lgnu/mail/providers/maildir/MaildirFolder;->filter:Ljava/io/FilenameFilter;

    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    sput-object v0, Lgnu/mail/providers/maildir/MaildirFolder;->permanentFlags:Ljavax/mail/Flags;

    const-wide/16 v0, 0x0

    sput-wide v0, Lgnu/mail/providers/maildir/MaildirFolder;->deliveryCount:J

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Store;Ljava/lang/String;ZZ)V
    .locals 4

    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    const-string v2, "tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->tmpdir:Ljava/io/File;

    new-instance v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    const-string v3, "new"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    new-instance v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    const-string v3, "cur"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->type:I

    iput-boolean p4, p0, Lgnu/mail/providers/maildir/MaildirFolder;->inbox:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "INBOX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljavax/mail/Store;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Store;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->inbox:Z

    if-eqz v0, :cond_0

    const-string v0, "INBOX"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v0, v0

    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v2, p1, -0x1

    if-ltz v2, :cond_0

    if-lt v2, v1, :cond_1

    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    if-ge v2, v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    aget-object v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    sub-int v0, v2, v0

    aget-object v0, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v0, v0

    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    invoke-virtual {p0, v0}, Lgnu/mail/providers/maildir/MaildirFolder;->statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v0, v0

    iget-object v1, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v1, v1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    array-length v1, v1

    add-int v2, v0, v1

    new-array v2, v2, [Ljavax/mail/Message;

    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .locals 2

    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    invoke-direct {v0, p0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->tmpdir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_6

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->newdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :cond_3
    :goto_1
    iget-object v3, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v3, v3, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->curdir:Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;

    iget-object v0, v0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    :goto_2
    if-nez v2, :cond_7

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Unable to create directories"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder;->maildir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Folder is read-only"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iput p1, p0, Ljavax/mail/Folder;->mode:I

    invoke-virtual {p0, v1}, Lgnu/mail/providers/maildir/MaildirFolder;->notifyConnectionListeners(I)V

    return-void

    :cond_9
    move v2, v0

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_0
.end method

.method statDir(Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iget-wide v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->timestamp:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    sget-object v1, Lgnu/mail/providers/maildir/MaildirFolder;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v10

    array-length v11, v10

    new-array v0, v11, [Lgnu/mail/providers/maildir/MaildirMessage;

    iput-object v0, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    move v6, v7

    :goto_1
    if-ge v6, v11, :cond_2

    aget-object v2, v10, v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v12, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    new-instance v0, Lgnu/mail/providers/maildir/MaildirMessage;

    add-int/lit8 v5, v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lgnu/mail/providers/maildir/MaildirMessage;-><init>(Lgnu/mail/providers/maildir/MaildirFolder;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v12, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    iput-wide v8, p1, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->timestamp:J

    goto :goto_0
.end method
