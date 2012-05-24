.class public Ljavax/mail/FolderClosedException;
.super Ljavax/mail/MessagingException;
.source "FolderClosedException.java"


# instance fields
.field private folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/mail/FolderClosedException;->folder:Ljavax/mail/Folder;

    return-void
.end method
