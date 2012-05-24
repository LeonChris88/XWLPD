.class Lcom/android/email/mail/store/ImapStore$ImapFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapFolder"
.end annotation


# instance fields
.field protected mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

.field private mDelimiter:I

.field protected mExists:Z

.field protected mMessageCount:I

.field protected mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field protected mName:Ljava/lang/String;

.field private mSelect:Z

.field protected final mStore:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v7, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    invoke-virtual {v7}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v9, 0x4000

    :try_start_0
    new-array v1, v9, [B

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v9, v3, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const-string v9, "Email:ImapStore"

    const-string v10, "Attachmentdownload is cancelled in decodeBody"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/IOException;

    const-string v10, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getMessageDecodeErrorString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :goto_1
    return-object v7

    :cond_1
    if-eqz p4, :cond_0

    mul-int/lit8 v9, v2, 0x64

    :try_start_2
    div-int v6, v9, p3

    if-eq v6, v5, :cond_0

    move v5, v6

    sget-object v9, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->DECODEBODY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p4, v5, v9}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v9

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    throw v9

    :cond_2
    if-eqz p4, :cond_0

    mul-int/lit8 v9, v2, 0x64

    :try_start_3
    div-int/2addr v9, p3

    sget-object v10, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->BASE:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    invoke-interface {p4, v9, v10}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_1
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v16, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_0
    if-ge v14, v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_1

    new-instance v7, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    const-string v20, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    :goto_2
    return-void

    :cond_3
    const/4 v3, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v18

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v6

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v13

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v17

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_3
    if-ge v14, v11, :cond_4

    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v6, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    goto :goto_3

    :cond_4
    const-string v20, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "TEXT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v20

    if-lez v20, :cond_7

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    const/4 v14, 0x1

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    :goto_5
    if-ge v14, v11, :cond_7

    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x2

    goto :goto_5

    :cond_6
    const/16 v20, 0x8

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_4

    :catch_0
    move-exception v12

    const-string v20, "Z7App"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!! IndexOutOfBoundsException !! bs.getsize "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    if-lez v17, :cond_8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "size"

    invoke-static/range {v20 .. v21}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_8

    const-string v20, ";\n size=%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_9

    const-string v20, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    const-string v20, "Content-Transfer-Encoding"

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "Content-ID"

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-lez v17, :cond_c

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v20, p1

    check-cast v20, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    :cond_c
    :goto_6
    const-string v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/emailcommon/internet/MimeBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v20, p1

    check-cast v20, Lcom/android/emailcommon/internet/MimeBodyPart;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    goto :goto_6

    :cond_e
    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown part type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    :try_start_0
    array-length v4, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_9

    aget-object v5, p1, v3

    new-instance v6, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct {v6}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    new-instance v0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    invoke-direct {v0, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    const-string v0, ""

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v7

    array-length v1, v7

    if-lez v1, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    array-length v9, v7

    move v1, v2

    :goto_1
    if-ge v1, v9, :cond_2

    aget-object v10, v7, v1

    sget-object v11, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_1

    const-string v10, " \\SEEN"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_0

    const-string v10, " \\FLAGGED"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v7, "APPEND \"%s\" (%s) {%d}"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v11, v11, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    invoke-virtual {v6}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v1}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-lt v1, v12, :cond_8

    const/4 v1, 0x0

    const-string v6, "APPENDUID"

    invoke-virtual {v0, v1, v6}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    :cond_6
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "(HEADER MESSAGE-ID %s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_6

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close(ZZ)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Email:ImapStore"

    const-string v1, "Connection Exception detected: "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    :cond_1
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v2, "UID COPY %s \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v6, v6, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "CREATE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "DELETE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v3
.end method

.method protected destroyResponses()V
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    iget-object v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    move v3, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_4
    throw v3
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v1, "EXPUNGE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    :cond_0
    throw v0
.end method

