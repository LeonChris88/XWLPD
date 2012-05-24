.class public Lgnu/inet/imap/IMAPConnection;
.super Ljava/lang/Object;
.source "IMAPConnection.java"

# interfaces
.implements Lgnu/inet/imap/IMAPConstants;


# static fields
.field public static final IMAP_TRACE:Ljava/util/logging/Level;

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private alerts:Ljava/util/List;

.field private ansiDebug:Z

.field protected asyncResponses:Ljava/util/List;

.field protected in:Lgnu/inet/imap/IMAPResponseTokenizer;

.field protected out:Lgnu/inet/util/CRLFOutputStream;

.field private tagIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gnu.inet.imap"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lgnu/inet/util/TraceLevel;

    const-string v1, "imap"

    invoke-direct {v0, v1}, Lgnu/inet/util/TraceLevel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    return-void
.end method

.method private fetchImpl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "FETCH"

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getCount()I

    move-result v3

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v2

    new-instance v4, Lgnu/inet/imap/MessageStatus;

    invoke-direct {v4, v3, v2}, Lgnu/inet/imap/MessageStatus;-><init>(ILjava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v2}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    const-string v1, "OK"

    if-ne v3, v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lgnu/inet/imap/MessageStatus;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    :cond_4
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private processAlerts(Lgnu/inet/imap/IMAPResponse;)V
    .locals 2

    invoke-virtual {p1}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ALERT"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-virtual {p1}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x22

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public alertsPending()Z
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public examine(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "EXAMINE"

    invoke-virtual {p0, p1, v0}, Lgnu/inet/imap/IMAPConnection;->selectImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v0

    return-object v0
.end method

.method public fetch([I[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "FETCH"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lgnu/inet/imap/IMAPConnection;->fetchImpl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lgnu/inet/imap/MessageStatus;

    move-result-object v0

    return-object v0
.end method

.method public getAlerts()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, p0, Lgnu/inet/imap/IMAPConnection;->alerts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "LIST"

    invoke-virtual {p0, v0, p1, p2}, Lgnu/inet/imap/IMAPConnection;->listImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;

    move-result-object v0

    return-object v0
.end method

.method protected listImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lgnu/inet/imap/ListEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v10

    if-nez v9, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_7

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v11, "\\Noinferiors"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, 0x1

    :cond_2
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    const-string v11, "\\Noselect"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const-string v11, "\\Marked"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const-string v11, "\\Unmarked"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/16 v0, 0x20

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v9, "NIL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {v1}, Lgnu/inet/imap/IMAPConnection;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/inet/imap/IMAPConnection;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/inet/imap/UTF7imap;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lgnu/inet/imap/ListEntry;

    invoke-direct/range {v0 .. v6}, Lgnu/inet/imap/ListEntry;-><init>(Ljava/lang/String;CZZZZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    const-string v2, "OK"

    if-ne v1, v2, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/inet/imap/ListEntry;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_b
    new-instance v2, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_c
    new-instance v2, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected newTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/inet/imap/IMAPConnection;->tagIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/inet/imap/IMAPConnection;->tagIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noop()Lgnu/inet/imap/MailboxStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v4

    const-string v0, "NOOP"

    invoke-virtual {p0, v4, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lgnu/inet/imap/MailboxStatus;

    invoke-direct {v3}, Lgnu/inet/imap/MailboxStatus;-><init>()V

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/inet/imap/IMAPResponse;

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    :goto_1
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v1, :cond_0

    invoke-virtual {p0, v3, v6, v0}, Lgnu/inet/imap/IMAPConnection;->updateMailboxStatus(Lgnu/inet/imap/MailboxStatus;Ljava/lang/String;Lgnu/inet/imap/IMAPResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    const-string v2, "OK"

    if-ne v6, v2, :cond_5

    if-eqz v1, :cond_4

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method protected readResponse()Lgnu/inet/imap/IMAPResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->in:Lgnu/inet/imap/IMAPResponseTokenizer;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponseTokenizer;->next()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    const-string v2, "<EOF"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v1, p0, Lgnu/inet/imap/IMAPConnection;->ansiDebug:Z

    if-eqz v1, :cond_1

    sget-object v1, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->toANSIString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v2, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public search(Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v5, 0x20

    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "SEARCH"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    move v0, v1

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    if-lez v0, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v4, p2, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "SEARCH"

    if-ne v5, v2, :cond_5

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_2
    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Lgnu/inet/imap/IMAPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v2, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    const-string v2, "OK"

    if-ne v5, v2, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    :goto_3
    if-ge v1, v2, :cond_9

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_9
    return-object v3
.end method

.method public select(Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "SELECT"

    invoke-virtual {p0, p1, v0}, Lgnu/inet/imap/IMAPConnection;->selectImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;

    move-result-object v0

    return-object v0
.end method

.method protected selectImpl(Ljava/lang/String;Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lgnu/inet/imap/MailboxStatus;

    invoke-direct {v1}, Lgnu/inet/imap/MailboxStatus;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v3, v2}, Lgnu/inet/imap/IMAPConnection;->updateMailboxStatus(Lgnu/inet/imap/MailboxStatus;Ljava/lang/String;Lgnu/inet/imap/IMAPResponse;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    const-string v0, "OK"

    if-ne v3, v0, :cond_3

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "READ-WRITE"

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, v1, Lgnu/inet/imap/MailboxStatus;->readWrite:Z

    :cond_2
    return-object v1

    :cond_3
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lgnu/inet/imap/IMAPConnection;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lgnu/inet/imap/IMAPConnection;->IMAP_TRACE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/inet/util/CRLFOutputStream;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->writeln()V

    iget-object v0, p0, Lgnu/inet/imap/IMAPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->flush()V

    return-void
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lgnu/inet/imap/MailboxStatus;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->newTag()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "STATUS"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lgnu/inet/imap/UTF7imap;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/inet/imap/IMAPConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    if-lez v0, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lgnu/inet/imap/IMAPConnection;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lgnu/inet/imap/MailboxStatus;

    invoke-direct {v5}, Lgnu/inet/imap/MailboxStatus;-><init>()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPConnection;->readResponse()Lgnu/inet/imap/IMAPResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->isUntagged()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "STATUS"

    if-ne v6, v2, :cond_9

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_4

    move v2, v1

    :goto_2
    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_2

    :try_start_0
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v9, "MESSAGES"

    if-ne v8, v9, :cond_5

    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->messageCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_4
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_3

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_5
    :try_start_1
    const-string v9, "RECENT"

    if-ne v8, v9, :cond_6

    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v0, Lgnu/inet/imap/IMAPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    :try_start_2
    const-string v9, "UIDNEXT"

    if-ne v8, v9, :cond_7

    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->uidNext:I

    goto :goto_4

    :cond_7
    const-string v9, "UIDVALIDITY"

    if-ne v8, v9, :cond_8

    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->uidValidity:I

    goto :goto_4

    :cond_8
    const-string v9, "UNSEEN"

    if-ne v8, v9, :cond_3

    iput v0, v5, Lgnu/inet/imap/MailboxStatus;->firstUnreadMessage:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lgnu/inet/imap/IMAPConnection;->asyncResponses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0, v0}, Lgnu/inet/imap/IMAPConnection;->processAlerts(Lgnu/inet/imap/IMAPResponse;)V

    const-string v1, "OK"

    if-ne v6, v1, :cond_b

    return-object v5

    :cond_b
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Lgnu/inet/imap/IMAPException;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPResponse;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lgnu/inet/imap/IMAPException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method protected updateMailboxStatus(Lgnu/inet/imap/MailboxStatus;Ljava/lang/String;Lgnu/inet/imap/IMAPResponse;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    const-string v1, "OK"

    if-ne p2, v1, :cond_5

    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_1

    move v2, v0

    :goto_0
    move v3, v0

    move v5, v0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v3, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_3

    check-cast v1, Ljava/lang/String;

    :try_start_0
    const-string v7, "UNSEEN"

    if-ne v0, v7, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lgnu/inet/imap/MailboxStatus;->firstUnreadMessage:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v1, v4

    :goto_2
    move v3, v0

    move v5, v1

    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v7, "UIDVALIDITY"

    if-ne v0, v7, :cond_9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p1, Lgnu/inet/imap/MailboxStatus;->uidValidity:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v1, v4

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    instance-of v7, v1, Ljava/util/List;

    if-eqz v7, :cond_0

    const-string v7, "PERMANENTFLAGS"

    if-ne v0, v7, :cond_0

    check-cast v1, Ljava/util/List;

    iput-object v1, p1, Lgnu/inet/imap/MailboxStatus;->permanentFlags:Ljava/util/List;

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_4
    return v4

    :cond_5
    const-string v1, "EXISTS"

    if-ne p2, v1, :cond_6

    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getCount()I

    move-result v0

    iput v0, p1, Lgnu/inet/imap/MailboxStatus;->messageCount:I

    goto :goto_4

    :cond_6
    const-string v1, "RECENT"

    if-ne p2, v1, :cond_7

    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getCount()I

    move-result v0

    iput v0, p1, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I

    goto :goto_4

    :cond_7
    const-string v1, "FLAGS"

    if-ne p2, v1, :cond_8

    invoke-virtual {p3}, Lgnu/inet/imap/IMAPResponse;->getResponseCode()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lgnu/inet/imap/MailboxStatus;->flags:Ljava/util/List;

    goto :goto_4

    :cond_8
    move v4, v0

    goto :goto_4

    :cond_9
    move v0, v3

    move v1, v5

    goto :goto_2
.end method
