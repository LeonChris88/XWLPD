.class public Ljavax/mail/event/ConnectionEvent;
.super Ljavax/mail/event/MailEvent;
.source "ConnectionEvent.java"


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    return-void
.end method
