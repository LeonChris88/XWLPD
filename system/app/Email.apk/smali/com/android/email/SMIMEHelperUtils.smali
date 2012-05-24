.class public Lcom/android/email/SMIMEHelperUtils;
.super Ljava/lang/Object;
.source "SMIMEHelperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;,
        Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;
    }
.end annotation


# static fields
.field private static mSmimeUtils:Lcom/android/email/SMIMEHelperUtils;


# instance fields
.field private className:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field public mSignedOnly:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-object p3, p0, Lcom/android/email/SMIMEHelperUtils;->mController:Lcom/android/email/Controller;

    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->className:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private attachmentProgress(ZJI)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->attachmentProgress(ZJI)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private displayToast(I)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    invoke-interface {v1, p1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->displayToast(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private finish()V
    .locals 4

    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    invoke-interface {v1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v0, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    const-string v2, "application/octet-stream"

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static declared-synchronized getSMIMEUtils(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)Lcom/android/email/SMIMEHelperUtils;
    .locals 2

    const-class v1, Lcom/android/email/SMIMEHelperUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SMIMEHelperUtils;->mSmimeUtils:Lcom/android/email/SMIMEHelperUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/SMIMEHelperUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/SMIMEHelperUtils;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/email/SMIMEHelperUtils;->mSmimeUtils:Lcom/android/email/SMIMEHelperUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSmimeAttachmentInfo(J)Lcom/android/email/AttachmentInfo;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/email/AttachmentInfo;

    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    aget-object v3, v1, v3

    invoke-direct {v0, v2, v3}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_0
.end method

.method private markAsRead(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    invoke-interface {v1, p1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->markAsRead(Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private messageChanged()V
    .locals 4

    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    invoke-interface {v1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->messageChanged()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private setDownloadSmimeAttachment(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    invoke-interface {v1, p1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->setDownloadSmimeAttachment(Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateAttachmentCallback(JZLjava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->updateAttachmentCallback(JZLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public continueHandlingSmimeMessage(JJZ)V
    .locals 52

    const/16 v43, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/4 v14, 0x0

    :try_start_0
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/SMIMEHelperUtils;->mSignedOnly:Z

    if-eqz p5, :cond_3

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    cmp-long v46, p1, p3

    if-eqz v46, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v46, v0

    if-eqz v46, :cond_2

    const/16 v46, 0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    iget-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v48, v0

    invoke-static/range {v46 .. v49}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-static {v0, v14}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v23

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v46

    iget-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v31

    new-instance v35, Ljava/io/FileOutputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v35, :cond_3

    :try_start_4
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_1
    new-instance v29, Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-direct/range {v29 .. v29}, Lcom/android/emailcommon/smime/SMIMEHelper;-><init>()V

    const/16 v32, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v46, v0

    if-eqz v46, :cond_b

    new-instance v18, Lcom/android/emailcommon/smime/CertificateMgr;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v36

    check-cast v36, Ljava/security/PrivateKey;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v36, :cond_0

    if-eqz v27, :cond_0

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v36

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->decryptMessage(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    move-result-object v32

    const-string v47, "SMIMEUtils"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Message "

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    if-eqz v46, :cond_a

    const-string v46, ""

    :goto_2
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    if-eqz v27, :cond_5

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    :cond_5
    if-eqz v32, :cond_21

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    if-lez v46, :cond_15

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v44

    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    move/from16 v0, v28

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "<BR><BR>...<BR><BR>"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    const v48, 0x7f080086

    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "<BR>"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_6

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v46

    const/high16 v47, 0x10

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_6

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const/high16 v48, 0x10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v49

    sub-int v48, v48, v49

    invoke-virtual/range {v46 .. v48}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "\n\r\n\r...\n\r\n\r"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    const v48, 0x7f080086

    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n\r"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_7

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v46

    const/high16 v47, 0x10

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_7

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const/high16 v48, 0x10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v49

    sub-int v48, v48, v49

    invoke-virtual/range {v46 .. v48}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v28, :cond_18

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/16 v30, 0x0

    :goto_5
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_17

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    new-instance v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mEncoding:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    iget v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mSize:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    iput-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v46, v0

    if-nez v46, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v46, v0

    if-eqz v46, :cond_16

    :cond_8
    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v46, v0

    if-nez v46, :cond_16

    const-string v46, "__attachment_message_.eml"

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    :goto_6
    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    iget v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    move/from16 v46, v0

    move/from16 v0, v46

    iput v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/SMIMEHelperUtils;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    iput-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception v33

    const v46, 0x7f08026a

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    move/from16 v46, v0

    if-eqz v46, :cond_0

    const/16 v46, 0x0

    const/16 v47, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v46

    const-string v47, "MessagingException: type:7"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_0

    const v46, 0x7f080112

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v24

    :try_start_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v35, :cond_3

    :try_start_6
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v46

    if-eqz v35, :cond_9

    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v46

    :cond_a
    const-string v46, "NOT decrypted"

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v46, v0

    if-eqz v46, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/SMIMEHelperUtils;->mSignedOnly:Z

    move/from16 v46, v0

    if-nez v46, :cond_c

    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    :cond_c
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v14

    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-static {v0, v14}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v23

    if-eqz v27, :cond_11

    :try_start_8
    new-instance v46, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/smime/SMIMEHelper;->parseSignedMessage(Ljava/io/InputStream;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    move-result-object v32

    :goto_8
    if-eqz v32, :cond_d

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z

    move/from16 v46, v0

    if-nez v46, :cond_d

    const v46, 0x7f0804e1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_d
    const/16 v41, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    const/16 v49, 0x0

    aget-object v49, v12, v49

    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v49, v0

    invoke-static/range {v46 .. v50}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v41

    sget-object v46, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v47, 0x0

    aget-object v47, v12, v47

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_e
    move-object/from16 v43, v41

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    const/16 v48, 0x0

    aget-object v48, v12, v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v48, v0

    invoke-static/range {v46 .. v49}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_7

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const v46, 0x7f0804e6

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    sget-object v48, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v12, :cond_10

    array-length v0, v12

    move/from16 v46, v0

    if-lez v46, :cond_10

    const/16 v46, 0x0

    aget-object v46, v12, v46

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v46, v0

    :goto_9
    move-object/from16 v0, v48

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :cond_10
    const-wide/16 v46, 0x0

    goto :goto_9

    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_12

    new-instance v18, Lcom/android/emailcommon/smime/CertificateMgr;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v36

    check-cast v36, Ljava/security/PrivateKey;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v19

    new-instance v46, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->getAttachmentFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v36

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->parseSignedMessage(Ljava/io/InputStream;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    move-result-object v32

    goto/16 :goto_8

    :cond_12
    new-instance v46, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->getAttachmentFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/smime/SMIMEHelper;->parseSignedMessage(Ljava/io/InputStream;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v32

    goto/16 :goto_8

    :catch_4
    move-exception v25

    const v46, 0x7f0804e6

    :try_start_b
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/16 v41, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    const/16 v49, 0x0

    aget-object v49, v12, v49

    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v49, v0

    invoke-static/range {v46 .. v50}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v41

    sget-object v46, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v47, 0x0

    aget-object v47, v12, v47

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_13
    move-object/from16 v43, v41

    goto/16 :goto_0

    :catchall_1
    move-exception v46

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "__attachment_message_"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-nez v47, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v48, v0

    const/16 v50, 0x0

    aget-object v50, v12, v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v50, v0

    invoke-static/range {v47 .. v51}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v41

    sget-object v47, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v48, 0x0

    aget-object v48, v12, v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v48, v0

    invoke-static/range {v47 .. v49}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_14
    move-object/from16 v43, v41

    throw v46

    :cond_15
    const/16 v28, 0x0

    goto/16 :goto_4

    :cond_16
    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    :cond_18
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1e

    if-nez v6, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v37

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v42, v46, v47

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v46, v0

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_1b

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v38, v0

    :goto_a
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    move/from16 v46, v0

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_1c

    move-object/from16 v0, v37

    iget v8, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    :goto_b
    invoke-static/range {v42 .. v42}, Lcom/android/emailcommon/smime/CertificateUtil;->getSignerCapabilities(Lmyorg/bouncycastle/cms/SignerInformation;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-static {v0, v1, v8}, Lcom/android/emailcommon/smime/CertificateUtil;->evaluateBestAlghorithm(Lmyorg/bouncycastle/asn1/ASN1Set;II)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-result-object v17

    const-string v46, "SMIMEUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Encryption algorithm chosen: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_1a

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->ordinal()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    :cond_1a
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    move-object/from16 v20, v0

    const/16 v30, 0x0

    :goto_c
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_1d

    new-instance v46, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    const/16 v47, 0x0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    move-object/from16 v48, v0

    aget-object v48, v48, v30

    invoke-direct/range {v46 .. v48}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    aput-object v46, v20, v30

    add-int/lit8 v30, v30, 0x1

    goto :goto_c

    :cond_1b
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    move/from16 v38, v0

    goto :goto_a

    :cond_1c
    sget-object v46, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_STRONG:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual/range {v46 .. v46}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v8

    goto :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v46

    move-object/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/smime/CertificateUtil;->validateCertificates([Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;JLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_0

    const/16 v30, 0x0

    :goto_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Boolean;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    if-nez v46, :cond_1f

    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    :cond_1e
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->addUpdateAndDeleteOps(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "com.android.email.provider"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v40

    if-eqz v40, :cond_20

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v46, v0

    if-lez v46, :cond_20

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v15

    const/16 v30, 0x0

    move v11, v10

    :goto_e
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_20

    aget-object v39, v40, v30

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v45, v0

    if-eqz v45, :cond_22

    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v46

    const-string v47, "attachment"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_22

    new-instance v26, Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mAttachmentBody:Ljavax/mail/BodyPart;

    move-object/from16 v46, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;-><init>(Lcom/android/email/SMIMEHelperUtils;Ljavax/mail/BodyPart;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    add-int/lit8 v10, v11, 0x1

    aget-object v47, v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    move-object/from16 v2, v47

    move-wide/from16 v3, v48

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    :goto_f
    add-int/lit8 v30, v30, 0x1

    move v11, v10

    goto :goto_e

    :cond_1f
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_d

    :cond_20
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->markAsRead(Z)V

    const/16 v46, 0x0

    const/16 v47, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/SMIMEHelperUtils;->messageChanged()V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v46, v0

    if-eqz v46, :cond_0

    if-eqz v43, :cond_0

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_0

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :cond_21
    const/16 v46, 0x0

    const/16 v47, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    const v46, 0x7f0804e2

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_10

    :cond_22
    move v10, v11

    goto :goto_f
.end method

.method public getAttachmentFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".db_att"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v1, v3

    array-length v8, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".db_att"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v11

    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method public handleSmimeMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v20

    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v2, :cond_0

    const v2, 0x7f0804e5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/SMIMEHelperUtils;->finish()V

    :goto_0
    return-void

    :cond_0
    const/16 v19, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v15

    new-instance v18, Lcom/android/emailcommon/smime/CertificateMgr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/PrivateKey;

    move-object/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v19, :cond_1

    const v2, 0x7f0804e4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/email/SMIMEHelperUtils;->finish()V

    goto :goto_0

    :catch_0
    move-exception v17

    const-string v2, "SMIMEUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f08008d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/email/SMIMEHelperUtils;->getSmimeAttachmentInfo(J)Lcom/android/email/AttachmentInfo;

    move-result-object v16

    if-nez v16, :cond_3

    const v2, 0x7f0804e3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/email/AttachmentInfo;->mId:J

    const/4 v4, 0x1

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/email/SMIMEHelperUtils;->updateAttachmentCallback(JZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto/16 :goto_0

    :cond_4
    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/email/SMIMEHelperUtils;->continueHandlingSmimeMessage(JJZ)V

    goto/16 :goto_0
.end method

.method public isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
