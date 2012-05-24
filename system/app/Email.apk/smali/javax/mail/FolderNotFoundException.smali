.class public Ljavax/mail/FolderNotFoundException;
.super Ljavax/mail/MessagingException;
.source "FolderNotFoundException.java"


# instance fields
.field private folder:Ljavax/mail/Folder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/mail/Folder;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljavax/mail/FolderNotFoundException;->folder:Ljavax/mail/Folder;

    return-void
.end method
