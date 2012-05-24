.class public abstract Lcom/android/emailcommon/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;,
        Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;,
        Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;,
        Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;,
        Lcom/android/emailcommon/mail/Folder$FolderRole;,
        Lcom/android/emailcommon/mail/Folder$FolderType;,
        Lcom/android/emailcommon/mail/Folder$OpenMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public close(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    return-void
.end method

.method public abstract copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public generateURLAuth(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCondStoreValues()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public abstract getDelimiter()I
.end method

.method public getMailBoxSynchronizer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessageUidListByInterval(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessages(ILjava/lang/Object;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessages(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages([Lcom/android/emailcommon/mail/Flag;[Lcom/android/emailcommon/mail/Flag;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessagesByInterval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public getQresyncedDeleteMessgeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQresyncedFetchMessgeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSelect()Z
.end method

.method public abstract getUnreadMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public abstract open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract rename(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setDelimiter(I)V
.end method

.method public abstract setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSelect(Z)V
.end method

.method public startIdling(Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public stopIdling()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCondStoreValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