.method public fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    if-nez v32, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v32

    if-eqz v32, :cond_1

    invoke-static {}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    const-string v32, "Email"

    const-string v33, "Attachmentdownload is cancelled in fetchInternal "

    invoke-static/range {v32 .. v33}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v4, p1

    array-length v0, v4

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    aget-object v23, v4, v18

    invoke-virtual/range {v23 .. v23}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_2
    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v32, "UID"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    const-string v32, "FLAGS"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_4

    const-string v32, "INTERNALDATE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const-string v32, "RFC822.SIZE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const-string v32, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id disposition-notification-to)]"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    const-string v32, "BODYSTRUCTURE"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/FetchProfile;->getFirstPart()Lcom/android/emailcommon/mail/Part;

    move-result-object v14

    if-eqz v14, :cond_b

    const-string v32, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v27, :cond_6

    const-string v32, "BODY.PEEK"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "["

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v33, v27, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "]"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v32

    if-nez v32, :cond_a

    sget-object v32, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_PART_SANE:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    const-string v33, "UID FETCH %s (%s)"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    invoke-virtual {v12}, Ljava/util/LinkedHashSet;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v36

    const/16 v37, 0x20

    invoke-static/range {v36 .. v37}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v26, 0x0

    :cond_9
    const/16 v28, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v32

    if-eqz v32, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v28

    :goto_4
    const/16 v32, 0x1

    const-string v33, "FETCH"

    move-object/from16 v0, v28

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v32

    if-nez v32, :cond_11

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    :goto_5
    invoke-virtual/range {v28 .. v28}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v32

    if-eqz v32, :cond_9

    goto/16 :goto_0

    :cond_a
    const-string v32, "<0.%d>"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_b
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v32

    if-eqz v32, :cond_e

    sget-boolean v32, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v32, :cond_c

    const-string v32, "Email"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "ImapStore : fetchInternal, retrieveSize = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-gez p4, :cond_d

    sget-object v32, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    new-instance v3, Ljava/lang/String;

    const-string v32, "BODY.PEEK[]<0.%d>"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    sget-object v32, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    const-string v32, "BODY.PEEK[]"

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v28

    goto/16 :goto_4

    :cond_11
    const/16 v32, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v13

    const-string v32, "UID"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v32

    if-eqz v32, :cond_12

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v32

    throw v32

    :cond_12
    :try_start_5
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v24, :cond_13

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    :cond_13
    :try_start_7
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    const-string v32, "FLAGS"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v10

    :goto_6
    move/from16 v0, v17

    if-ge v0, v10, :cond_18

    invoke-virtual/range {v16 .. v17}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v15

    const-string v32, "\\DELETED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_15

    sget-object v32, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    :cond_14
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_15
    const-string v32, "\\ANSWERED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_16

    sget-object v32, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v32

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v32
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_16
    :try_start_9
    const-string v32, "\\SEEN"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_17

    sget-object v32, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_7

    :cond_17
    const-string v32, "\\FLAGGED"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_14

    sget-object v32, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_7

    :cond_18
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    const-string v32, "INTERNALDATE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v20

    const-string v32, "RFC822.SIZE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v30

    const-string v32, "BODY[HEADER"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    :cond_19
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    const-string v32, "BODYSTRUCTURE"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v32

    if-nez v32, :cond_1a

    :try_start_a
    const-string v32, "TEXT"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-static {v7, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1

    :cond_1a
    :goto_8
    :try_start_b
    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_1b

    sget-object v32, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1c

    :cond_1b
    const-string v32, "BODY["

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    :cond_1c
    if-eqz v14, :cond_1d

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v32

    if-lez v32, :cond_1d

    const-string v32, "BODY["

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v6

    :try_start_c
    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    const-string v32, "Content-Transfer-Encoding"

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    aget-object v8, v32, v33

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v8, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :cond_1d
    :goto_9
    if-eqz p3, :cond_1e

    :try_start_d
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_1e
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_5

    :catch_1
    move-exception v11

    const/16 v32, 0x0

    :try_start_f
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    goto :goto_8

    :catch_2
    move-exception v11

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-interface {v14, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9
.end method

.method public fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Email"

    const-string v2, "ImapStore : fetchWithRetrieveSize function is called"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    :cond_1
    throw v0
.end method

.method public getDelimiter()I
    .locals 1

    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    return v0
.end method

.method public getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .locals 2

    const-string v0, "Email:ImapStore"

    const-string v1, "IMAPStore::getMailBoxSynchronizer "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMailBoxSynchronizer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageCount()I
    .locals 1

    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-lt p1, v4, :cond_0

    if-lt p2, v4, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid range: %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "%d:%d NOT DELETED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ge p1, v4, :cond_0

    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid message set %d %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "%d:*%s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUidsWithStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget-object v3, p1, v0

    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-interface {p2, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/android/email/mail/store/ImapStore;->access$100()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v6, "STATUS \"%s\" (UNSEEN)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v5, 0x0

    const-string v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    return v4

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v5, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v5
.end method

.method public ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v7, p1}, Lcom/android/emailcommon/mail/Folder$OpenMode;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-eqz v7, :cond_2

    :try_start_1
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v7

    const v8, 0xea60

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "NOOP"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "SELECT \"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v12, v12, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, -0x1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v7, 0x1

    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v3

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_7
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_7
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_1
    move-exception v0

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    throw v0

    :cond_2
    const/4 v7, 0x0

    :try_start_8
    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V
    :try_end_8
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    throw v0

    :catchall_1
    move-exception v7

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v7
    :try_end_a
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_2

    :cond_3
    :try_start_b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    const-string v7, "READ-ONLY"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_c
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v7

    :try_start_d
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_d
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_2

    :cond_4
    :try_start_e
    const-string v7, "READ-WRITE"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Did not find message count during select"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    iput v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_f
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "RENAME %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v3

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v4

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v3
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    :try_start_0
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    :goto_1
    return-object v8

    :catch_1
    move-exception v3

    :try_start_2
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v8

    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    goto :goto_1
.end method

.method searchForUidsWithStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    :try_start_0
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH CHARSET UTF-8 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x3e8

    if-gt v1, v8, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    :goto_1
    return-object v8

    :catch_1
    move-exception v3

    :try_start_2
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v8

    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    goto :goto_1
.end method

.method public setDelimiter(I)V
    .locals 0

    iput p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    return-void
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    const-string v0, ""

    array-length v2, p2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_4

    aget-object v1, p2, v0

    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1

    const-string v1, " \\SEEN"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_2

    const-string v1, " \\DELETED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_3

    const-string v1, " \\FLAGGED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_0

    const-string v1, " \\ANSWERED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v3, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz p3, :cond_5

    const-string v0, "+"

    :goto_3
    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    return-void

    :cond_5
    :try_start_1
    const-string v0, "-"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    return-void
.end method
