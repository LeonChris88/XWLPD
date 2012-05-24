.class public Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;
.super Ljava/lang/Object;
.source "SyncNConnStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SNCMessageInfo"
.end annotation


# instance fields
.field private mAccountId:J

.field private mEmailAdress:Ljava/lang/String;

.field private mFolderId:J

.field private mFolderName:Ljava/lang/String;

.field private mFolderType:I

.field private mTagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mEmailAdress:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mEmailAdress:Ljava/lang/String;

    iput p2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    iput-object p1, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mEmailAdress:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mTagId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderId:J

    return-wide v0
.end method


# virtual methods
.method initSNCMessageInfo()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "SyncNConnStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSNCMessageInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mEmailAdress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TagId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mTagId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FolderType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mEmailAdress:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mTagId:Ljava/lang/String;

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    new-array v1, v3, [Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    aput-object v4, v1, v2

    :goto_1
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderName:Ljava/lang/String;

    if-eqz v4, :cond_1

    :cond_1
    if-eqz v1, :cond_4

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    long-to-int v4, v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mAccountId:J

    aget-object v4, v1, v2

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v4, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderId:J

    aget-object v2, v1, v2

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    iput v2, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    const-string v2, "SyncNConnStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MB restored be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mAccountId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mFolderType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_2
    new-array v1, v3, [Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/email/mail/store/SyncNConnStore;->access$000()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v7, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mTagId:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithTagId(Landroid/content/Context;JLjava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v3, "SyncNConnStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed To restore MB for tagID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/mail/store/SyncNConnStore$SyncNConnFolder$SNCMessageInfo;->mTagId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
