.class Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;
.super Ljava/lang/Object;
.source "MaildirFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mail/providers/maildir/MaildirFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MaildirTuple"
.end annotation


# instance fields
.field dir:Ljava/io/File;

.field messages:[Lgnu/mail/providers/maildir/MaildirMessage;

.field timestamp:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->timestamp:J

    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->messages:[Lgnu/mail/providers/maildir/MaildirMessage;

    iput-object p1, p0, Lgnu/mail/providers/maildir/MaildirFolder$MaildirTuple;->dir:Ljava/io/File;

    return-void
.end method
