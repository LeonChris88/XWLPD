.class public Lgnu/inet/imap/ListEntry;
.super Ljava/lang/Object;
.source "ListEntry.java"

# interfaces
.implements Lgnu/inet/imap/IMAPConstants;


# instance fields
.field private delimiter:C

.field private mailbox:Ljava/lang/String;

.field private marked:Z

.field private noinferiors:Z

.field private noselect:Z

.field private unmarked:Z


# direct methods
.method constructor <init>(Ljava/lang/String;CZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/imap/ListEntry;->mailbox:Ljava/lang/String;

    iput-char p2, p0, Lgnu/inet/imap/ListEntry;->delimiter:C

    iput-boolean p3, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    iput-boolean p4, p0, Lgnu/inet/imap/ListEntry;->noselect:Z

    iput-boolean p5, p0, Lgnu/inet/imap/ListEntry;->marked:Z

    iput-boolean p6, p0, Lgnu/inet/imap/ListEntry;->unmarked:Z

    return-void
.end method

.method private static conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    :cond_1
    return p1
.end method


# virtual methods
.method public getDelimiter()C
    .locals 1

    iget-char v0, p0, Lgnu/inet/imap/ListEntry;->delimiter:C

    return v0
.end method

.method public isNoinferiors()Z
    .locals 1

    iget-boolean v0, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->noselect:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->marked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lgnu/inet/imap/ListEntry;->unmarked:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "(\u001b[00;35m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->noinferiors:Z

    const-string v3, "\\Noinferiors"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->noselect:Z

    const-string v3, "\\Noselect"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->marked:Z

    const-string v3, "\\Marked"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lgnu/inet/imap/ListEntry;->unmarked:Z

    const-string v3, "\\Unmarked"

    invoke-static {v0, v1, v2, v3}, Lgnu/inet/imap/ListEntry;->conditionalAppend(Ljava/lang/StringBuffer;ZZLjava/lang/String;)Z

    const-string v1, "\u001b[00m) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "\"\u001b[00;31m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v1, p0, Lgnu/inet/imap/ListEntry;->delimiter:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "\u001b[00m\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/ListEntry;->mailbox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
