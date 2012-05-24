.class public final Lgnu/mail/providers/mbox/MboxStore;
.super Ljavax/mail/Store;
.source "MboxStore.java"

# interfaces
.implements Lgnu/mail/treeutil/StatusSource;


# static fields
.field static final MBOX_TRACE:Ljava/util/logging/Level;

.field static attemptFallback:Z

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field root:Ljava/io/File;

.field private statusListeners:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gnu.mail.util.providers.mbox"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/mail/providers/mbox/MboxStore;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lgnu/inet/util/TraceLevel;

    const-string v1, "mbox"

    invoke-direct {v0, v1}, Lgnu/inet/util/TraceLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mail/providers/mbox/MboxStore;->MBOX_TRACE:Ljava/util/logging/Level;

    const/4 v0, 0x1

    sput-boolean v0, Lgnu/mail/providers/mbox/MboxStore;->attemptFallback:Z

    return-void
.end method

.method private getFolder(Ljava/lang/String;Z)Ljavax/mail/Folder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_d

    if-eqz p1, :cond_d

    const-string v1, "\\\\\\"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    if-eqz v1, :cond_1

    new-instance v0, Lgnu/mail/providers/mbox/MboxFolder;

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-direct {v0, p0, v1, v5}, Lgnu/mail/providers/mbox/MboxFolder;-><init>(Ljavax/mail/Store;Ljava/io/File;Z)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-eq v2, v4, :cond_3

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p2, :cond_6

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_6
    const-string v2, "INBOX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lgnu/mail/providers/mbox/MboxStore;->root:Ljava/io/File;

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v2, "mail.mbox.inbox"

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lgnu/mail/providers/mbox/MboxStore;->attemptFallback:Z

    if-eqz v1, :cond_a

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v1, v4, :cond_a

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v1, v4, :cond_9

    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "user.name"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/var/mail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/var/spool/mail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "user.home"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string v2, "Mailbox"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    new-instance v1, Lgnu/mail/providers/mbox/MboxFolder;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lgnu/mail/providers/mbox/MboxFolder;-><init>(Ljavax/mail/Store;Ljava/io/File;Z)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_b
    new-instance v1, Lgnu/mail/providers/mbox/MboxFolder;

    invoke-direct {v1, p0, v0, v5}, Lgnu/mail/providers/mbox/MboxFolder;-><init>(Ljavax/mail/Store;Ljava/io/File;Z)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_c
    move-object v0, v1

    goto :goto_2

    :cond_d
    move-object v1, p1

    goto/16 :goto_0
.end method


# virtual methods
.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/mail/providers/mbox/MboxStore;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgnu/mail/providers/mbox/MboxStore;->getFolder(Ljava/lang/String;Z)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method log(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lgnu/mail/providers/mbox/MboxStore;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/mail/providers/mbox/MboxStore;->MBOX_TRACE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method protected processStatusEvent(Lgnu/mail/treeutil/StatusEvent;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lgnu/mail/providers/mbox/MboxStore;->statusListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lgnu/mail/providers/mbox/MboxStore;->statusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lgnu/mail/treeutil/StatusListener;

    iget-object v3, p0, Lgnu/mail/providers/mbox/MboxStore;->statusListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lgnu/mail/treeutil/StatusEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_0
    :pswitch_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lgnu/mail/treeutil/StatusListener;->statusOperationStarted(Lgnu/mail/treeutil/StatusEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    :pswitch_1
    array-length v1, v2

    if-ge v0, v1, :cond_0

    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lgnu/mail/treeutil/StatusListener;->statusProgressUpdate(Lgnu/mail/treeutil/StatusEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    :pswitch_2
    array-length v1, v2

    if-ge v0, v1, :cond_0

    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Lgnu/mail/treeutil/StatusListener;->statusOperationEnded(Lgnu/mail/treeutil/StatusEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
