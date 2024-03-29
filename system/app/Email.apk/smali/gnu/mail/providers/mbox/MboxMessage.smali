.class public Lgnu/mail/providers/mbox/MboxMessage;
.super Lgnu/mail/providers/ReadOnlyMessage;
.source "MboxMessage.java"


# instance fields
.field protected fromLine:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lgnu/mail/providers/mbox/MboxFolder;Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lgnu/mail/providers/ReadOnlyMessage;-><init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V

    iput-object p2, p0, Lgnu/mail/providers/mbox/MboxMessage;->fromLine:Ljava/lang/String;

    invoke-direct {p0}, Lgnu/mail/providers/mbox/MboxMessage;->readStatusHeader()V

    return-void
.end method

.method private readStatusHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "Status"

    invoke-virtual {p0, v0}, Lgnu/mail/providers/mbox/MboxMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1}, Ljavax/mail/Flags;-><init>()V

    iput-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    aget-object v1, v0, v3

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    :cond_0
    aget-object v1, v0, v3

    const/16 v2, 0x4f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    :cond_1
    aget-object v1, v0, v3

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v2, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    :cond_2
    aget-object v0, v0, v3

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_0

    check-cast p1, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mail/providers/mbox/MboxMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getMessageNumber()I

    move-result v1

    invoke-virtual {p0}, Lgnu/mail/providers/mbox/MboxMessage;->getMessageNumber()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected updateHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0}, Lgnu/mail/providers/ReadOnlyMessage;->updateHeaders()V

    const-string v0, "Status"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Lgnu/mail/providers/mbox/MboxMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v2

    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v4, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v3

    iget-object v4, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v5, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v4, v5}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v4

    iget-object v5, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    sget-object v6, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v5, v6}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v5

    if-eqz v2, :cond_0

    const/16 v2, 0x52

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v3, :cond_1

    const/16 v2, 0x4f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz v4, :cond_2

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v5, :cond_3

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Status"

    invoke-virtual {p0, v0, v1}, Lgnu/mail/providers/mbox/MboxMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
