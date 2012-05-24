.class public Lcom/android/email/mail/store/Pop3Store;
.super Lcom/android/email/mail/Store;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Message;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
    }
.end annotation


# static fields
.field private static DEBUG_FORCE_SINGLE_LINE_UIDL:Z

.field private static DEBUG_LOG_RAW_STREAM:Z

.field private static final PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;


# instance fields
.field private final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v7, "pop3"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_0
    move-exception v5

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Invalid Pop3Store URI"

    invoke-direct {v7, v8, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x6e

    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v0, 0x1

    const/16 v1, 0x3e3

    :cond_2
    :goto_0
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "POP3"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    array-length v7, v6

    if-le v7, v9, :cond_3

    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    return v0
.end method

.method static synthetic access$500()[Lcom/android/emailcommon/mail/Flag;
    .locals 1

    sget-object v0, Lcom/android/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/android/emailcommon/mail/Flag;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, p0}, Lcom/android/email/mail/store/Pop3Store;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkSettings()Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    const-string v2, "INBOX"

    invoke-direct {v1, p0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    invoke-virtual {v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->checkSettings()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    return-object v0

    :catchall_0
    move-exception v2

    invoke-virtual {v1, v4}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    throw v2
.end method

.method public getAllFolders()[Lcom/android/emailcommon/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/emailcommon/mail/Folder;

    const/4 v1, 0x0

    const-string v2, "INBOX"

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Folder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public removeFolder(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public renameFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    return-void
.end method
