.class public Ljavax/mail/event/StoreEvent;
.super Ljavax/mail/event/MailEvent;
.source "StoreEvent.java"


# instance fields
.field protected message:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Store;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/StoreEvent;->type:I

    iput-object p3, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;

    return-void
.end method
