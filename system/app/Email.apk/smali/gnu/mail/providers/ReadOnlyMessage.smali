.class public abstract Lgnu/mail/providers/ReadOnlyMessage;
.super Ljavax/mail/internet/MimeMessage;
.source "ReadOnlyMessage.java"


# direct methods
.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/IllegalWriteException;

    invoke-direct {v0}, Ljavax/mail/IllegalWriteException;-><init>()V

    throw v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/IllegalWriteException;

    invoke-direct {v0}, Ljavax/mail/IllegalWriteException;-><init>()V

    throw v0
.end method

.method public saveChanges()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/IllegalWriteException;

    invoke-direct {v0}, Ljavax/mail/IllegalWriteException;-><init>()V

    throw v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/IllegalWriteException;

    invoke-direct {v0}, Ljavax/mail/IllegalWriteException;-><init>()V

    throw v0
.end method
