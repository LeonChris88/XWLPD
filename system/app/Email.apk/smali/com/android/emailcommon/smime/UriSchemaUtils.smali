.class public Lcom/android/emailcommon/smime/UriSchemaUtils;
.super Ljava/lang/Object;
.source "UriSchemaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UriSchemaUtils"

    sput-object v0, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheme = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authority = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_0

    move-object v13, v12

    :goto_0
    return-object v13

    :cond_0
    const-string v2, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    aget-object v2, v16, v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    new-instance v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v2}, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object v13, v12

    goto :goto_0

    :cond_2
    const-string v2, "content"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v8, :cond_3

    move-object v13, v12

    goto :goto_0

    :cond_3
    const-string v2, "media"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v2}, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v12, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    const-string v2, "contact"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "attachmentprovider"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    const/4 v10, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VCard = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v23

    if-eqz v23, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v22, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v22

    :goto_2
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v20, Ljava/io/BufferedOutputStream;

    const/16 v2, 0x400

    move-object/from16 v0, v20

    invoke-direct {v0, v15, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    new-instance v13, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v13, v2, v3}, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v13, Lcom/android/emailcommon/smime/UriSchemaUtils$UtilFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v19, v20

    move-object v14, v15

    move-object v12, v13

    :cond_7
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_1

    :cond_8
    :try_start_4
    const-string v2, "eas_smime_temp_"

    const-string v3, "vcf"

    invoke-static {v2, v3, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v21

    goto :goto_2

    :catch_0
    move-exception v11

    :goto_3
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_1

    :catch_1
    move-exception v11

    :goto_4
    :try_start_6
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/BufferedOutputStream;->close()V

    :cond_9
    throw v2

    :cond_a
    sget-object v2, Lcom/android/emailcommon/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not supported Uri = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    move-object v14, v15

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object/from16 v19, v20

    move-object v14, v15

    goto :goto_5

    :catchall_3
    move-exception v2

    move-object/from16 v19, v20

    move-object v14, v15

    move-object v12, v13

    goto :goto_5

    :catch_2
    move-exception v11

    move-object v14, v15

    goto :goto_4

    :catch_3
    move-exception v11

    move-object/from16 v19, v20

    move-object v14, v15

    goto :goto_4

    :catch_4
    move-exception v11

    move-object/from16 v19, v20

    move-object v14, v15

    move-object v12, v13

    goto :goto_4

    :catch_5
    move-exception v11

    move-object v14, v15

    goto :goto_3

    :catch_6
    move-exception v11

    move-object/from16 v19, v20

    move-object v14, v15

    goto :goto_3

    :catch_7
    move-exception v11

    move-object/from16 v19, v20

    move-object v14, v15

    move-object v12, v13

    goto :goto_3
.end method
