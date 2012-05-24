.class public Lgnu/inet/imap/IMAPResponse;
.super Ljava/lang/Object;
.source "IMAPResponse.java"


# instance fields
.field protected code:Ljava/util/List;

.field protected count:I

.field protected id:Ljava/lang/String;

.field protected mailbox:Ljava/lang/String;

.field protected tag:Ljava/lang/String;

.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    iput-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isContinuation()Z
    .locals 2

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    const-string v1, "+"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUntagged()Z
    .locals 2

    iget-object v0, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toANSIString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, " \u001b[00;31m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPResponse;->isContinuation()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " \u001b[01m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " \u001b[00;35m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    if-eqz v1, :cond_3

    const-string v1, " \u001b[00;36m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, " \u001b[00;33m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\u001b[00m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lgnu/inet/imap/IMAPResponse;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lgnu/inet/imap/IMAPResponse;->isContinuation()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->mailbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->code:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/IMAPResponse;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
