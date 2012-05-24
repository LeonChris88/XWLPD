.class public Lgnu/mail/providers/imap/IMAPMultipart;
.super Ljavax/mail/internet/MimeMultipart;
.source "IMAPMultipart.java"


# instance fields
.field protected message:Lgnu/mail/providers/imap/IMAPMessage;


# direct methods
.method protected constructor <init>(Lgnu/mail/providers/imap/IMAPMessage;Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lgnu/mail/providers/imap/IMAPMultipart;->setParent(Ljavax/mail/Part;)V

    iput-object p1, p0, Lgnu/mail/providers/imap/IMAPMultipart;->message:Lgnu/mail/providers/imap/IMAPMessage;

    return-void
.end method
