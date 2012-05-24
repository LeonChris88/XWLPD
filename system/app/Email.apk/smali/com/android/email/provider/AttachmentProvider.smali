.class public Lcom/android/email/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# static fields
.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mimeType"

    aput-object v1, v0, v2

    const-string v1, "fileName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fileName"

    aput-object v1, v0, v2

    const-string v1, "size"

    aput-object v1, v0, v3

    const-string v1, "contentUri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v9, 0x1

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v9, 0x0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return v9

    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "image/*"

    invoke-static {p1, v0}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/email/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 0

    return-void
.end method

.method public static deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public static getAllAttachmentId(Landroid/content/Context;J)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-wide/16 v8, 0x0

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v6
.end method

.method public static getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db_att"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-object v10
.end method

.method public static moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    .locals 18

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_3

    :cond_0
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v5, 0x1

    :cond_2
    :goto_0
    return v5

    :cond_3
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v17

    :cond_4
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v12, p5

    :try_start_1
    invoke-static/range {v7 .. v13}, Lcom/android/email/provider/AttachmentProvider;->moveOneAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    :goto_2
    const/4 v5, 0x1

    if-ne v14, v5, :cond_4

    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    :catch_0
    move-exception v16

    const/4 v14, 0x0

    goto :goto_2

    :catch_1
    move-exception v16

    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    if-lez v17, :cond_7

    if-eqz v15, :cond_6

    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    const/4 v5, 0x0

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    const/4 v5, 0x0

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_9
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v15, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_b
    const/4 v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v5
.end method

.method public static moveOneAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static/range {p0 .. p4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    :cond_1
    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-nez v11, :cond_3

    if-nez v13, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    if-nez v13, :cond_4

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    const/4 v15, 0x0

    goto :goto_0

    :cond_4
    if-nez v11, :cond_5

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v8, 0x0

    invoke-static {v11, v13}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v15

    int-to-long v8, v15

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    move-wide/from16 v0, p5

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "size"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v15, "contentUri"

    invoke-virtual {v10, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v15, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v14, v10, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v15, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 14

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v0, 0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v0, "THUMBNAIL"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v12, "image/png"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v12

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, ".tmp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "thmb_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    return v6
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v3, "w"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.android.email.permission.ACCESS_PROVIDER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v3, 0x3c00

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    const-string v3, "THUMBNAIL"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    const/4 v3, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thmb_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v19

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x0

    :try_start_1
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    move-object/from16 v0, v17

    move-wide/from16 v1, v38

    invoke-static {v0, v6, v7, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v13

    new-instance v22, Landroid/media/ExifInterface;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v31

    const/4 v3, 0x6

    move/from16 v0, v31

    if-ne v0, v3, :cond_8

    const/16 v18, 0x5a

    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-static {v6, v7, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v4

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/provider/AttachmentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    if-eqz v14, :cond_5

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v36

    const/16 v27, 0x0

    const/16 v32, 0x0

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v5

    if-nez v5, :cond_b

    const/4 v3, 0x0

    if-eqz v32, :cond_6

    :try_start_6
    throw v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_3
    if-eqz v27, :cond_7

    :try_start_7
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_7
    :goto_4
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_9

    const/16 v18, 0xb4

    goto :goto_1

    :cond_9
    const/16 v3, 0x8

    move/from16 v0, v31

    if-ne v0, v3, :cond_4

    const/16 v18, 0x10e

    goto/16 :goto_1

    :catch_0
    move-exception v21

    :try_start_8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_a
    const/4 v3, 0x0

    :try_start_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_1
    move-exception v21

    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_b
    const/4 v3, 0x1

    :try_start_c
    move/from16 v0, v37

    invoke-static {v5, v0, v9, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v18, :cond_c

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v18

    int-to-float v3, v0

    invoke-virtual {v10, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    move/from16 v8, v37

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_c
    new-instance v33, Ljava/io/FileOutputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3

    :try_start_d
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object/from16 v0, v33

    invoke-virtual {v5, v3, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_e

    if-eqz v33, :cond_d

    :try_start_e
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    :cond_d
    :goto_5
    if-eqz v27, :cond_e

    :try_start_f
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    :cond_e
    :goto_6
    const/high16 v3, 0x1000

    :try_start_10
    move-object/from16 v0, v23

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v3

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_2
    move-exception v28

    :goto_7
    :try_start_11
    const-string v3, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openFile/thumbnail failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const/4 v3, 0x0

    if-eqz v32, :cond_f

    :try_start_12
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    :cond_f
    :goto_8
    if-eqz v27, :cond_10

    :try_start_13
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    :cond_10
    :goto_9
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_3
    move-exception v30

    :goto_a
    :try_start_14
    const-string v3, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openFile/thumbnail failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const/4 v3, 0x0

    if-eqz v32, :cond_11

    :try_start_15
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    :cond_11
    :goto_b
    if-eqz v27, :cond_12

    :try_start_16
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    :cond_12
    :goto_c
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    :goto_d
    if-eqz v32, :cond_13

    :try_start_17
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    :cond_13
    :goto_e
    if-eqz v27, :cond_14

    :try_start_18
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    :cond_14
    :goto_f
    :try_start_19
    throw v3

    :cond_15
    new-instance v20, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".db_att"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v6, 0x1000

    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-object v3

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_4
    move-exception v6

    goto/16 :goto_3

    :catch_5
    move-exception v6

    goto/16 :goto_4

    :catch_6
    move-exception v3

    goto/16 :goto_5

    :catch_7
    move-exception v3

    goto/16 :goto_6

    :catch_8
    move-exception v6

    goto/16 :goto_8

    :catch_9
    move-exception v6

    goto/16 :goto_9

    :catch_a
    move-exception v6

    goto :goto_b

    :catch_b
    move-exception v6

    goto :goto_c

    :catch_c
    move-exception v6

    goto :goto_e

    :catch_d
    move-exception v6

    goto :goto_f

    :catchall_3
    move-exception v3

    move-object/from16 v32, v33

    goto :goto_d

    :catch_e
    move-exception v30

    move-object/from16 v32, v33

    goto/16 :goto_a

    :catch_f
    move-exception v28

    move-object/from16 v32, v33

    goto/16 :goto_7
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 24

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    if-nez p2, :cond_0

    const/4 v2, 0x4

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v19, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v19, v2

    const/4 v2, 0x2

    const-string v3, "_display_name"

    aput-object v3, v19, v2

    const/4 v2, 0x3

    const-string v3, "_size"

    aput-object v3, v19, v2

    move-object/from16 p2, v19

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v22, -0x1

    const/4 v13, 0x0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    new-instance v20, Landroid/database/MatrixCursor;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v2, v0

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v16, 0x0

    move-object/from16 v0, p2

    array-length v14, v0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_6

    aget-object v12, p2, v16

    const-string v2, "_id"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aput-object v17, v23, v16

    :cond_1
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v20, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-object v20

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_3
    :try_start_4
    const-string v2, "_data"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    aput-object v13, v23, v16

    goto :goto_1

    :cond_4
    const-string v2, "_display_name"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    aput-object v18, v23, v16

    goto :goto_1

    :cond_5
    const-string v2, "_size"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v23, v16

    goto :goto_1

    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
