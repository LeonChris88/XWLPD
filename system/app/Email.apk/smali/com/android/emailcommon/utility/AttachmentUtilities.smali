.class public Lcom/android/emailcommon/utility/AttachmentUtilities;
.super Ljava/lang/Object;
.source "AttachmentUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/AttachmentUtilities$Columns;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final MAX_ATTACHMENT_DOWNLOAD_SIZE:I

.field public static final MAX_ATTACHMENT_UPLOAD_SIZE:I

.field public static final UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/high16 v1, 0x320

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "content://com.android.email.attachmentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "*/*"

    aput-object v2, v0, v4

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v2, "image/*"

    aput-object v2, v0, v4

    const-string v2, "video/*"

    aput-object v2, v0, v5

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "*/*"

    aput-object v2, v0, v4

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "*/*"

    aput-object v2, v0, v4

    const-string v2, "text/*"

    aput-object v2, v0, v5

    const-string v2, "html/*"

    aput-object v2, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "ade"

    aput-object v2, v0, v4

    const-string v2, "adp"

    aput-object v2, v0, v5

    const-string v2, "bat"

    aput-object v2, v0, v3

    const-string v2, "chm"

    aput-object v2, v0, v6

    const/4 v2, 0x4

    const-string v3, "cmd"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "com"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "cpl"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "dll"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "exe"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "hta"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "ins"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "isp"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "jse"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "lib"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "mde"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "msc"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "msp"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "mst"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "pif"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "scr"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "sct"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "shb"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "sys"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "vb"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "vbe"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "vbs"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "vxd"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "wsc"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "wsf"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "wsh"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "zip"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "gz"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "z"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "tar"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "tgz"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "bz2"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "apk"

    aput-object v2, v0, v4

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0xa0

    :goto_0
    sput v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_DOWNLOAD_SIZE:I

    const-string v0, "VZW_LTE"

    invoke-static {v0}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x50

    :cond_0
    sput v1, Lcom/android/emailcommon/utility/AttachmentUtilities;->MAX_ATTACHMENT_UPLOAD_SIZE:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V
    .locals 10

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete attachment file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .locals 10

    const/4 v3, 0x0

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

    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

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

    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
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

.method public static getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttachmentThumbnailUri(JJII)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "THUMBNAIL"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentUri(JJ)Landroid/net/Uri;
    .locals 2

    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "eml"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "message/rfc822"

    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_b

    const-string v3, "text/plain"

    :cond_1
    :goto_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    const-string v4, "apk"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "application/vnd.android.package-archive"

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const-string v4, "image/jpg"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v1, :cond_4

    const-string v3, "image/jpeg"

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string v4, "image/x-png"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v1, :cond_5

    const-string v3, "image/png"

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    const-string v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_9

    move-object v3, p1

    :goto_3
    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    move-object v3, p1

    goto :goto_0

    :cond_b
    const-string v3, "application/octet-stream"

    goto :goto_1
.end method

.method public static resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
