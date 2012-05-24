.class public Ljavax/mail/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field private part:Ljavax/mail/Part;


# direct methods
.method public constructor <init>(Ljavax/mail/Part;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-void
.end method


# virtual methods
.method public getMessage()Ljavax/mail/Message;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    :goto_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Ljavax/mail/Message;

    if-eqz v2, :cond_0

    check-cast v0, Ljavax/mail/Message;

    :goto_1
    return-object v0

    :cond_0
    instance-of v2, v0, Ljavax/mail/BodyPart;

    if-eqz v2, :cond_1

    check-cast v0, Ljavax/mail/BodyPart;

    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getParent()Ljavax/mail/Multipart;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Multipart;->getParent()Ljavax/mail/Part;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getPart()Ljavax/mail/Part;
    .locals 1

    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-object v0
.end method

.method public getSession()Ljavax/mail/Session;
    .locals 1

    invoke-virtual {p0}, Ljavax/mail/MessageContext;->getMessage()Ljavax/mail/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
