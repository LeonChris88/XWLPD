.class public final Lgnu/inet/imap/MessageStatus;
.super Ljava/lang/Object;
.source "MessageStatus.java"


# instance fields
.field private code:Ljava/util/List;

.field private messageNumber:I


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgnu/inet/imap/MessageStatus;->messageNumber:I

    iput-object p2, p0, Lgnu/inet/imap/MessageStatus;->code:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/MessageStatus;->code:Ljava/util/List;

    return-object v0
.end method

.method public getMessageNumber()I
    .locals 1

    iget v0, p0, Lgnu/inet/imap/MessageStatus;->messageNumber:I

    return v0
.end method
