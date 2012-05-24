.class public Lgnu/inet/imap/MailboxStatus;
.super Ljava/lang/Object;
.source "MailboxStatus.java"


# instance fields
.field public firstUnreadMessage:I

.field public flags:Ljava/util/List;

.field public messageCount:I

.field public newMessageCount:I

.field public permanentFlags:Ljava/util/List;

.field public readWrite:Z

.field public uidNext:I

.field public uidValidity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->messageCount:I

    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I

    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->firstUnreadMessage:I

    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->uidNext:I

    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->uidValidity:I

    return-void
.end method
