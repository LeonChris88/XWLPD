.class public Ljavax/mail/event/MessageCountEvent;
.super Ljavax/mail/event/MailEvent;
.source "MessageCountEvent.java"


# instance fields
.field protected transient msgs:[Ljavax/mail/Message;

.field protected removed:Z

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    iput-boolean p3, p0, Ljavax/mail/event/MessageCountEvent;->removed:Z

    iput-object p4, p0, Ljavax/mail/event/MessageCountEvent;->msgs:[Ljavax/mail/Message;

    return-void
.end method
