.class public Ljavax/mail/internet/MimeMessage$RecipientType;
.super Ljavax/mail/Message$RecipientType;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientType"
.end annotation


# static fields
.field public static final NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/mail/internet/MimeMessage$RecipientType;

    const-string v1, "Newsgroups"

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage$RecipientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;

    const-string v1, "Newsgroups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljavax/mail/Message$RecipientType;->readResolve()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
